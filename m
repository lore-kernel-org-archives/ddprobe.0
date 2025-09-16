Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C4823E229
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758010794; cv=none; b=An9f+FKxOGDEEKOIfzmqrXOfehXh4HzH7jr5RqwN/yESUnNnNsgGFUI2IjaW4EFbpacv1X8nFrQv//YRwU6DjGRlIVHplBpHHJrsiW7h5b4pCf70wIiBvzsNqxsgLKfFeLanTUhVjbSorv77wdSTsthT93ikrqKs9YJxJ45BqxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758010794; c=relaxed/simple;
	bh=lIKSfkAr9a9gWjpn6FO7zf+cbyu/0vHZXVPBy+RsfTQ=;
	h=To:Subject:From:Message-Id:Date; b=PfR76fv7NhVkLU+56N5YQhMwv8aOJyuKKrkTN8bHEhbcqQbXs1s9p3HVEeecp6OfvIm9oO9knCflyrzRa+mzjYxkTkbT9NVjatB9OqXpkLRQd4x4+HlyC0v8fuhnWp5DS4NAnQ+exUd01xsr6Rk058DZtS+0IfDCV2ld8iZYtgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHkwp+eC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHkwp+eC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B09C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758010793;
	bh=lIKSfkAr9a9gWjpn6FO7zf+cbyu/0vHZXVPBy+RsfTQ=;
	h=To:Subject:From:Date:From;
	b=GHkwp+eC9KRNwnMnPiQ4+4qr3dFbTMxygURLxyhczuLbPb1JPmM8OrZhalEVKL4O2
	 kvaTA1ctO9+5bqxKA1Kxqr3fvfo4uDbUOrBZro1Yd8HYMRw9DxqhGkom8qG4lQZEd2
	 vELVvrxFfNM94kxdi5TaanuBuSduBfINbbJJbLyELLkyUlFYj+HL98Jb0+VMFzaYpP
	 OGhS4LiC9pSQ9ZW0HiiqUc4CDROxCs+g5QnBWWeeQNr4WSBLiePR3vOcsL0Cr8A7wS
	 C2Vzf3+xWC0+2kdTiDpfSMsRv8MN9R7Cfugowz1aklGfhWD0kt8L+37mt9LzS1h/ff
	 kzLHqDNLm6zGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F1CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801079357.23057.5820362243723758350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb1d4bba6b374838e272d0202720ab1d4bf69080b802276b9464eaa30a02130
Date: Tue, 16 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758010793
