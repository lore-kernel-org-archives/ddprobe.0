Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5571482ED
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732782354; cv=none; b=iwlK/LYHqw/K3Ws77sZFzp2nOSLBg8KKwaaRdG5EeH2BLVjv5wgnN8OkLIZ3HN0fyuDqZYdVMljRW21BQzVEl4SUsL87zQ6iLmoenkn+2cmzx7R5TmMy5CoZGr1TPflZ5kbqFKcdoLi6ZVbMRW6Jkl3F0EleSqn7Q8R8g5y5JS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732782354; c=relaxed/simple;
	bh=e6kJGScgDkiIDMvo+j8+7Jp/EjevsjyTHFxzER2UuXY=;
	h=To:Subject:From:Message-Id:Date; b=fNk8MkXgvFFwsnG8KVAipNesEomTxY4eAHl8p6P0vvGWai0Un0c3DfbG9lF2Kr9ZDK/7Knd/TnLTjovY1bDqWe1v132/8tlFcFaLUP1lBW6dtDqbE7FDwCcJrZZEkD8y24EYb7K6LxTB00+Atxo/4dwplOXdZKrFuMCy80IBfYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZCDYNy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZCDYNy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F9BC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732782353;
	bh=e6kJGScgDkiIDMvo+j8+7Jp/EjevsjyTHFxzER2UuXY=;
	h=To:Subject:From:Date:From;
	b=nZCDYNy4q4HfZzIwYIZfUymO56Dzjlp4L50MJzUViq2rm0QXmtBaI3jkdjjcEka6Q
	 yU/DxE4mf4SWOR5kJGfOYIF37y7Nhlb/KI7z0sVEvKUz7uZzCSUA4YszK0HeedEmdT
	 TtqqFhY1SV8vnL+Faa9+lf40aXVgmZ/2GVr7OpsA7V63hFezkRJ91JA2Qu1EC505rS
	 CwD5hcNsshnoGQ2INoi1cY2Q7t2x/i/zG1MLPBB/16my4JYaqwal+rKP9A6BLQU0hE
	 yeffZf4mO/dnNgrR6jnohAGfPI//6BDLPaG662GMWOGFODNCRQuE/8MvfMOf3l57Nv
	 bTEHS2FOFbuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91138D690EA
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278235358.28694.16604025175286691719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6dca18065d12719a1cafb542f9ddfb4969ba55bfab6b50199a513de8c46a7c
Date: Thu, 28 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732782353
