Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEDF1BC08F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783374514; cv=none; b=IR05wmSnh+Qa9GKWzRoeIemoxMgfUCh7335VstAoxqllsgSPqrCGdBNsPwFsNVH/bO+PFQqgVUEsD53wlCynE/M7XnHd/Mc2GWHwaI/FfQ4uyIoeEpTqOm5jLLbcfxyt+8ggYF5oduju8vhKy+O4/ivbZ7YNBpdOT0owlAIe2Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783374514; c=relaxed/simple;
	bh=/FTNO9htpke2Xy0aqqxDeLSzS09i5KG0QbUpadKEFQw=;
	h=To:Subject:From:Message-Id:Date; b=KBON8z6ZlAFb5A9p4cVrQzUNSADrodcl3p/Htrs5VyJSRyi2Ix0lVt3OQuXsfzzV3pxee2bQAif7+lqXra+QxY0B9TxRay6pEWn/Yga+OltTRsSNSu5i/wwM49ETFV5CeekJ/1rxCmsVPC9tvwPTrtVTKFWrutNCz9dLY63G3qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPNPRhpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPNPRhpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB036C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783374513;
	bh=/FTNO9htpke2Xy0aqqxDeLSzS09i5KG0QbUpadKEFQw=;
	h=To:Subject:From:Date:From;
	b=OPNPRhppZNTSiL5YWP9L0SveH5k0JTixASZ13vMTC04csWVboZnn3PVSiTA0DiYc1
	 VZA9P02/qYwTM82EPR2PabnCkRaxziCO+1KVbLt6L+AUFicfNcaLchgJieITM21Stv
	 uovoFO8AY56c9oFYVutk9waGY5Uv8WxNMTuP0YUl1ul9Dwy8pdZlu8h9yzk88WcmVv
	 5lenFuchzvIV9rmdaNyYVJfh1oSomEHLHDVIk+gSY3b2YmG0SAriqhNHC40llzi5ff
	 o49w0wvHcQW8Z1JXNJ8+OkBVwN8fwVSME+YdxBH5lIpopciRxE6hExEHueloOVCuy9
	 OmkgEOFHF5fmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B9BC43602
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337451368.32169.8084181123601943132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cd191eab8d415df3bc1764a0cc0a4842aaa01a613e589d48b0b3071c1e778b
Date: Mon, 06 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783374513
