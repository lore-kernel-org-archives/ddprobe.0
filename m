Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250233C1F
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769958234; cv=none; b=UL6g98qT7oU4pkSCzfpaYd050f76tA3EPOr+S06Blc1eMJpGRL2QNYHZCUJmnloLcp4P7/H7O3Kwe3guFWAJOVIFQucixgR3PG60RH6IGgUK0IbElHsTMmzOEXlO2cPPc9hgV9GftuDl5s/naFhSfjPM3tKVKlsxcUeB9IFgu7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769958234; c=relaxed/simple;
	bh=R5i4LLznDQo7YyqI90hgl6pamayLUqvm0hGxlwcUcB4=;
	h=To:Subject:From:Message-Id:Date; b=Bf0lrlQMZcuC2DvVBLBcJ0L+JxowKUlFD8fkkftJ4UzmhcRDQ9mgGTsmnzPEL6Y+IVJEg+D35y17k1lz2ZgRfVU89qBPsSLjLQER6oMDF3nZmrdOGy4IdRwphTOwsXTGxK+8MLkV9hdL+gnEzxyZFxtfTBiHfb/WL1iIhdimzOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8U6P3zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8U6P3zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB626C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769958233;
	bh=R5i4LLznDQo7YyqI90hgl6pamayLUqvm0hGxlwcUcB4=;
	h=To:Subject:From:Date:From;
	b=K8U6P3zcdRhWoD0QsBd2a6YmELwWJLf51q4iFV4BUUqejG0yhlvNu8toRw8agloIX
	 B1oIJwhqhWf7QFOp6jFzmPSpHuB7XRf6NRtrv3NVqYhvj0JWSzZBcts3QH58j75k+V
	 fSKbEfeZf0iTh4kbqn16WQI9Kdi6Da6S7DprGYvhOgcB703Mh6MagGYIXW3OrrKxcn
	 glI7wjBYGa2zDghHcFfwUlXEVGhO75asvQIr5Fq0j4LBwvjbLI8zHHYLC+XQ3vBw8f
	 ySnvMt7KhHQ57j8OKqGMUogsKmJjZ8Mopk1MeSSc3TR5LdMUSHPzGAZxH1xVPq22ok
	 3Dk0eKMVVBXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A514EE65284
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995823362.26713.13654139181568097281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86b4f6bbb3f37c9295e6e961746d29ff39df57004e66b5a267e9947ac97bdc0
Date: Sun, 01 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769958233
