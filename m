Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6C13C2D
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786798834; cv=none; b=seCDGbZFoABpsyVw2DHWjylK+n3YpELwh71yS8ris+nW4SQwrnm1mSFzGS3XdRjqVC3tJ+YlscLkw9I9vQ9O2+EOax5Ft7fn6jZirU5dUDg7pBZMmDJmByfMeHCSPS1H3edbVzK6vLANUjMiXxUhSGyMXNN6nWjsEOlrE8umS9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786798834; c=relaxed/simple;
	bh=VhbwTf4edBymF4bK0pVLXz3zN8YmKESAyj+JM4LPW9I=;
	h=To:Subject:From:Message-Id:Date; b=lx7BPADW0DsH/p9+Lf+Ve9AkjIrpWN1l1NZWQlhRfNPAupQHKWVju9lIKTG35Nb6o2326i+DZ2w/SoLGQpENFXn9wuHynGYG9Blf6+8N6eqhkiRWt3Yy6YPxwvC85/nhdX7EK6TLq6UMPt1LwZc0rFmYp2mZGIMhbtYDdn0nIFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8rR8h1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8rR8h1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6646C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786798833;
	bh=VhbwTf4edBymF4bK0pVLXz3zN8YmKESAyj+JM4LPW9I=;
	h=To:Subject:From:Date:From;
	b=R8rR8h1aRso+C6160vJTQWpJPC/9KjaIFYH1gaKpX8i/Dg/Yd7Ghd9e92jlz7Rhrm
	 Z7bWxxlL1j7x+jwH/kWlWwdUroWfkHSfXK4hMKQZtUTOoUJHqFBgT+LSAT81Q0hUCE
	 4aKSA6svKmF78ZuIGH2lTOPhJSQYCwS6P+HCElb2npAaSWVatc0rLUw7MdK7I4uUfE
	 yBiB7pbUV/shthTm17cfc03daiPEDFRz2mchZIKz2AP3PozUrn/LUyfJAogVSxNCDX
	 GQiY6lo6uDlbAKzTYDZ4d8k8K59/uszlEG4wT+WdUgMIG002C8MxytNh5kfmFkuWts
	 4kiwjuNdR6C8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A2EC5DF6A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679883369.27975.15286725641503558217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2cebad684d9a5cb8e6c89edf2b8794b0118f08f6f3c668993a5ba4082d6376
Date: Sat, 15 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786798833
