Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE2DA927
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746699594; cv=none; b=t8a5S9QWrGm2YlPs/fx8R5ZpXdrnhPup9aWDmI6oQMnDBekZC2+OFaEn3l2nux0OXVfypnLb6zhl4njpTPzUbeioyZmJnjEevTgPSenpR+JUhUBymq2yZ9gJ22CD6JLD7DmQ151xg5CmBGjIpaALHPiu/rUD2YUYZPv6FeXWeGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746699594; c=relaxed/simple;
	bh=BHEDv1JRpjlVqNzIMFg2azMCt3OqVnJS2N+HjTVVu3c=;
	h=To:Subject:From:Message-Id:Date; b=KkZICjnYjMf/8LqbPosnq5vamlCKpCincQ/3WX9g9vgxm+xkUQekFQdSyIeYTtxmbOH4PQOqod+u9K7aZmdsciScoOxH4ipua4Zleub+6B+KI91eBIJIb8FgDEf6vqsn6sWoF/AGI6y/pyp35agfO+i+a2+RsNtx9wGzJ9cPzqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqVOl7Xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqVOl7Xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746699593;
	bh=BHEDv1JRpjlVqNzIMFg2azMCt3OqVnJS2N+HjTVVu3c=;
	h=To:Subject:From:Date:From;
	b=nqVOl7XfsPqwP0AjWQHp8u8Id+nnRkCZ7F8dIlB9qprE1yp8vi4aCwRjFaPzWFVSx
	 w8K/Gt+Gc6Q2oAyE/5w6HD5iEowmTjfaMW/X7JKSTYKVpDyi/dvf11tn5i0QoznAas
	 ffzUCkc1WywmmSnmlvM4xOs7mYSXbpOD1JKCbQ6aaMPHGWdlzMDMOJeAPiTFznhRKg
	 3gGQPKJFBHu9zWEMby7ToBQ0/gibKc8S11gTDeZ4z3YkfcQsCaBquLbmJoNK1zWdLW
	 tWk6e95wV51kpuNIxo5y/Dp4I1VuHuVTElj0aMAAYXghPtp2Drk8i9VXeON5hI7Pf4
	 pcxvbk7rJdyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E248C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669959357.31985.14653206461663157828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b7e0803007adbe8f8aa1c5a00549138e97adf998d4953ffe1676d06e0316d7
Date: Thu, 08 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746699593
