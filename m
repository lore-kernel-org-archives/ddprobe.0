Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1817139901C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774647294; cv=none; b=khnvAxBWY2iWGxYejOnDmLAFcgI8wy6manvrU52P5gYjrxnVF1hwDLnZSPfabZbF3iSNxHz8tbFL3PF40kyTvP412FC29v4YxgfZMA2cZVO2cN/Ap/qzfchc7moxIEd2pR4lwmP4pq7tkS7praKm9ylaVV411fXfme2+7OTJOtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774647294; c=relaxed/simple;
	bh=Hu6iP+mbFlhfh2BBbhS8sVmIVk7DdDAbN3OhZE+68tY=;
	h=To:Subject:From:Message-Id:Date; b=GDsoGedjngim/3kPAyhV+vuNByfcd+/OgoWPURb/FMi4yPJN1FKVo+w2p/hHpwaM9SMrz1ArGzjRQbQO9SC3oRxSwPrdH4CcP9hwuzQR6duTjKPHNq/RyfBYNuuF7W3XtpndvGmdOu4FBcbk8tWlStbrBYlPIZ9PJtBPU6XzYF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mya+BXyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mya+BXyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A9C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774647293;
	bh=Hu6iP+mbFlhfh2BBbhS8sVmIVk7DdDAbN3OhZE+68tY=;
	h=To:Subject:From:Date:From;
	b=Mya+BXyS6th8oPtXEgj5uMp+7p04YVMs0LbeXUkRmaywtse8zmP+HHHXEf3AG2+6Q
	 neOwIGuYoYI92dycMHomBVWa6FrZM/YmE+uQqQzC9oVM3enMSARREwGzfviRf6arSs
	 xN9cqITQIQ1sktQxnmNb3qLrgZxveOTiP7hCDDVrzpyRCl4E57icE8KPvwn/ud9XU+
	 hO3HbMRqsg3fcgBR5/0FtlGsX6MwNATXQw7Dyfn5OgcugzT46T07KyGI5kBG82z9eF
	 6q7Aoh0dboAjyrOkh7yN92n4pPXiFoQJbXZwdRa0dbYXP0RNXK+L7ZLxn4YTIWFM7i
	 rg32HVkVHZ4hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6010F2871
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464729358.26674.13241551357912400974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46cb47596c052b6aaacfd94c1535abded61fae3405c951dd1fd890b40dd8e329
Date: Fri, 27 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774647293
