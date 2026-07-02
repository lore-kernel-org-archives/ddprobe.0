Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD54258CE5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782959914; cv=none; b=IjQ4NpUmGBolJ816bmw/FKB0WYbBg4qX1fzM4L5Ikwk5Tskdnoa/eT9L69Avz6jejmefz++5huvYHTpiD2d6qYxYJIF2io1nN8oy4OSvsjkmJoId7WHbapLVU3d1f15b98nYxA6qnlRxgaOmUFIL4rG00e+NqMJmK7Oq2fvZtUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782959914; c=relaxed/simple;
	bh=v6vH7Jz2liogZznE/f9STW0dIdcd/1jwE091RBvwEqA=;
	h=To:Subject:From:Message-Id:Date; b=M2ikid5RoTrIX7JSlfZu/xw0cDF+c+JKUX5n0jpRZh3EqX6LZjKJGt7MEHjf4Im+z/MF9aOTNu9Rf8YCxL1TScZOcT/ScNfniCdArfDdHxwP7OCoq8FboNpYKAswUTFP5+SwoU/L0j/Z7u4Cm3XOs9GGTJuZtIG+eY3rchiLZPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNlSnFJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNlSnFJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFDFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782959913;
	bh=v6vH7Jz2liogZznE/f9STW0dIdcd/1jwE091RBvwEqA=;
	h=To:Subject:From:Date:From;
	b=RNlSnFJpymFU656q/QrGZzWGgxkq0TXfbSdOpqBFqgAyKsHxPQFWwI5kBW2xCla92
	 HqobfL66fyujI7cUwCoOC/hVZNfspcktLgugQiZ3FqsDe+vwBIsvA8VGN+H6jeWWWw
	 nuo9nI6wWghYLfgNWwLSDqij/KoES/i7+plWTHmsPF60OVLeKXXh3bLHB1JoqUqI+a
	 kzE+oTUB6eRhFrrutp6hQt2nfdgt8jEFdMa1Z6NPbZq1fDpXLf+H8vPtqw4r0+p6VM
	 BZPllRJvY10y40tyY14gtxSv3CSzX7n0BH6Mkx/ipc4CteuCzy/ba3WSFmqR4g9z/b
	 RGsNe0PcvU4LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDBFC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295991369.25970.6057550142524156187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48aa6f228a7d0cac0536b0f468222275a6c1ab14bcbbfd24c0fe8b52ac9ed6f
Date: Thu, 02 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782959913
