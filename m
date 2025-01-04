Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44030EAC7
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735950954; cv=none; b=PGWD9j32mOPi5irK2aN9VHyCgRYNJCWwHnQInX2BY+LEEAz3rvwZ/w9oY01q9hi0wUcoeRhraO1aYffCCvcpa0/ynx+Z7i0SQ3CPKJzwMV/dp7t/yoLm2aM/kKb79KPViopi9QOYYbnegjwo9LaVbUx+OKTf3E2FiSkMAXJ7z9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735950954; c=relaxed/simple;
	bh=dKiRP8Ow41xGHmpordumVS5iR8DVaSACq2rbiBbZ+28=;
	h=To:Subject:From:Message-Id:Date; b=djpnrGO2wDs+VXORm1C577Up22AJZB6gwd28cP8enKxD6jic0CFGzW/PDhOrmxpSu4dLshF8QYJVpm40NigIviA7+A/ScZYERuNudyJjabD5pVJ6WMjn4FDK7zgHfSqkWFRZnQ6pe8oomc3ENNv8FQQTXQHxf+dFKC8Gkri68tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8Wf+jS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8Wf+jS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4777C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735950953;
	bh=dKiRP8Ow41xGHmpordumVS5iR8DVaSACq2rbiBbZ+28=;
	h=To:Subject:From:Date:From;
	b=s8Wf+jS9EN3KStgBNhkj6wkDjv4U8fAbxh0rHM+BSPX6uCje/5ln3EM9vk+XToIfj
	 noMIBZNp9L1wXjcC1nLRYPS2xnUQ/G/CVcXGUjvinVnqg1yYdAApKcaIrEkFJ1gmmD
	 tm1tQpNrpd8dKsFOFLhnzFARHudF+dmvHjWBzZKhhg8T5wsb2z27l/6NxWrQ0GNyBo
	 S0y73quJEDpJHwGwi38BumdNZtAZhGM9G/CDNB99qWj5oBF0DKPpbBJtUZHPGG6mYe
	 2zbDr1yNAti9bq5ovDEehGNCBSD9ce4Xafc+8Gsju0RkH9dvhC1jYuw37doEsmZuAP
	 2JqgI474loqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E796E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595095363.11100.8191641208439015577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5597b2d1b1a540b62a015c796e069a39d22c54fd6bbb9831c1ab5da1b572d5f0
Date: Sat, 04 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735950953
