Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8379514267
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717228463; cv=none; b=mJX6iRzYPUV6cGmJkqCEpjf+5XkAKR4Hs/tRKKskwu2FQ6iP9d2fBVz2xFc2jp7hpIosPxVsNQ1SknPvDE0kCjSu2HHHL5a/Rp9uy96dxLbETtcAloSivMK3y18J+yj/i6AB6hdJ/2U9oz2Efgb0lb9SziZZEwI3ZQpv+CgUYDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717228463; c=relaxed/simple;
	bh=pNg9vHUqcYOk3oZ3wXEe4LXx7ZOdekecu/1dlSpOuPc=;
	h=To:Subject:From:Message-Id:Date; b=UWb7GiUUtMaw+kEh60R37OkLuS6qEk4cGp0qF/3N2zzQGhlRWA2qIFSRb4E07uzf22xzILJNKn2kKJHMmTjIYJrJuhPm202FOTZQph9DFhKgs5yu9q8EHCs+9zDLgNGKDW1/atsZTrUvJCz/BW+6VhaK1KS4ua2PytjNAmW3vrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eo6E90Z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eo6E90Z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E20EC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717228463;
	bh=pNg9vHUqcYOk3oZ3wXEe4LXx7ZOdekecu/1dlSpOuPc=;
	h=To:Subject:From:Date:From;
	b=Eo6E90Z2WtUzAolMN33MCFOkjkQM0kl7xdBTpzpFcQsGpNxrlJKLiTUq/Y8p1gQOD
	 DNhB4SEMhEnHk2ZrLFKIlEfFbcQMAMI4iKu2Y20JzICq9lCDiws1+hogI0J54mOGj9
	 LJnk0gqUutpzq61MC8+T7+gOsqXnZb7lpWAJ//ZkVuZ5Q01heQXSu7DailUM9QRyhE
	 CuENDFJlKvZGNF6ZXwkKtWAPANVyl05uCv1t99bZzYN452zYljuBQY5dvyZSIirVkA
	 IGbzlyvw1QRjAwrP5n4eZlFwqeeIPzsEcygnOEMF8OwUMs5cggcUAUWje1MSsTUQYU
	 h8M3zytJ7S3+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8A5CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722846289.317.7376953787657912734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c84db0e11d6da2f067558e52dd3db30322e616180c2f92d964de9efafe7b505
Date: Sat, 01 Jun 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717228462
