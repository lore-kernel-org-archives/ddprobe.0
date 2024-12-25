Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D041804E
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735109154; cv=none; b=RbH5t9ojpnwvvOHYULynLUX2mJp86ACxEIMzqriQ5o2pvN8372yfLZh9SpeSHriz6ctt7y/mgiUwVJ9wIeIlJHbPUYn+RJz+biTZWUf4dNx5oZiJXdn3k1Ha0uG0IIAB0deVO5br8flZYHFIZAi0CYQztC5fj8EfqO+1nX+zH/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735109154; c=relaxed/simple;
	bh=LF67NoGylWRXkV8yHnZ42TK+hgBHAQP9Ja9VO9C81II=;
	h=To:Subject:From:Message-Id:Date; b=d514WrN16hT9wK1EgrHhqKZaR7+P5P750UlKj+iyamN+rG4atkqZDcdCSnO1NNYOpDDp6mmMPyMlmEpSWHMv+udG03JPE7cjXaYA3QCzYTLTMNpEmcKVlBlVKiuovqzleB5bGRZbrxisTEobWUJNV0wXMxq90aihffIUa2/NawU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEKbNyds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEKbNyds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B99C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735109153;
	bh=LF67NoGylWRXkV8yHnZ42TK+hgBHAQP9Ja9VO9C81II=;
	h=To:Subject:From:Date:From;
	b=nEKbNydstdupbECbwY+QlEEMB4+BJGyiH+MkHsCqUlgUPAnCiOw1PgYaJkqeSVJGL
	 CNqPhUPIQDJbD4z/XPFz9/fvd+mywF2VYuBdQRIUQCXqg++Tl4LIuQnNbj4eVvgGtu
	 wAEmrxP9HfMOoQzfCc+2/Va5WbsFI/wwjlaHzhtgtlpZiD2zEMNleoGr8xxpGN+MoI
	 BiBw1hnTeRQLRJZFrYdnHJ0kmY97/BxD/gNHkCp8I22DytFLpR14pSjI6poyJ4sr9X
	 Di1CHxSJjYIe1oovZi3hL9+uPkqBQbYN/tozVHxOIsx77rjhpisdXvmQVyVTPXuPg2
	 4MU22UsTEYncA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96457E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173510915359.20646.14470352650525164582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88927013b578eac1a2d9ff40ad770dbcec77e67ca8a212035ad2419cded6919a
Date: Wed, 25 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735109153
