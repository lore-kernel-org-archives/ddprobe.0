Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4F0255F43
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747056594; cv=none; b=T9LH4H0TgcwhccJksDli07/c9HoN9iEd5WPy5o+Cnjz1YwoRoXXNNvyCSEk6NKlMSSwdhPa2c85iE3qT8Z9PuO3Dk07pfHZQpksE9rK7o+M3Efxz3x/Pb7jtLFyn1pdrPakgezpNieoAK11htry/gGgUtS8Ey6wJfgE0LG4d4WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747056594; c=relaxed/simple;
	bh=AqZThRELF1KZVnC/LMeg20YYVl97o+M53I0tbXVSUjs=;
	h=To:Subject:From:Message-Id:Date; b=r7epO58pNo4crKU2G09a3xyq7h3pmtnobrnWJ8u788CffhnFuZdLeuH0Gf6dfwhtGdkSa82jzdSeMpCDLh7w6hXndZH8j2dTYjGr0wOs+Sv6GwJTu5p7KM+ebmuPZsVbUJxdvYihN6fTdyCvSDdMjypW5jYY+Mu+KQBUdZkr6TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoL65TQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoL65TQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD397C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747056593;
	bh=AqZThRELF1KZVnC/LMeg20YYVl97o+M53I0tbXVSUjs=;
	h=To:Subject:From:Date:From;
	b=QoL65TQVKPOos1ScCEhmyn/mptPxD1sgGVoCTEMEp24wV2jvb/dAgP4GOL8X79Pdk
	 nOk6RNZ0U3ZZ3XPvvpsQdENn0KmnNMX1NjMliasNHM6fJ2b+REdNwWeKNLbHy8mbFR
	 nSE/KBj+231N33mM84nsiTPjCoe7rZAFpHE6akQ/NGnlqggZ/hBI9LJ56mZ3pyVJIw
	 PPG8ggCVVNPvODz8o8PF4YxJKaGVQerW3TQUDpiy25ri7Vx1suEE4UujVUzhBg0H/7
	 2SgB+hqaY57paNFZtI8zGR5Kq6uUEsvJHGk7kTrDUq+YEp67XUjUscC8LzylI7a7sA
	 0K5wCnb6vlMoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F4BC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705659361.5376.10752079618498173798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3482451838af86a276b8227d445f20ad59e2042cae4873154a8364eb4950e088
Date: Mon, 12 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747056593
