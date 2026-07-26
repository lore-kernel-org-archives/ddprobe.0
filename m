Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E073A1DB
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785061834; cv=none; b=I9eM9/mC0ZRAH/w/qSXN9aNgvo5TIK4/G+D0dsh2uNo/rSqTfRSvp2pXPQBDZbKng+mlqPHk7mZxPGG+zflZPgPp7M0hQ52atkViyFI1mAfX6EGn18DeOuepwXQ5DJkSHm4Ls/GZpaB1doYqt6vKIxq8qpqSr43BUJ4MzQXzWbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785061834; c=relaxed/simple;
	bh=XaBA3te2EBMBpWwj/XV4kAYvaOhrGbi3YdmzK7z52Ic=;
	h=To:Subject:From:Message-Id:Date; b=rxp627x+FU3Mt1byTtuYNTPs+wLF14eABALMNGpx0bhMCs5mwtIqukH1LdY2ocnV5aVs4JPVM2tp/s73hvkpDuGU3zs3mDbXCtSWwQHbQSTssPjaDHtgTWxzR/bimppaTr0Hd9VUG61ziSQnKA77uZt3ZyRb+s1Nn+JmuMUVyDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hC4ne97d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hC4ne97d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2790C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785061833;
	bh=XaBA3te2EBMBpWwj/XV4kAYvaOhrGbi3YdmzK7z52Ic=;
	h=To:Subject:From:Date:From;
	b=hC4ne97dyW982TpprycZmLWIL+b+mqGK3J3ASIuKgLBzdy7gtanqb2PUz7fQU4it7
	 GZ+qjnvocdEamO/Bpl8QVKmnlBun7/ucE2AMK+EozUpKNlX2++sUOx/A0+ZwGkt8MT
	 vTvCj3i3rMsmVK6NOr+fmhO1ohrAHVT2NsXZiqZUcjZ1ojBP+lPWTWJWA6KWJH6hZl
	 S1uZFoXbvrRI+C6zT6O5di7z+qxDE2pzLMQ0kxgkwNypqV/pVoyLl3+McFIpSubKu/
	 LLNw1PYkk1ZssBGrr0InSU+UDY8v6gafWQ6znBl4Qu0KbsG2lN+0XNr1ohYG6e5PGg
	 9OQsYonbwPvww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCBEC531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506183368.27282.10892535122625747281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5070e9425770e3bce0cfd15ec7ecc6b6e78602d780c303474d677349269965
Date: Sun, 26 Jul 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785061833
