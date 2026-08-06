Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AB71B87C0
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785986434; cv=none; b=E8EEdroC8vc6aJe9J54vZoiNzu2563YbV5Qy6IiRE96E2vjwDRaOplXiV5nOcRolRdvDcLhkdKMocOyz9Ka9uJpMiF25mcLkeq7IzruNA1tOMB0ZiLzlZjL+GiU1+H56rkVrC4Zv2fqYeixf4IBv+J35cukePlqxb1UYjCwmNhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785986434; c=relaxed/simple;
	bh=qEktB4AIcEJ1p+770KhKhvJeT4wFzhmpmMwJNkPXslc=;
	h=To:Subject:From:Message-Id:Date; b=Pd/kVGk0L5ctjtPFwEjR/yIab9odBAZId5PUH8GsnZb+zO3Yqrjp7TB/4gqnvShFaMDvijBN8cBb2eMNdWIWy0Bp/yVKRkSg7kGQgdEIDFCEXQsuh3XzH0wqhJYyAt5Jof4l+Sts4bvgd7DyiUhl6sOV8g8ChopljhBX4frxLe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DX7xMp84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DX7xMp84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62F0C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785986433;
	bh=qEktB4AIcEJ1p+770KhKhvJeT4wFzhmpmMwJNkPXslc=;
	h=To:Subject:From:Date:From;
	b=DX7xMp84P02JzopWX+E8PBO8LDe73s1O0SdwKdjDNzEYD/HPeEXAyElt433aBc0Z/
	 3eKHIJ6dymnut6t004gaJF1CRnrvpjb+rIz3leX7EbHeEUAEUydXfwNDLauE0rP4ml
	 wxr4QrS/r/Q5PmIRecBXaLB5nrT9UUqO8Um0UTV/OfZ3fi+ov/ghIPHuprZdByH20W
	 le1m23RR8kKSteTyjwoxup1B6fjeaef4CzQg09lPlgFKCIBpaS18gspvpXs9K4dxtl
	 su6Xt1BmAzXBRMv/Z2kMeNUX6zdVvp3/Yeem/GYh4TJrN8b5YUw7jgIt4N12iWH4xB
	 XM+HaDfXWskbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3338C55ABA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598643372.9282.5716158326117673229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7cef66e436a6deab0d957ea84996874a88487c55aa3c82c37fff51392f566cd
Date: Thu, 06 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785986433
