Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD67171E49
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743703793; cv=none; b=a7JeB34/TFPWr9rVQxA2I/v/EF2rQf6QDhUGLinBEDoUKvOUdBoFJQlS1laqLP02Dt83Oev4lxSe3CGM7DPOQIw5yvyTFEV3fMRCa+DwPPvTGMTm13Vep44rp6fwaP0LngSjh1/ujKz2kdqviHYJblD8K8+/YDRIimw4tVsINTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743703793; c=relaxed/simple;
	bh=Iro0SeHXzqDo+AZuea3+oO1odGyhGqwqJ7vwMcED6zg=;
	h=To:Subject:From:Message-Id:Date; b=q3+va8W3EPbKm4O9CT5sg9xu5ULemRMm1MyTSDUoyDOTX99xc8/FYc4aJfkyWKGL+ZlT8waivV5FS81yhDtdj2XsO06ayG9Cey5jTses3N2TFjAsKm3JWqSaUISxHxjgvyIighTNd5Zoy3YAZRt3XWmlD0t33Udg4wR0+/hLZek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NepnhRQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NepnhRQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743703793;
	bh=Iro0SeHXzqDo+AZuea3+oO1odGyhGqwqJ7vwMcED6zg=;
	h=To:Subject:From:Date:From;
	b=NepnhRQSuKlZHsVTYZkeSscSAZ1uD1tIdhPxaAMsrYMj4C4HKx/PmNexF8XhPcxd8
	 /zi0OcehKpdNSO/R258ur7YRVBJwu/Uq/KqGZFyj/jKCQyNAWVO024RufX1U3dJ4nZ
	 vt+Qb8S3j0SRg4iiTh9YmjNZ0w8Ip+qk4+Ouh5B0oMZ2Y2QCigUVq7DWaLTCoUI/80
	 2uZSQ63tedP2LpmCo5EzTwzbG77Y9Iq4If/AygdlBPqMPIdOElte8guGlnkr53tlwQ
	 X290wC0pYqUC7XM4fUJymSgrXPKQfB7UBcBDhwxtBLTQI54GE5H1cuOMjcwE7uclEr
	 2ssMNn6TT3r1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910ECC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370379358.2350.11058291097339283273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2673590f8b2abf2499f8afdebc80b48b8ff18f28ade52b4fea93ebbf4124627
Date: Thu, 03 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743703793
