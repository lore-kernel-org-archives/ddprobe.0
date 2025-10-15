Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233E22D3220
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760564394; cv=none; b=mn5mIIvaT1jcKi0Vdl3UJBm1si5A14oaDRq1yeYjst0ZX2x9N3uKlp3cFFxoyczd7U5gxzFfSw9gcyQ9dwERVSCs8hVer68MwFEZjQAHI5LSEGHOW9pee9Nvwa9/HhZck0x2/RN5XnyP3/NoHjOPtyksGNKv8kvEXiIcxl2h5S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760564394; c=relaxed/simple;
	bh=zCaULCLVnMbQ1B5jSGlfI8SG2we1psi/aHqseXHBPHA=;
	h=To:Subject:From:Message-Id:Date; b=cCmhDxQE0r/AvU0/z0kgnzPoZNHQ5aiNLg+ATqKx/O0bdWOD7Xk13LjAZxGbShL0GKa3Nz6DW+VOk+MFVtqpBp3uiqdeUM1P3n/5Fl+nWL1T/MP2Jv1cu9aiTtCd+UOKlckg+hB4uzZPvNKRkm4ZDnJ87q0HA3o6a1m/wvOitq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoTkLuk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoTkLuk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31AEC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760564393;
	bh=zCaULCLVnMbQ1B5jSGlfI8SG2we1psi/aHqseXHBPHA=;
	h=To:Subject:From:Date:From;
	b=CoTkLuk+G7VmL3lQ4xNNgLNBmYS8LlOJhYwPwB3/tg4AKuk8QdpspP0QJqbTarC3p
	 YSqoThrzxS8jg5mIapPJ3MaC50uYE13pnhPHIoq0k1dXUszl9wcJTHtTlwknsPkoRr
	 hNkYAwbvSgNgE8kv/rv/du2+MDkSiqZqnVquoN9QR2e40FxUy6pcRDiv52gyh6TYkz
	 6c7Iury9fF33VHpVjqJhrhDZsjo8dWwKvCJ5XZodKYAPYYBiqldJ3H+c3FlXvpf8TG
	 8gmuuk4yGVvkL4U4Nj5NrL/5DJwqj2spWsTZj65ebN6FevrCKh+dPRP5rs1mwVjUpj
	 7VEN43U5pLb6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A0CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056439358.26420.1176300483560918138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3b80e79d55e7f2e6251afcb07fa41832ffe07aa0c9a82943c6157b6ddf301a
Date: Wed, 15 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760564393
