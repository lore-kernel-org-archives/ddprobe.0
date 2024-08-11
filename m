Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD774689
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723335954; cv=none; b=q7m96IBXYsi16z6IfZ7bBU4yeroxVUoJ9YaexPeDUXC5gNRmGpWdjbj362lakkiKvcUoT1azCGWZ5g5Rl4WhdJy3avgeOio5TltMId34VRCeA/ZtkzZvU17iBSxyi+fsBWLLzhr10SXnq+FeFzhf0KAO7TLxXEN6XOAi7Hhxm90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723335954; c=relaxed/simple;
	bh=lkdPdJO8BA2YmiVIfzYxawT3L21+frFCQeiW9reBRvE=;
	h=To:Subject:From:Message-Id:Date; b=jZ9ereVVItTkcVJud5QUVTIQemY4OpfPbQrozrZiL4Rem0tFpOjE02V8+YGtC8UT0T4+SvnLhlc54J4Sx3LGOb4TfCOZixAVjYAjdIe4AyFk9WP9xinfo2BlngV488So5rjoG/2BaoAgoFTD8/o2Lg51u8RgUP/PYFvQ5XqxAN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fuphi59Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fuphi59Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E03C32781
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723335953;
	bh=lkdPdJO8BA2YmiVIfzYxawT3L21+frFCQeiW9reBRvE=;
	h=To:Subject:From:Date:From;
	b=Fuphi59YwGbmDezekP3kT5W1p+tqIf1joyFB4jysNiZSCW902YaPbAEI8p8710XP4
	 jlA6/oPxXlQn7810r2w64mfz1Jtkdz/SkSndQLe4btaIeNapDtP9jDKZu4DYKq6BhJ
	 G1ygZQwTvP+g6nwk7yMYyPqh9lUoz1f0CYvJd9EleaTNGjf6cXaNUu4xwdqE3/5X46
	 gulvFdkcNTKJ5340DBklxHZJsuGkjPwVFA1oZzecKwjJWwuwUzkbB7+EtkAXOyBvlR
	 4UscEp7nJCG2KguaTgXmOARyD2sT2URW60M5X34NiEuYoquScL8BueUNMfYocysHMM
	 ba7aLijcvm/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC2C3DA7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172333595359.21596.151391327027693086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4f850026bf868a2836231c8b450c8ede34274c0506c7db5fd59fee0a4ea2bf
Date: Sun, 11 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723335953
