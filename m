Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F57D2746D
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735403754; cv=none; b=tb6gm6f1wvhQ9foIBZ5GO/UhvNRv5qL1dsQb+BNrjnA0+0EjEcfct6A5ZjXexdOUFDyxDKObaNWdG0v/5RGPFzcPGCJCYeZtZHaS64wcwaNSRC4lXU1TXH4H++2kZ3yGs+GyygMzZb/lyphNLcQ1wN0BBpvGZYJ5K5tgjBQQP3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735403754; c=relaxed/simple;
	bh=iinnzSKByQv+GCUw4mYk470GcjikPLxo0W4izbSnPl0=;
	h=To:Subject:From:Message-Id:Date; b=s2aF8ogP79wBQCLbiSYSK/bgkm3Q4fgiSCESYdrRdVrQVEMm13ucBRX2eapQej3tPKbCD8SDk0SK9A/jt6rYRzqgtPxQyOqLuR80Cd2DWWqecnJn/l9I3krZMMv/swKKo8AE7ijjSX8CqTYV7nfnjyk5ErMhkTNWOxjJkxlm0hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhmFYpcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhmFYpcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8585C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735403753;
	bh=iinnzSKByQv+GCUw4mYk470GcjikPLxo0W4izbSnPl0=;
	h=To:Subject:From:Date:From;
	b=uhmFYpcj6MZ8PJ6LXK1MQTCa7VWHzU+JiZUDiVhjtm4x/8g38ZW0ct1B5G7Ykfs0I
	 45TPh9z3XInt81o1R8y/HujHxpxKQHqBRSYt0FMhPgmsn4TE5BrfEtw8W0a8/bpu9w
	 EezfHTw+eh/Jk76/f1f8KPKOtxNd2HPfEDxN8IskzNPraEVrPS5foEH++kySOsAJ5i
	 GG/pN2qWhJy2nBEDrtVMzgZklLmTKrOf+RwdQoBYH2Fi18JQ8d79Op9OtHJbGdWIks
	 M9HqrZwIqC7N8CO+rhXksOFXD5ivQbebFTgELCJjNxEhNGSW55duiT3EFP/gEwJpJv
	 TQcGGlvxwJKqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E9E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540375358.14654.1239643552794958961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4851431b55f769661bf29223339a18e832ea868239e17c5c1c2dcb7b88d5f687
Date: Sat, 28 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735403753
