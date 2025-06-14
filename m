Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4772E11B1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749880194; cv=none; b=Q+QXbq9wCzCikqLcm2dVhQNkrQYOyofSnHgqmrYYbFIqOOiq0hy/z7u5zgWMimzURHItmoVFK7CHja8mLuNVwduuJ/5hOpLtfJI1m6jt9ti9OPydIws9eaUMz1WC2IXKt3+hxS7LFEniXUcpMr7B06Y9/MuJGKVkrnzDJ+DaWR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749880194; c=relaxed/simple;
	bh=UgALKgAFjk64HwLJX+JPghpj6xhpTygfBU7715FvyHw=;
	h=To:Subject:From:Message-Id:Date; b=R72LB9I/buLFbkFLR6DF2vpCoTjvPavMwMMeCKQwrVGf8OWMioYk5KrPN2vV4P0GaAWcKwZQQVgXzQoaBxt08p7CdJteDonSkm88PcP8vyMVgAXguC7MuSrnXhOKeTY0y0hXlpAkU8sKQpx6NVO/FgNO1MOY4DQFiMvgPTnmMvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fShuf6Km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fShuf6Km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A573EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749880193;
	bh=UgALKgAFjk64HwLJX+JPghpj6xhpTygfBU7715FvyHw=;
	h=To:Subject:From:Date:From;
	b=fShuf6KmoE8yiGm2mpII+6zttwJaRv6d9nymoUcbCjZ2zfZTOk2qmfcw6uihoYBDQ
	 PxSPHATYfY4nJ3xbaiSgzpQjNeS2vp6CWJyl7DKGiCXY5d/+gn6Fs3JqcomygZO0g7
	 SIGFm7EsLsdWaFJXFCRzKd8gT55IBF4m/wjARLfWgK3UlTk9BPMDoiY69Xfw7LerZ5
	 PHSbc5xveip3jZwyqYvOMTg/uo+CytL4yekTbn/GnkcJnakcgFoNwpxm1Hc3ybrXEQ
	 nDx7R5pKVnFUy7O1zV8g5ZNcw0RCU0rDtB9yJGDDCcZSLN/qPyyVIp1aFA4UG+YR+X
	 /F5Fu/6O3T7MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934CDC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988019357.6469.1174637331220805069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895203c66613b06d92ae0ce0c606255cda93ef0c1f859f05e32379c35e2ce1b5
Date: Sat, 14 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749880193
