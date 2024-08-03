Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE444C74
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 05:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722662154; cv=none; b=WjxjPSatWc5/dasjhir/BfHIONJroCit3/wvFmgtJHqs/bVrf4n5uIiEiNzG4bIrK/wxXwD+6/ctCJWQQkFlXynq38a0pTfA2r+7seVHGffqA8RhibYKkQKP+7zP5n3semVAlGktXgH1Y6+9HDXpJtytrvSTexpnAUvgZn2fzbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722662154; c=relaxed/simple;
	bh=BBGzNHuxh+yFF/E/2sxagB0HQHRNWc/Pr9xjdFcSQiw=;
	h=To:Subject:From:Message-Id:Date; b=Xrbi2SYIUQ5S6Ic7tSe460/smxuY0dmX2MTUuC2xgo83k5DSRfPgy55WUfryEWXZyGFPGmAvCgDMrfbY2ov1xVDThpBu+ckC40+fSFJijO5+3yJ8Rw7K8wMBn9/7gEAXly/ar2FcHfj/sni4+Ti74oPnuG9pKlF2rx3AxWs9YHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m05ZQABi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m05ZQABi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2E8F8C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 05:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722662154;
	bh=BBGzNHuxh+yFF/E/2sxagB0HQHRNWc/Pr9xjdFcSQiw=;
	h=To:Subject:From:Date:From;
	b=m05ZQABisYDrRwy7vxoE/opf/Ta56fSnbBuCTHcyC0f9yq/p11WVwowhw0NOm0q31
	 QuTKh9jMbLu2EFl8Gtjbb31eyxYT6RaYh3zh1EVC5aitYDnpCs74g7xy+ivM7AOZEl
	 uZjibFixHWBlvBvxIlTLgrnjQGU1Nc0W6IypTYDWjBcoWR0lj5mlO2WTNYkRlJWo6N
	 7fRu2FVa5haGsNmdcvsOM5BAhfMsfBQq68XVGQEnFt736h3iEXs/VR3At/JKOzeib8
	 zFSi1dwPUck7OTrO5KQw1C4Ri8nuV1EHcdUlRgpLPTUHkBzwLrXcLoOcyPECC+LwEH
	 kKLKaFaqUaJQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F81C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172266215364.10074.16125867761274320192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b98034a316bf8f7ff9a7824e60b08814c296468bc07bb856729c99e3fa89da
Date: Sat, 03 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722662153
