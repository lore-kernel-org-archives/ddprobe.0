Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4764B4414
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748151594; cv=none; b=h0/pPfzr4K8te/8Q2gtw9gn7f92DXY/FIsw5z1Xa8ls+uvlA9BLy+wScRZ87nDseTOsUsXFJ88vXNC62KkR0Ys6nIIlzS94Ab9Bqbgin2ZLWYfQL0q03oyWR9jYKlYFtGZOsxefMoiqN5um0CG4WA8PmXheTmPUFoBSy8N6sDeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748151594; c=relaxed/simple;
	bh=K7M/AUfEVU7WIricMps+CRviYkalmzTgedaFs4EH8oI=;
	h=To:Subject:From:Message-Id:Date; b=tLBACkiRGAQ2fbX4Y5lElQ88Wjg4WVVZhpf8QS0xzhHFb9XYRUvmvKzNdCpjKsgKUVBQQyTe04UAiBeo0HjGZKdZshz0g/gtVk+wNtY+xI0+LZlKFjutc+pVzjLBIqfWbNCv/8wcofSnZLvZ1tT12IZlOkC+p7Qh4pwBFteisxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2+EI6ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2+EI6ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9022C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748151593;
	bh=K7M/AUfEVU7WIricMps+CRviYkalmzTgedaFs4EH8oI=;
	h=To:Subject:From:Date:From;
	b=Y2+EI6ac7eg2s5k78lnOhXKS7PuRXjLWJ+gdLDNVC3AUMCce3KYgcUz6TmEMJNG1q
	 EW9929t3V6HI/s8qv8juY7iN1JStXUS7YYb6xXWeM/QrmFLn4GF08jfQWOXbQASLWZ
	 HR2oXbQjcKcd+BMkCsZJlR20B/EvFd1jpPNmzkBqF/xNNPEoyWUpVRWlZZBqZzC4U+
	 kn9zSezm/GpIsV07VywrGnGlqefM2eX+qnubpDCBVH6T2xgs1OfFcyXv7ox4PJGNMe
	 cZw5YbNpsfmaQSQOicAHAq6PwH6Ysgd8omW7PHOpQAvTdr7Gi/0dxBx4uMc46EGGRy
	 y6EFL7BXfJATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A78C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815159357.6582.18076309137767541686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dfa48c2f8605196deb198ee8629e36e9d78d4f9234fd4ccf1af1b4dad069767
Date: Sun, 25 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748151593
