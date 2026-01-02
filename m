Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1921E1F0994
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767335034; cv=none; b=PVB6ZL2Z60k3vOsml73c6HF23fv8d5Az6CAi5z5jM/g1HxiPvHRWRETitzAMrb4zquGT3FQYEeuuPDWnKFWJb23jLQdGjN3Xcj38AdGwBUyLpdAEYL2Q1Jl1EEGdcvXsmZezhpL2ZiEkOcVL0xJz/stxpb2l1WykGtR7IgRmD7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767335034; c=relaxed/simple;
	bh=6yIkZzTjGrstF0cHT27QkHUFqv7w6hR6b7P/rYp97LY=;
	h=To:Subject:From:Message-Id:Date; b=uEaVdSlnjag2kd7jj63s2RnumYCU35N7t3vVJwgXlTEE07CF3VQyEKMwxAGDy4ZryDA+8F0ZPOfm0jKDj2b3lMz4LSKwUKSQRtzf14eoG/seqZZz/8RS1rIIECtJ3wMOH72GRoesKSQuLasA6xrXbr6vKhZe+FWTQT67jnPUQuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etNMl7kq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etNMl7kq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA31C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767335033;
	bh=6yIkZzTjGrstF0cHT27QkHUFqv7w6hR6b7P/rYp97LY=;
	h=To:Subject:From:Date:From;
	b=etNMl7kquzZwWAF/6y+2WKjTM+fEwsV2mtm/LxOYgiaBPAH2hYPvuRZ5//Id7aZJi
	 hDTboHW5hyZP/lDWDEUvk0T6HpDd67ESWWfCUgvRFui2ZwUqy/cx6a0ZFEPLSO9Ohs
	 7ArA/ztVcrEj8mm2QFnxALuI+9GoBJu6WsAOSFP43/0A/v4bJ9Jkr16bZY++F+DhVA
	 q/UUrGaBYfnAqi0Dl0DR9U+5KRfAY37neRUfA9X3SEDB3RWGV7x+z2CZbX8tKpYgi7
	 ZBat0IGXKy5q8E44s/Z1HYW41XugaKy7HzQRd9puKLWeG8e55b8EssdtU2wEb3Sz2H
	 TTM98nPWBKWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAAFE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733503357.379.16478333381249541224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3827cb4c1a85b4c1ae941529c7dd3d1758074289ba94588fb49e56bca2c290a6
Date: Fri, 02 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767335033
