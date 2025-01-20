Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526E61B6D01
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737365155; cv=none; b=At9VgqppAlCboEDyeUlZ1DJ1mY8FcybXAmglLOVZU5YsSC0eLkYcVGtHtLdRU3KB/ZNo9vUe+CCMAVnSScZFUd/ga173SSc8FqJXluLtbSZKbKLhmtRaResGCUveH/41eWiwCcDRrG5QLGv037++PQzlYxrs/1q63OSvmzn9mI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737365155; c=relaxed/simple;
	bh=hKE57x/Ie7D7UOebYOD3k98qaWA1o0ewe69s4chnVZs=;
	h=To:Subject:From:Message-Id:Date; b=SaOuAVSUczzv8WFsotVuU6UP7jKaZNOq05vb/SWqpyKK+Eoq6hU44yfHSl3Fzwfot4Sc/HzNtGHCuXLM75JPTQALfYeezo8KfKVbRP4cKCFDjEs15mHaCQneO2aAjdMc8N3nZISQEmSRyxj7kb8AbyNuoVvCt3t7IQFdfaKmJAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9N1q47k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9N1q47k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA99FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737365153;
	bh=hKE57x/Ie7D7UOebYOD3k98qaWA1o0ewe69s4chnVZs=;
	h=To:Subject:From:Date:From;
	b=k9N1q47kac4k+Oglzrih0KtRaVZs32LXD9LmzmGpYXYJjGbRotHUmeCKenl/2zKYb
	 rePopkiNTxCHV1EpBZKg2Lam7BZN4ONEFWeYtd7xpLMC43x/EHHyO7P/4QirRxZhXb
	 IS6hy377efLfUs3SmCNprZVMWqleJeOmUJhS6ZiJne1QqOEpf+aOE8dxMKg1279zNz
	 KC/r+E5K1E6ka/1IA470+RSGI20UN7wB3LyMwFMcffK4afn9wYBA8IhNfrUYKvjVlQ
	 m8kwk0TX/ZziIBM43Hba477MIl1vFHPnDV2gd6SwVA0MD9fRLimHfDQMNGVHFWD3Ly
	 wNp+xbRkycllw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13B6C0218A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736515364.2063.10376474081185521370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f2df6a572694bf3b72e688ca6dd8e14cf0ce9aa7cac0e73e4759f854aaa0df
Date: Mon, 20 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737365153
