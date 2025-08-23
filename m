Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3902B15C158
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755954595; cv=none; b=g3+r8dJrK2NUlaRUR0Xq0pAb3F8RHOP/aj5va0j7YoTBml2ckSFHYFUDKlJf5/bieI2bbkHMOO3Iv/LaAX8xDiPM731BHy9rp2DV6Puj32UpVw4my1QJ4xmf4v7Tx6ADacallHPzfOl62ARHTY3aD0qjvcXp0080KsBqzRgOoEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755954595; c=relaxed/simple;
	bh=jLU4W+7LglitDWIFRMAB74g5W2MSjuH6uOD80g7guj8=;
	h=To:Subject:From:Message-Id:Date; b=da6n+XUKcVjjSV1OTOMwVNTEMoxucGtb6DBGJaiybY9L3/grNnEYvLLOc//Vo8V5KYSM76nebiU+BNIzp+7L2CF2lkK97kv2gXhVx7eSJNDB+jlSdEFMX+Ix9HliE/P6fTTUHd8DmIhhBvmTiOZ1ckbq13SeU8/E5IIt4JLyMYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYvZluep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYvZluep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CEFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755954593;
	bh=jLU4W+7LglitDWIFRMAB74g5W2MSjuH6uOD80g7guj8=;
	h=To:Subject:From:Date:From;
	b=PYvZluepRyG+4MBZBtyNpQnBWWzYGzhnueMI96STvpnNOz421S5Y20mazoA8zM2tr
	 tZ6zq0bpHwLslTmzSV5E7s7SZbJYt4P9vgi6AL3nXPllh8pqH9wGcGyCha/In3JkF5
	 OHhEQhaa0Iy7QwXTr8dEX6fFacRHJqA+GuyXJmjUGGRFF9MU7MCVUnuGNYlQkOcYpZ
	 GqcVJDSzVjQ1W0WyhkIZ/PUPSnpGmmztNOK7MXhVBs04Jb6wBbUERjUYUCMSnVl8Wo
	 phu/RtVcq30b5D853sYx12fsTp8B8YqGfrfIvTzbsRKgja40SlRi160T9IH7YT9L+f
	 D8N60U38ueBLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D76CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595459357.8169.1988201023559640479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35a6872aabfa1e53e6070d6742d1ac0712d748afc45d29c2615ed3cb14147ed
Date: Sat, 23 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755954593
