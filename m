Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1628D2E92B4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757534394; cv=none; b=oq97a9/fIyjKt88tBPDtKnrzHBtE4XxTy4KQCFOdlWj8J7QwqTLgOdkLooKXS5DYeIUIkjF1V3MrvhzRaNMSyNVzZUJVL7aGmdi2yM3KqH7XoLggaTk2c+B0U+cP5k01EpJnJ+0x7i5mHbTkrVh5jT/66bYNdFI2g7RG8GgYlpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757534394; c=relaxed/simple;
	bh=xGA+yKs3CW2Uzl339zC81A5vV6hlhIvUZvzOYL0V6l4=;
	h=To:Subject:From:Message-Id:Date; b=rh8WnEDq2xo4zHAE3Ul/Iy8f8YafUr+nBAgpO1tWqqWyn1TTmI53+9BS2sYWzYePotniKQyV3AqANB8ZJ2TAM8RVDuI+HLcrxCc7eJGxZ64WDW0gxZZoCc6dJrmoeoURuP8QEjqHrsYKeaQb+Tj+suStegX4JJE8KdwL6fe9RLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbK7Whdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbK7Whdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BB3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757534393;
	bh=xGA+yKs3CW2Uzl339zC81A5vV6hlhIvUZvzOYL0V6l4=;
	h=To:Subject:From:Date:From;
	b=BbK7WhdkM2p7P5IO5cStd/kJou/A4Mdy+VHtkVlb9hs/KeXQeHTzDOZMZW3kFlsVj
	 6K36IWKxrzZ3plVA02VqVogQuuRcNABctTzhbJOsQXSuuBPFqIeBl7O6dJ8D+y6416
	 BqmqZPrXHcT3XETWeo2dS9PH8Hu77sbqprbxnqvovzcU5ubrG2GP1hGRls/NjFZZfO
	 RoSG9eo7uzxu7FJDhqbwMbyEk3F052oSRL/D5zomSabg4DK9SxyQ+8y3SjB9mzY/r8
	 H4LeJjfiapqt+0ReWtBio2bkH1HF9wryxF5YmxSpZ5DnXT8CP6uJim291d1IoOtT00
	 36mLgVqFENzKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F704CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753439357.3036.9660623798435144884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c784dbb6159731d8f9b90627d34933d2d8e74d6fcf98bcfd743af1f72a29ad6
Date: Wed, 10 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757534393
