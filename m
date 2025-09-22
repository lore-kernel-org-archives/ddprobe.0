Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF0364A8F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758511794; cv=none; b=g3H5Pwq3Jf2NF77/0/fcd7oqNyTbQ2gCLn8kI/4MMv9OuGjLqSs6MTZbsMt/2uHb9NEMzPbJWzTbnlezpr5gKMy8c/LE8gIrJBVrqkKXSgEkwEMhcJbDd56Q4SZ5LiEWniQchkYGyHQUUlbL5Ur+GJS2QCS7uSo4nizZ6FED78I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758511794; c=relaxed/simple;
	bh=MbAazPJNy+lZOUx9V70yGgfH1n0VNOZc7lhEJSKOxzU=;
	h=To:Subject:From:Message-Id:Date; b=XOP6TEE0nkzJxDKpEhkXlopAWpiusRmyKj01jegNZt24AjPS1DZF9mTfDWBCuR5HnaOl+hLLCMyepeEvJ0vPZ4z3/pmGM/s/hHgrKPYQcKyr5+C2+CQhkAYn7tsJ5Ga4LBiRipAuO7XhV0d6p4wiMD/x2jiEYLrh6KOo76GhMjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldcMTe7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldcMTe7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ABE6C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758511793;
	bh=MbAazPJNy+lZOUx9V70yGgfH1n0VNOZc7lhEJSKOxzU=;
	h=To:Subject:From:Date:From;
	b=ldcMTe7sXGyuupcMbVU0xvesL1CD7Rvo42UtqbDkEvD2qTcxzndNroatKDaMaohFf
	 Jrk/YtGAu1ebgoabuLOv4kBeRU05nPjpllt/IMT7YBHj3TN7b2XI+o3i22b641UF9J
	 J09MxEnrfScC5gnGCdJ0yBNVthzf32bxRjCQ2Cmvkz6lLUQpK3YhOZpY1mpRVqCpwy
	 pD/hzAxa/2YRi3/cNYy62GNomK7W1kqCpFiI78LZnhzzs5GoiF0f7jtIuucYvJ6I68
	 FiToVwLIQIY/pLNSl2/W4g5Vhc7SjjLxJRZ8Z2a7coadZNFP1OUdURgrq77UAuA2TG
	 +V2tYI3C4EMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F132CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851179357.19044.8468122746410950219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c12af35f44853b02b78494abebd3b1dcc27718ce702037b553753f756f39f3
Date: Mon, 22 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758511793
