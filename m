Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0ED18059
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716989063; cv=none; b=nSLhcSz+8/REIzNOGCv0jjH2DiTzBHTWvaQC0O2xTY+mn6+MB0cnYRvDjsX9tqpA4eTGp+DAS/mAXPzd8el4oKP8k0gkt+QVZUGhmNBZsdXWIYjVpkH7uON4cXgjjZMkWfrWagq52V7KVBejv/H5c9LdlChKdFE5/WpEo/s9lyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716989063; c=relaxed/simple;
	bh=dntcU5aaLuPEY/MP20ZJ7DXSwFM/qc9fF6Gl/BcQdKU=;
	h=To:Subject:From:Message-Id:Date; b=uRvAti+9rIkKqrcMf+61ItEM4IqcZFL0t3KjXxSliy2hAZ8S58LLtF7dLRU/BEEtgGWZWwrrdZW7eVMRyBhh7WaQ3+8o0Zt4qRxJSEixNapYxUySz8ms04PN5nUPTF4cfXS7TGPxBXZ1E0Jry74rPa5rumooS0gB99geTOrQu4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1HBlRFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1HBlRFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B58C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716989062;
	bh=dntcU5aaLuPEY/MP20ZJ7DXSwFM/qc9fF6Gl/BcQdKU=;
	h=To:Subject:From:Date:From;
	b=A1HBlRFoUmYmj6lCtZcwDYKwIehbvElfCLU3parY8l4Vlqji20c5ABkoH7vlzboIz
	 kIixTe7TM4CHVrQdAr2xnS1oOhXgBwh/NATEBrM/JOqAw8LHkg7ipDcIQjpo8+S7g4
	 ciibGPGiGWtIhgPPGQMCOz4Ye6uVcicSrFZy7nCoY3F4mGcAmbWgxvpy2ax9dU14WD
	 FnnejpWA4UwVNTr0XRqnINWNnn4xQlEi2/XI5Xc6QsLuuFXLJfqUeRGxW/2pTzLmOo
	 DS8zrDwTT4iU2HQJDUcIQ+4bCHuPHZJw4saJDt9FI+9D/CKECagNmSluQd4Hwb3ssY
	 ag5uzjMfFY3iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF663C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698906277.30993.4576282915730746295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc5bccb1c8bf54637ea6d047438826143eff6cf5e124b84d6d969596ea2b6a3
Date: Wed, 29 May 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716989062
