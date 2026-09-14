Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1B2481A96
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789402834; cv=none; b=bBwaQxTCusARMI5TqdzFpcUkXTTGOFiizxqekJB1M8+wFBJgRd56k3TFWFXGcKhKlXJuJllXFXMxrmhk0YqS6QQRnIi2bqEzqB28g5j4JWhjixPL/bbWWk1XNy2acwK4NjPwS8S2y/wjGOFehgdTbK+bu/eB9SkpkObYp0zzg9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789402834; c=relaxed/simple;
	bh=9t0NRmMONFIGPFf4KQ4dqWyMEiMP3FJUAchO+OWEIi4=;
	h=To:Subject:From:Message-Id:Date; b=TEFQkNTEkNp/rEG+jTzZp3jwAiCy+q/0md5UzPmox8SaNWAOYHJ3asBTW5psgOmQ/1OwVLcvDdVR2PU7HWex5rj/p5wlLTmHHxu9a96I+FwByq7NZx5bNDpswpXJNNZU7LhDhJFoOZafb3Laj0ejSZSD97xH7GBzGmv9SawsDfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRUuVd+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRUuVd+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D244DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789402833;
	bh=9t0NRmMONFIGPFf4KQ4dqWyMEiMP3FJUAchO+OWEIi4=;
	h=To:Subject:From:Date:From;
	b=fRUuVd+E6IhFopEXGkJ/xT9D6PWdARQnx/GTI5ScyxG3x9xY3H6BUkSp+p7jzRnnS
	 UBwKVJJ3kT5CJfoJxonS5OdENfach+wXjOU1SdiPLKzEb1T4qRRnANhDMsVvGJK0Ok
	 wIWYP2SlmWFd+IRlu6sCv87WQdE4PGSZfOJjJRpEIZqtZiTlqadozKlf2cS1FoQS3K
	 uUvuYplrncaQzQZBZnB4iWGc/FlUVgz+QYBEdhsFoEcgb5e3tSTI3xJ7+peg+f+f0u
	 rQpU8d87TvArOmMOVyAeFG1AWdicIIUSusOp8Tah/vgEODJ/jMaLYheSc/1VN7FKhn
	 NOQc53rFl4ULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB534C88E6E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940283369.26448.9444282325484683143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808f8d0b8ce3839267ec17ff47e16c1921163cc4d0d51db39fe1d7e50e510261
Date: Mon, 14 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789402833
