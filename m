Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F5826ED35
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770688434; cv=none; b=PIWwu4iRIYKL1+rhXDp8SczPbk83TgmLiCQoHAuHw1zqPTTR4m8l1yuexfXh5gwYbIEIcBDVreQPS2OsCIeU03N9gEskswOwcFrxz5V+RKk63x07wfFKBfxYLaP5MRqBCD1oWNMogtQnZCY9LNG4qFfHDh+GtyFkR3lGwGEj6Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770688434; c=relaxed/simple;
	bh=TjTZ6+QNyuuJZ2PDBTPnFkLG01oRsPprDRXqFhPWPqs=;
	h=To:Subject:From:Message-Id:Date; b=cqS+VX6GM+gOThA87W/2H1phk8X59yCDTHsduhayI1ddk1lIUm1sWpg4PXqEYJ+n3wXI2TlqKD/igFvguDX3EXb67k24KgHaSIrp0R9P/7wFZ9H/PmO9YB61i9ihy2AYV/VTPkMQAUKK4fY9KMBazMRVOTD0eJ0Tw/eJ6ao0mIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqL82kWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqL82kWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21F4C19422
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770688433;
	bh=TjTZ6+QNyuuJZ2PDBTPnFkLG01oRsPprDRXqFhPWPqs=;
	h=To:Subject:From:Date:From;
	b=hqL82kWS40Am9q5bNXy5jsETYH9DaSctN2ODgZWO+2SHS31AymGaK/GNk36UF1sYV
	 2TSw4YApgIU2r5PspA+1uaJbbavllqynI+JuLSlpXPyur14S6PRR5MxKBAs6Vj71p3
	 9fFVwNuXfGclGMkzou1HguU5q7zFcrCHg5RLJNwIicZ26YTlHfvDj/vVIIaPXs4RoE
	 XbTywhCqysaJDLaC45eAIGZPB5nWJAsVmBdsRg81dd7W+7GE1IYu0WlvrIQyViw8Bg
	 ChTgHdVGkCV+xZYb8DL1DRM6mpUAMJkwQ+NQGu+/NyMEXnFsNAzxKjUtTEars/qbL3
	 /73TH6OOXf6eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A52E94627
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068843374.27858.8701444995966268531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4862ab0c4439f5366c21f291bb867f84f4120992f0a98d7c140ac9d7ab23e9
Date: Tue, 10 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770688433
