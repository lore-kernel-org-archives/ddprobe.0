Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4672F2B
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 10:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718535503; cv=none; b=TLKf9WDXoAXZ5fM7VNQpxeyET261XM5u6RuZ6rYWJb1gj53GbfgH1cWYu4hGNqHSFavdW3+SZOZIlB5OG4+1UFTXREr396Zx6Xjj3RsrXuDZkX7S7khVW8MsV2Ie8qs9iG3JWckVbdtlcaJQ/rQL6Q+znjBF4JZBxw8ZjZxreRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718535503; c=relaxed/simple;
	bh=z+SxTc1eneEIZGotMX6G9yIJzqIQa/d3KidEoMp02cE=;
	h=To:Subject:From:Message-Id:Date; b=bjwyZ9w5kq8Jxtgii/DoFuDy6u1LTSp0aLC6OvueqgyhwfQgGPpF1uz7OpnYX0EA1Ql5t8IfRvCq73u9uqfXi2uWiQcGCi0s1Rgi2KsY2IVZa7LMiPmAKekHXyND05qJI/77v71sqmKte4Sg0jn1xPE+jnH6ofm5W+c0FMzlQFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jH9Vyd9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jH9Vyd9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D939AC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 10:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718535502;
	bh=z+SxTc1eneEIZGotMX6G9yIJzqIQa/d3KidEoMp02cE=;
	h=To:Subject:From:Date:From;
	b=jH9Vyd9Y32mHRDJ9ISnp4Ccmj/HpdHORviRt236kNy3lEF5y2LXc6oFn4Nc9EvMKZ
	 kKxTZqguPWa0l4MSvURK74FuUsz1Tios1ZNI4oW5vaKV69xwtv9E32dB5ZdAz57s9C
	 Q0EfVp1gSABPkgF9rqHTzRULmaZxEDH/ijyklspWhFX4byHoozkPuHh/3DNkAp+jyL
	 jJf4iq3zVk1OOsHaM8Iv48HesOMLXFZbw7FGUHG1Fi4g2HPSbVsBF7d15kvgwpbCOF
	 KgSPwK9eWq5LOdWVoieWOa9sKhs2RC10T0A+QP4DvZdA84dH/oIM1XByYCKwMWqOIz
	 Z8elZg62cA/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6234C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 10:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853550278.21278.14401670694235987238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7d9af5f608b6bf2d4cbde7bb4d673d0793727a2233ee8e210803b7e4acb061
Date: Sun, 16 Jun 2024 10:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718535502
