Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D62AEEAB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755301794; cv=none; b=ebwfz1vIkOgh5tjuJuBMSA/MBDm89qVVBTlZtDVlNDDJCJUkEYMnHOevH3CmDq/dqbguzhZKN+hAdkbzLVTmaMF2fdfKKefcJ0D4zBkREArxcOMi1ZAP9/cqumE+b4+crYcszOAMafhuBXaBRiCDDIzQNGE8VNBVViUDN537vzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755301794; c=relaxed/simple;
	bh=f/t0Sh+r86Nxy86YT4sB7cpSqa3u17lmeehVFX5yxds=;
	h=To:Subject:From:Message-Id:Date; b=iuVYej5iGo1oK7dMWAY0q1Xk6FGoLfKaHccRRGES6W2aCHmf0GPB8D/sjyCJoiZOzbx56WWnpCDijzaKsDnZ2yC0KFwe3n5ZP59y82RMC10DzKMjUHNRQBzKFib1Wi6YOpB7ByB8NmH55mryWe2m+x6eMYbCsR/EhKGgoiC8wvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUrjOVQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUrjOVQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69C2C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755301793;
	bh=f/t0Sh+r86Nxy86YT4sB7cpSqa3u17lmeehVFX5yxds=;
	h=To:Subject:From:Date:From;
	b=jUrjOVQuewShvbYZoDCgWyVmOlUcfucSCD2BHFWxXtVd9F5glUSzbG68uKi2BGJZ6
	 2rFAiMYddhaCXmu/Rk52JW7gEo0WNAtbwGd8MGJ6n8KJ9XEvHJjsM/WZyQdYRB4myV
	 D2od0wNSKa3V8U0CUmvvH75FVUywqIusRJxAFb4RD+HnNqsO0dg9WSD6J0sAMcSPYv
	 tUFPClaTT3QAPI3/8n02yg8gF/M6UvtzKi9CDnp2NvYQ5W7bLmdB4V2+DAMTvxV2kh
	 lpj0lCSriiwOpC73bRYYyMu8fmZg5PPNefudFarsVyspSWyZRXV7mLHiU7p0JrnlVS
	 kRqAmtXVfowOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C0CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530179357.31941.15417958368947956885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f30ab4170d15692ef67d36e648c41adef20244227314cf071e393acc633a949
Date: Fri, 15 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755301793
