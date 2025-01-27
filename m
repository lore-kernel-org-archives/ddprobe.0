Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA9A1E89C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737951954; cv=none; b=tyDEeVCvmYqCnLfQnGJc6frEQyaKSI7kfmok/t0vzP2wK3WAirzgjaRGTtck5Jvel1Ig0AtRxDW7wBpw5523biWglg8gyOEPNWP6V+qDHFfp69KUDIDVUphNtHD0O+2Ts5UVmMQAgjYJt409D5QMr/2BbQqDDexyPxgHPnU0CTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737951954; c=relaxed/simple;
	bh=UW0W+L2NRTY3Q0wQOqZkCtuJUi3LQbQK/FZzUUCGVtw=;
	h=To:Subject:From:Message-Id:Date; b=VlV4LrxBr3qZavTLMYUo6D+wicrN6qVjJSDvhDiWk68mo1en4E4zkMebojTgz1qF/3K52EdG4+C9g/lep6Pr3uOGIBZg1m2Sx6eS4OGETJAn9fNgVaG5UuKvSiQPaSf2jrcSD3+Pfj9573FrzUk+O+AsuVn1fzunC/B8wieyAs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2OVFB6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2OVFB6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE2DC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737951953;
	bh=UW0W+L2NRTY3Q0wQOqZkCtuJUi3LQbQK/FZzUUCGVtw=;
	h=To:Subject:From:Date:From;
	b=X2OVFB6NivVSOOJb4OPwg01uli0wtNoPIhVTMawrfplhKReZbc3y9H7a+tUNezfDr
	 KrdhaFHEdvGDKoT4rkJ+PozP2kvuEBS9qLY8Pgbz5g1mvfy0qAsadiEXA+8p5BG8co
	 o8drL0OdUp60VhFQXTmTKkKKcVEw16heyHqC/j+J06rG1aMVgNNZPVqbLaGEIj2QZ8
	 RHRfzgPUfq9AmLK+D0iH52SGO2T/IM2x+e+uKixYQnMENos1ZkwCg/I5+JG+s6+1il
	 7UKHcucOzoJukCGdV2+lHTL83kkwcULzLTtGlKRQT09a+KCcgN3CkE6qCk/9ZzG2Bv
	 PdvGXfjQ9oSig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966FDC0218F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795195360.16541.3874899069716094585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77eeab5ad73790056a0328d2096dc6a07fd8b39634d6a32adedebebd18a5211c
Date: Mon, 27 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737951953
