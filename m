Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B183EA98
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747199994; cv=none; b=sYUouxrWVhkAxT2e9gIx5tEMixM6cYakuOC8uGLrB2XB/zq43rvsqv2ci65lYcLWFEGn9GI0HT+9YDZiO94Jr90FkdLYRJkZe6WeEGTrpzHMWpt1EedGWrdOE7et6y0CpKkocBSwWr1YztJNTzD0+kiqpXPGWgNGfIVhSwPvhIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747199994; c=relaxed/simple;
	bh=o2b/4T6V/a5foC5drQ6oocoq6+PKVk69bdegnDL6LSY=;
	h=To:Subject:From:Message-Id:Date; b=bvHL40hzbVYEboavgI0iNa+utPZSIV5OK1zBpen7YXjtjxVUzW5+CypOxhS+IEHdrssqZuyOILWV6JE7re53mx4IAgJo16Iozj3jNgufMesBbLTMtIJJEMqGRAVoAS1k1LYkZqcUkq/+dNUK+e1PXGjnFpZg3VVDOtJ6+ptbFdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NN79YdZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NN79YdZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC9BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747199993;
	bh=o2b/4T6V/a5foC5drQ6oocoq6+PKVk69bdegnDL6LSY=;
	h=To:Subject:From:Date:From;
	b=NN79YdZ10sH22zzpsR5EmW6LzXDYmLjfgh6IMCWBZhCGYqKLpM9CZ4zdywk9npgQY
	 1v6XCOhvV3N9cP/SnIauErKTHfU2IhkNn+xqUscEyjFXNpWnalr6odagv87o/5b4Ls
	 n/aiR1tOfwR5fd6bdbRR56l0bRFYZbBNLfI2aY6Az90cyCqSpQRIAT3htr3ScaWMYE
	 1oQkdUwxLRK4E5UQvV8dekrumIIhGdVtS+VwQEAL2ZT4kF2iurvCYhG8Xdj+roELlu
	 SBSpleyHEI0LZ94E9HSmYNs3SZiZGP77jKScVIkifQ27Io/UlXiWPC1/tizh3bRei6
	 XWM/93/JWBKmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12FC3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719999357.14949.3295366358744446483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cf2fb993014569674b758c494065ddb7fe7eb87152c89fd4dfc5721b4a73b3
Date: Wed, 14 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747199993
