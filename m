Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517A4278E67
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744366795; cv=none; b=KFjWPGvaatfam7PyJxIHmNVqDTZF7qi/nrsM/dw3+hISUTvuuJxE+KwZLZB7Vo5mHj1GKYKKAHVtaR4uuaXMCl91INOBH+BsoBjvPBBDwkePGvS8ZD9qBrngxKwBsdMIGrk6EgU+5ttFFJrmMrhphcj2LC+PDpMwDe/V6JzjoGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744366795; c=relaxed/simple;
	bh=qDg4kPY7A7PTUCDmYx4C9UI79a0amGD8SZBSpOUrvxs=;
	h=To:Subject:From:Message-Id:Date; b=QihlZPkh/3yMQysTNQPVwYH+Nv4QIirPde4xlKVWAg/15UKBqds772mpyGRqwUC1UxW2uqK/p1htjM78f42dxvpeN55btLoQPKPUcl+4qbNtSRQ7bqTULz83lHUr5hJT2xfrxeJWh5Q/UTqR2gC6nfS+hVvA4TkZigew3cMPyLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJOcAVGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJOcAVGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B797CC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744366793;
	bh=qDg4kPY7A7PTUCDmYx4C9UI79a0amGD8SZBSpOUrvxs=;
	h=To:Subject:From:Date:From;
	b=GJOcAVGne0P1n7cDQKy6OQmKGgUqexRwQkC7tb4/s14pPoSzv32e47QwPz6xctzfR
	 78PlZdD5frtCxk0zk0dNuly3J740Ao67kEf0Pf/HnLVYhx8UMxpXahgZBhpNRC7DQ9
	 8NxIry2zHzLcKjgLhDXPPhWGZc14Ju5Jth6RBI98EK9AfYSvrYWlOv2cefAkpGP+tY
	 PpfT0HEM3NOfgZCtVzod3oQqZBXAPtJz31fNyC7jKOzMKTgIAtr1HriQbJACZrFIXi
	 udX0cTWg49z1RTzv4yGlmoG7MFFvgjZ0nuOxjp+pE+omaTu0gaQ2+iNePoI36Bchqi
	 JZqIPwCtEyvDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0FBC369A9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436679362.3807.17385514074743175450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62104668ac57588bdce754dda16bd96042e5df3931cd4b56c5764bc807427544
Date: Fri, 11 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744366793
