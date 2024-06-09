Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BE633DF
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717928243; cv=none; b=Rz+XzxEw5EGBwqHJf8ld7ZELiHAcoD2EHMXuUP2lCvF57UvAt//e5N0QEuKNd2vWTGIVzSCJJ/EPRLEey6iB86EAzHfgd2jt/lVCZArU/odgwc6s8bgXT8Co8JjMl5sbEImriNL90kTwDZEB/KVcLpzLYs/8OUcVunl8kGSCN4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717928243; c=relaxed/simple;
	bh=9Q8h5Koy/sHd+wwWzTy+8DLqlULBCqbYsTtq7PviOJQ=;
	h=To:Subject:From:Message-Id:Date; b=HlWCDgz2A59EkCO0RnYHaULVpEx/wukk7dfFJxirDtRBtlEZC7ITEmKpuAKG6EvvPsffBsa1UNCfW8w+z+fFZ0/s0LG2UTIIz1Ott6piO2Go0JnbYTTMvrexpJtDQ4AIWX+FTAIkJ20NKkFU2J2VRvrzPwzu9Hg77fyLVbiYeHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UP7Vg1zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UP7Vg1zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E42C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717928242;
	bh=9Q8h5Koy/sHd+wwWzTy+8DLqlULBCqbYsTtq7PviOJQ=;
	h=To:Subject:From:Date:From;
	b=UP7Vg1zfh8Bbj1pyRx/WnCPiAqe7ECG2tw8ymoXWzYzEf5xOftoXQo8W/YVMMjJyo
	 Q11j9b7UONPC4xVQs1FoKsDYQp2hv6+GP64vz/CSiH8UCxHXuAQtQGxZEMb+fs3Py/
	 mW5UwBIH3CS3kAwRciH8iBerthWnRlzcRm6ilJg41uJxMTkaJVq/SHC9nKGR/vDZ5j
	 sGd44hhExyWdUio4irWyKHA1zeZDdCadmw0AxhWW+j1ZtALMblKrXbGd+hdf8qvTyO
	 zF6mpZ8ou67i0DjyJ0yTc9Hw3SGSLJmeOZ3W9q33IWv2HVVK8kJ94ovcWDmZdm418F
	 wjHEPHQZ51RVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF63C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 10:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792824276.23484.3783635743661733832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9664221fb7555db55ea466b71d3a95c4719e7c1dd98e1bcf757c1de0d00000ce
Date: Sun, 09 Jun 2024 10:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717928242
