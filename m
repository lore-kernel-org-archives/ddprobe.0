Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429492114
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719972923; cv=none; b=YFYWkt3kmErpFHlpkHuBNw5AFm+agO+iefiJ0bjgLUUSMQP3cadgs+7FbDdvtE473YIc2FPQGysFw5IMW3BszeU0DcltZhZc0eSBNMaSJ8uaCPbawQREIQu7znmagcEZ2xUuK3l6GFWO5fHNDob9GtSglOlr0qsEmXjOME0+3m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719972923; c=relaxed/simple;
	bh=9ohazR/nIIRDAPR+ETKN7oU2V8K9LEirK/BKg1pYpmA=;
	h=To:Subject:From:Message-Id:Date; b=JCqvcaxe7j5W28CF0OofLY/3lQ7UijfO0XDx474JoZGOxbJInYaDS3vFHaBuynOA3jKNz8kvWac/oBYu6CrF0XfFl7CS07YpXCKDGwniv0Ue9hg0aY9DSjQHxRBETh/JzoKlfcDvGIHMWU2dr4gsFzHZpy4jW25yHr9hwgo6Lmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0NhX5iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0NhX5iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6FBC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719972922;
	bh=9ohazR/nIIRDAPR+ETKN7oU2V8K9LEirK/BKg1pYpmA=;
	h=To:Subject:From:Date:From;
	b=m0NhX5iP4CgZW0nCxECc9Gn5vLsAzkT6wpdcBfZvTwLEZUhNiH5wtEIhmH6MpEz4W
	 s1eBnuTr7qFC6svuxibtIoPd1Or7IKWI3GlB2m+G5TkIqb/BEu2bZy8q414yQb+UVI
	 +yrwCsjwSBvkpHLWeqhosOq8ok/uyfQliRJ0bhocQXVCzBFivZ6VnArve3V5t0W6pu
	 QHCSuULwJ/nYIgzhmYKlXsGfXCnDVJjLItqrNMgJHJKQVXa3zwc11p9RKACL/PO2Qm
	 o7Q+Qw6ZwzOmPZlJOs5vkYPprQEfVLzcWtKC9oOOyMgJRl2baPIptVq2kwEM8KyuDy
	 AnLFzcMMMxKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5E6C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997292276.2251.4855284387803573950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5e859df0ca408639cf6d890ffd201b569900f31e6e5371986f1e548c829011
Date: Wed, 03 Jul 2024 02:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719972922
