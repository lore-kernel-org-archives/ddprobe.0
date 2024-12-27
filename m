Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8EF1F8EF2
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735329354; cv=none; b=EyAmRKuzkI1sBmTJUA+4FGn1KlpJBNxcfQT/nmapF90WDraURd/1nos1AeiN9JWoBxUO0rXH+wptEiLga/YWvwxUCajwyDxAM7OuufqviZEdB8pQ4TQECOOQ1vYcEhZW3ixsE7zmHGRkjuhjm1SkgUtNc+Ol7+uX8pj+bJ4FWJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735329354; c=relaxed/simple;
	bh=ReFNZWhLyvFvToawZCUVXHrN+EEMO8k+Ul7FctetKFE=;
	h=To:Subject:From:Message-Id:Date; b=p9Agb+TkSqXXJEkrjflgS07//uau3QkvgQkvVkn9EgD0yG+0ukyDj+YmqSDTCrS+WSrPUXaiaYfAHDgSGYocjD30+cpD8MJAYYJuNIjmsANaiH2kVkKTJWlvXxYrB65XeoTV3llbM0WnMQs1QmTsaZtnvE0hk8nrx1D7n+iunoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfcdGDuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfcdGDuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCF2C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735329353;
	bh=ReFNZWhLyvFvToawZCUVXHrN+EEMO8k+Ul7FctetKFE=;
	h=To:Subject:From:Date:From;
	b=TfcdGDuodwG1MMh/yYTaYOCVEb1GJp2k62GGielCqucaR4gVNIjPaU5yRf63Oo1W3
	 O4E1mxXo+pkVU6Oi4wPiJE/2nPTNT2PmGp29FtkWiiN7oiToz6E7hYyhsCB+N1IBdp
	 DbU1DyCya7SVbthkt+mLaaHEeFzyRD7fi+A2aogSnH+h2H6RtAwn/MTFlIFx1VRqpc
	 MqhDd5vCmPyJQE3RrLReCOMy6Q8vpxfjVPbQiSHqSvv3JzvP3WI/g7wAW1QKziCM64
	 WISS4Qk9f+dXn8nW+eCJEaIWZtssh34Uf9BQoU16LYXBXDRvsS80ndrb5sCb1Oer/I
	 yfr3YidzeOkug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97039E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532935359.12719.17247757725346539134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf694240506cff5dc1c8a659c2f24fbff31c7ab9c348660b24ccd4a0f84596bc
Date: Fri, 27 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735329353
