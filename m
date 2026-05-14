Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272E32EDD6B
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778776234; cv=none; b=cujEqLB8hZ1MDLDMIBPjzkgwok6Xw58Jm7TKl1sZEiKnUCm1fLt5A9H87pvFF9ESlrPNjc1El51n8tg+FSOznI0IlqBYWcPHVjo8JYfAB63Xccu6LTQc3mi5MWIzfcQWEKCJg07PZGW6zG0U6q5wd+D3pUgJ15jR345Fw+643TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778776234; c=relaxed/simple;
	bh=4PoL9fN8SXoTnkoXCGtfwun19WSWR476bXrbN2wBtsg=;
	h=To:Subject:From:Message-Id:Date; b=ONlTpAIhHKANBiB803ryJpPOHuzbB37uY8RYqS/K3wvBUw5iesf4icKJGckgnEpNDYKz63TCeffAfKbMOE4X2rM5oemFNMaS6SZVqms3Qq12i38zA7CvhNOSleMNpPX5H3PT9PAwfiUiR4wJVVI6wqI7CqBS6H/swgsqL6GiBI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VigLcZjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VigLcZjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94BBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778776233;
	bh=4PoL9fN8SXoTnkoXCGtfwun19WSWR476bXrbN2wBtsg=;
	h=To:Subject:From:Date:From;
	b=VigLcZjBDRskgGcv+T0vor5rYum3FOU69JUglNE/ZxJEGWBZt6zCbQxThsoL0k5U6
	 +sIgaIK0XT4XMCFLqkTSC6/aOkeTJM6Ctxu0+GMUYpMJQIoURi0cBlKB0uQ1euSp4T
	 zFWedX+FKQbj7zcTX3Wnaq4TbrhvDMgjTTShsMBIG4O6IYmzgXnWzQ4MDnZS7bafUX
	 KTjbNR/U8WK5rUvb6qa9u7+BkJoxWpqZ797pyl5t7FnoDMFoVw72YdsK6Qr9o5tmLz
	 0TwkoxPtEVK+MMq5UphyiS0GUSr9uhcCv19UgPjpy6XcU9bM+BvhAYe/54P4M+zXiM
	 lnWIKxqznyULw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA145CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877623368.14720.9732621614739004869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51db585bf36c6c2f7fcc454a5f1460c1d4716ae9e3e0a5b66b6d80799990643c
Date: Thu, 14 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778776233
