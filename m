Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F2B14291D
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711548496; cv=none; b=thRP2sTYJyKqZxPSOqzteQJHURPkZEIoc+idf61Kr2poUDMoXrCSMX6K7E0QVjYx5NIVhy4uZ4f8rQGy31ilNSiSq0mkCggtof1zU6VLsibJfMKEutJM06WZzQkzx4fprtpO+UCUFv/TH7b37FORWAjQgSoZrfyudYi1RA+FaGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711548496; c=relaxed/simple;
	bh=L56yKfvE7JC34gtvzLDcYr6R07SVHaOWwwqGl9KxQhs=;
	h=To:Subject:From:Message-Id:Date; b=oVzW5Ea0/laNDw8QlTclK9XOVzYmGjwU5PKeleZT8wzWKN2NuOaWPsz7jYa6z6tJJv0aZywjGk5MeaGBjNFRZXcmMWep309DBGUb9IdC20H657Jp8pMdgGClm9mEdghLbcziTTYacwocQYXFhvkj0quowgMzME0F8o5sRcDrZ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5Ocivfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5Ocivfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80557C43390
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711548496;
	bh=L56yKfvE7JC34gtvzLDcYr6R07SVHaOWwwqGl9KxQhs=;
	h=To:Subject:From:Date:From;
	b=X5Ocivfxc+aC3YE0cGfj4+IVkD9bAJcU41Lz0FM1qAzmqIuASxl952oqbxlppHJrX
	 qXCj6ZyYuE343Yaqw1/ok1kUL3oJZ1uVfXEB7z2Yve8bsxfAYdFN7t9Iz338QW0w+Q
	 GyXx0bh7rPRG/jc26Mtzsm2LtYi+QqygRj4SfAFYaW81L2Hj1XUPm8I/a+LY6FsVDN
	 Ida4nOC69IGXMqtLjCpkwLsCiLXfP6RKgPSHa4/f+o21zklquXoLvYq1icRm4dxINR
	 hPY4dV6GM2VXcDH5HMKXyqx8/iHMJ9IsfU26X9a/eXOqwkgcsu9N2pSwu8uOWzBv7d
	 hi5YAvYHgLa/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADA9C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171154849642.4814.17158620127598299709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9296f9a547e891eb8573c87e0e724ad1b26263f65a1a032e2da8baa993fbaf0
Date: Wed, 27 Mar 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711548496
