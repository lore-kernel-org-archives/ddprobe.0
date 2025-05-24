Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333DA5695
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748059794; cv=none; b=Wv1FVGHaTW498aVpk+IFJYRRBwTQIfM4c7SBfZq67Wb7BGZLWbCux8hE/i4vzJ43oJ78HCvpT86BwQQIsinPxXvb+8zTeharjxklQ7/cHaZa5OBEh41UwKgcHsMdms520z133coDvhRKdf2hU5PQID1BAJ5PPq6BNggTKGMwExg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748059794; c=relaxed/simple;
	bh=o18lYnBUag7pKlB6aQQXHOgTzZODkVp+feXhm3o9dVk=;
	h=To:Subject:From:Message-Id:Date; b=BgceRp3lkgXrNxUbB8CZNLTWBHbeuXueiekifkCNHkYrqwCZtFuOpG8ENV2D1pwqP2wWgUmtxhh6lis72GqgOB4pWjU2WT8XFCLq4bzJOD2F6kjZ3kyA5P2utBie+hUg3LcydT5dm/WfK1Gy5vWE1uotC+Vr+QVDdbdrEGLrklA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3HwxBa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3HwxBa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33A7C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748059793;
	bh=o18lYnBUag7pKlB6aQQXHOgTzZODkVp+feXhm3o9dVk=;
	h=To:Subject:From:Date:From;
	b=t3HwxBa4GJGLlWBqbiEI/PBzl1NBNIRVmrxFB+NkeW16MnhHTRfk0Gm3OFXD51OKw
	 sPrKLYt+43EMvGsozxqYo05Vuo6Q81RIoQkyrV/3+2HSO3MCc/ZtjicZsGcmn5t8sU
	 5pSZfYF7U5+H0SUGvA25XD785UTdTqi0On8vq0L1NITNOWKObml80mniKQZn5dljci
	 i390LwJFyse9Rh/AgTGuS9KNiA7UpKvR3IEjR4VvzmOVRNu77AsDXIGampjWsw+kh8
	 pygjePsNA9GI27Oq5oY56Sl+W91ouajEjfPmzSDWc980A/CA+h/9gatv28xq6prXIB
	 j0x76gpu3DK9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90106C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805979358.3447.1655657945245146559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f52531141789109f3081291f178ee3f9a8aaac2674429ebffb0b20e3b26b761
Date: Sat, 24 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748059793
