Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB3233C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720341383; cv=none; b=S+y3caqdSWUflPvCTTEqYWMr4iqpC4n1eENgIa6TAOm0Djw3hogUijyG5ghjDsinjzdtpHcuDLpc8UyY1U2LZ8Zgygr7oovj1cMfGfNUDhXNVu/hE/7nQ1aaAGccEXm5ZCgTQE4/S/sRQgNNVclEDWqdRhcPzgT/eU8yUpBgiDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720341383; c=relaxed/simple;
	bh=n/K6+2v+D3kVGFccAg8rKkuqderZ+C50L1NAUKVlhSU=;
	h=To:Subject:From:Message-Id:Date; b=SSoMAgf+kNTuH14dMdj/cXVC9HKl4fju3IRpisgET82slSJKDxYv0mt0BilNengZw3uv+LLu9q1b9Omg4qsKO1eukWA9TvlVVgylBQe/yvFkItRei3bMU30lrOuuvG9lMtMua5IiAg3oWXfs/Ovdu59xyuCQkK7hSRuTPBBz9ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPzDpFuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPzDpFuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E35C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720341382;
	bh=n/K6+2v+D3kVGFccAg8rKkuqderZ+C50L1NAUKVlhSU=;
	h=To:Subject:From:Date:From;
	b=CPzDpFuWJJXYqBgU/MHBW9dXovsZc9YQpgTncFZKCF9tyJaka5QkU1bwdIGV4DXVm
	 tDmiadpASphiFs7ti3jHuTwCe4A+jDfNbLFJcwLUpnL5h8z6HEpsKKYbeGswSI5Keh
	 0ALnAKnscdZ9+Pv7Es7lmt3l+koNQqSzA6ovGM/2XmU8rIJF+cg4hUwBJGHmtILBWh
	 g+g02JuEC8llsmCcCcWUYLwhGZTOpEvj7lW4ptoCrS3hcNht+kJSuj6inCkm8Iq+Uq
	 tyTnROs4sNsLoZfE1wmNwoc7A/zk3hc/lbWkNhJt+HJxFnatPZi5osDMvTbjC+joYG
	 HZIza80lQyjoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC33EC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034138276.10341.17172472403279444973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11cff6e0ae755b24416b742b8cbb56f530e26915bbd5803a5fcb24a66bffc19
Date: Sun, 07 Jul 2024 08:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720341382
