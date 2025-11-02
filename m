Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232FB22541B
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762052394; cv=none; b=RdRZ0abakXNG5OsSE7qtUPm0n8XJ1QbA7dN69UE4jK1aMeulQGJcqO1zg+byhgKIhbSw47pKimyInAH3o5VapeFbxF3nGKdXOSf9L/CHC7g8I19F7crvtrVhLh96W+FqNqpdfMZFgPqfNVhgWamh1FR/gNol2XXqtQdPVNA1L9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762052394; c=relaxed/simple;
	bh=3ItzIzqCZgL1gY8a/LjGdEnqVs2yucD+bT7v/Q5bZwY=;
	h=To:Subject:From:Message-Id:Date; b=EDpuQL0jTY4G6Rn3xkPVq3xsGuY8ZvIazCscVFKMKc42FCkBQKDiUCAYmA897+PnJMLYdtEGD/4pMLn8RYc6eMbo36m7S2JLrIuxrwx6kkK+q7x7KDzRH4rcCeAFddsX/jwljkcM+fbSk6S42HtK40GxJKbu3nuw4fgaRIouKe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CavQQlQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CavQQlQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80D7C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762052393;
	bh=3ItzIzqCZgL1gY8a/LjGdEnqVs2yucD+bT7v/Q5bZwY=;
	h=To:Subject:From:Date:From;
	b=CavQQlQnkBQa407FBulj1Mj2caCH1D53sH0Yj+QrjD49z8qRYt7AIyDwK04fj7U1q
	 3kp2espfhilFhSskFfj5E1G56xm6GhEhBJF/5egrrZa5GQfINl7Fbm0XFgb8ZzbrWe
	 lcwR4MWtARu2TuyRJOzl/11OCTiLDMsASHGsVH9ECUgOrfqGKYBXkSyEBqbSYbqVhA
	 zM2vr9JR2TkLM0iQdhkzgt0YEMkqEpIrtmG6hg0UOOht+DL9tDDLcYaurl8PqVAN7V
	 IUADw8+SU/gwluS64LzDQn/hZgNiwpJDC+LJ06UyoKrzpmKYnf+jdZIKnEwsJg2Wow
	 3hT4IkGXjn4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B34CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205239359.9884.9007517951741553161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f695af367fd4a2c8dd5d4c9adde520fb59a9d37a2e4cbe7cb60d01d34a7da03c
Date: Sun, 02 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762052393
