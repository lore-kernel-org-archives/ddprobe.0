Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065DC3234
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751849394; cv=none; b=rrBC9P268q2v1CmkXdas5ajCjLl/OIrwdqkhY9YLvddEjEn2hLIha2lHAMMR7GBmDyHpzqurREoqhHNdBxfPYM/MfQ784HXAB2C2acZD5/cSdl1ZrhS06vv7g3V8JKrKn0tK1g7+Fg/Npw8LSZ04wztwyxEQX88ojtM3Ry2ibu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751849394; c=relaxed/simple;
	bh=2U7xtVbxwfAUkDZ+B4Zr3e5Jdm4zzKr/HMK7og2zo6A=;
	h=To:Subject:From:Message-Id:Date; b=Q74WFmxDJsH7tmDhz+GIld4Scz1FVYsF/ZFa9NPVA6RJea1oLprSfU0jTu2rCZ+IkHjJXnVmUqz2Qipu01cFvrbCRgGmZ44mdT418iJBIMbrcHXjYRfBX83fWBZAYSlslugNxgdmXgQMomSevHera0ivCcP1F922MDK1j8eWjQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS2vBkl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS2vBkl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E56C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751849393;
	bh=2U7xtVbxwfAUkDZ+B4Zr3e5Jdm4zzKr/HMK7og2zo6A=;
	h=To:Subject:From:Date:From;
	b=mS2vBkl9bnfmDzmwTBwHfjc4GN6wiM4hi/C6SR5OqS14KgZIPj+Jf+hry2FOhQu/m
	 RE+g1bWz+Xug0LHLAcVlMKBhyCC1ngJuXpkTrVznsVND6f/9WqWDHTV89D/YD4zQEZ
	 B6bu3ZjO5tSLncV9SMv4h4fAkiZshnJJ1XdkJVdyGwn9IIF2g/2sV02wsrReFwDaYo
	 kE1YZLD9uAwdh7VLA7lEPJnquhtTKgxn/7HNcm7eB4EjQLVuTPUsuAxtVeokaDEv4/
	 2SNAfDQiz259uvVNOGfCj+qqYInAMcQQf33JSltDvivmimbFdX13EZDqnm1pSNTiuG
	 xkF3EUsiAtK7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB69C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184939357.27980.6367046591484836642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99c97758d232d0dc65a18eec7cce0095a4580c01f5855913dede1b396092db8
Date: Mon, 07 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751849393
