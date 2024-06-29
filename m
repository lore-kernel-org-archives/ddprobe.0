Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1183307B
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719656663; cv=none; b=uHV3xcxBX2sN6U4kBU7mXUukJT6SsgUKG6xBCzodQyQGLRewKxjFhZ77vX+IXQ+BY1nATWgq4LjpS5wNKqMVrdwUQdmTkZe5NwNsIhsLuX4wGtoTRlRqXyC7n/86vvYZ0NIV0OoGvV0eZhsQmhNY+arqYyf05kDO6wdzOscr7oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719656663; c=relaxed/simple;
	bh=/nm/Rpx57SHN5KMzZ+CzsTrwpWHQ5Pqy/sXxX/qOZ4g=;
	h=To:Subject:From:Message-Id:Date; b=qd0BmAJNJNSWD9LRjPBe1F0yYcObtbvbBeTfcKTi69U4mZiK8MuXa5OC/s8wOhObx3TlY9+wDH5u3SPVuPtScv7Of/Yppn2nvkVceqJD1ph08HCQM/c0Pq6fHSGixRK//5mu1wimA4tma6b3z6RXqiMgo/CDY7gBfeoP7nqBwLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHtwEUs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHtwEUs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4FAC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719656662;
	bh=/nm/Rpx57SHN5KMzZ+CzsTrwpWHQ5Pqy/sXxX/qOZ4g=;
	h=To:Subject:From:Date:From;
	b=WHtwEUs69dXe7xOPoi6At55UU2jXvIgsfwJrLzIkZGYvdGSQt3GgDbjFo5FbUu6wq
	 XoO1FaWe9ZU/wSWbcU9FX0W7OY2llSeKl3nm70vWRAKd79PZsqDd9Gt8oLxYlmp6DX
	 jVVlDt7tu9bjfv5zoevW7mavSaays3B97Gp5ss2JrYj+kloxujlj6xOJrPNiMHDiDj
	 0N9qM3Jg3vxkxNZQ4kuhFX5FA0soF/kkT7pwD+Z1ISQabHi+T5uSEAplALsJuSZ9o9
	 DTUhVuRLF+hdc0ViE6QUTEys48WRMksyVkxShQohIhGpb+XVdavEKQpjGtVN/pOXrS
	 4V/pNrmJwy03w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D14C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965666278.3617.16025669582290094798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769d4debf4f9dde4d5a7bf4b45fd1b2adfa61df7a1e0707950c9ea1db114c637
Date: Sat, 29 Jun 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719656662
