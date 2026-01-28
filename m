Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1057533FE12
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769591634; cv=none; b=HGxwG6YWOqG7W/jdBM0rMhoo0/pAaF9xGQpzT4hOWTzRC4M9tsUx7MiXToK17ylGdZAw0ygv2IdT9b8UkGQMRvv/hkFCZMsbaXHIknGouIgH7YZtWN584THJwtHaCOrdOdmkEXhQudmj+pbVGliMdVhgFPzlGXhHND6xgEa3x1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769591634; c=relaxed/simple;
	bh=FXmKPOIgNRCdJWVsUC5llVokfbWIY54LWz/V/TaWvaA=;
	h=To:Subject:From:Message-Id:Date; b=JOPBocsdU7LaTn1uwyqoDJPJLqvDhFpCSl7Z+v+MHCn8N6N9hoBM2pni4cK3kIboA/rN5eSpqY3FBk/eQ1Ntd2nXY5L/tgvB6PIH0jcvxOD3cNVg4+2wE3On4Iq1EbNhijudatWhURFsVQdGPrR97pLUlTH4CSfT+iV6UzmTd7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cW9YoAw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cW9YoAw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4252C19421
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769591633;
	bh=FXmKPOIgNRCdJWVsUC5llVokfbWIY54LWz/V/TaWvaA=;
	h=To:Subject:From:Date:From;
	b=cW9YoAw8uouQtaWD1dGxzYNxcARgkBYHZ+0a5mb+wtPiVx8TkjSCAzrQINhYlmLvY
	 ftZXsrIGMI2xUkhSVU7S0VGRxvw1KlNpWfTBQWAQBNG7K1YOG1zOfgJPBdjzPSsCXr
	 FGFvMIU62vcYnJH6F/5gZU3j+cdg+AL7yUr82iHmfMPFTno9LIpD5StIr0WEUY9ZQD
	 CTqVqF8Fy9bcxphrRAVLluUhxhQhLQtt+rFjvTDBkIbTtQmvA8fvcwV04nbEjVNlM8
	 l3ml8DgZbRVBYrvxsFPJKwMmoL/SZv0yzPNmlTdZmKtXCoVtZgDn5mBV5MMtRTSfCl
	 Ej7CDQyHtS2LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA81D35690
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959163358.15608.1243457887846879153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a98eb51369a7e46ad8d356a024705997901f02c0841f209a4c3d6161623325
Date: Wed, 28 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769591633
