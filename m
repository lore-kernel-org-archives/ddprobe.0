Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2B91C860A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766105634; cv=none; b=jyQhOIZz/LCB3EWoAbEdaIM6yEKwZcfgk5pGv1b7QWQzvADspxra6JEhTG70yadwsqv+F8c3iLum6mfxRzzWX3OVW00IHFfLJ2bLUjtwmVbHD1pUSEWIsRAx0k0gKIUoDgu1RQ1gsJeZosCkdaCYeu9f5gamrV2jELlCJVGascc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766105634; c=relaxed/simple;
	bh=jTmwXdPtF4oUqx00i2TYl9slfWvFoZzzbWqSbx7iLNY=;
	h=To:Subject:From:Message-Id:Date; b=Mm8BsNVGdmha20HArPfV0VswTtigy5tKm+fKDECKvm0bQSHVCfbpv2KcTc8qlFJBwM5PQIhHORDfYF2zOa2VWYojTOopF0tGcjWiRSrgFLrSfSz8W79D8gSKGoGRQAoiP976seIKHzZD50evwx962B+q8ldzBPSjO37g5KrmCyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5xAIal1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5xAIal1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46C9C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766105633;
	bh=jTmwXdPtF4oUqx00i2TYl9slfWvFoZzzbWqSbx7iLNY=;
	h=To:Subject:From:Date:From;
	b=T5xAIal1T20wLcioZCVQVNN6bc8dVtq3fBP4dI/J68SJFzeE2Y8Ygs1ztAOGn6jap
	 pW5vlLAuDH1Qd3pyAhbS5Cu3tHy/GKdDza6ftYGqWAnVWM2W45z2OYyTwqJDIsqQ4E
	 K79vzQsI9CnGupsK5WDlXmdpIQ4WDV+41kAZUWGsufCMjcQWMp4f4ATirATa+bw8Gd
	 QKTSwnkPr9p2757MRM9ruJbG3tqCw+Cw2wYepa3J3Q/vyNrh7LdrFGwQ/4tbn+lRA2
	 c3L/g2sxAsJDNNm1MpiRWexet/mWxIUxfDfFbAoXpT/GD5wY+M/NfBHYqYjePqI6l6
	 OSjLc6vMvoGhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FDCD711CE
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610563358.6733.18329648276491750568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b186ecfdb85369f34aa1d7f65d894c77d5351482481cde79f8ddaf598de2a5
Date: Fri, 19 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766105633
