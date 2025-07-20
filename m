Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB7981732
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753032594; cv=none; b=ignFdDSAOf5yIylszB5VpW8SIS2Jsy83vKlWxhWorgrotjzw1B/mYBSjDNprn1CCBLIeMNhww45xJWgUbc0KTYWzp9OSToR6NDg2RECoRqbTrpsyY9n818pH9axOVPm241Hk0dVvEAkLHfdm0kgiHoOwuXkuw7UB8BHbF22ALYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753032594; c=relaxed/simple;
	bh=+GZ/yEr1zFfwkWaKhDxma2hWccLq5wcASrq97K6COmY=;
	h=To:Subject:From:Message-Id:Date; b=oKZ5lHwMjoPCjjqZWqrlWYDHA5NbwUcTtc+QiRzry9m9UArZFKtkMiL4gEBl8JiWZAS1QlGl5ggM9evi7w1IlIVWZM+oQP+SYylOOZ8Y6tySEtEbzKbomi1Amw4T2uNovW4PSRK8Me2dvg+3r6Lh8t3xIL/OkEhO9yh0GOFw4Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhI62HJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhI62HJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC97CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753032593;
	bh=+GZ/yEr1zFfwkWaKhDxma2hWccLq5wcASrq97K6COmY=;
	h=To:Subject:From:Date:From;
	b=dhI62HJFBUqTtiSqphnY6Q8Zqks3WKYIM8xgX6SVhh6n+8YnWrNykHVRLUSDYAurM
	 O17N1NIxukhqWzZIBBisREqxQlB/EWY7RCxNaToNdymNI/NG/+umemnLMb7QPnZhcQ
	 mrdNnRb0nQKbAiT1AiPWQZ1Yk/dPxav8Cc0f6p9y0AwqpSJrcC6YO0l3vGbAK20kwa
	 xX0udDLnxzzJm/Zr3gyMOuIGZxb6+Kdzbi03Ul8LqyFzjRgvAVT4Z8mH+t9CAZfJOS
	 7er2Q/46+V09cpgJTIVOZb9Uy/eXRoHNFJvwYHldlRu+glh6l3iNkKgYwrfzysLjYN
	 mwry8mjZCSwdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FF1C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303259359.23556.16838186250063297725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112ab69e312cf153fd6363bceb03a3c5a98706d5fd0100377ba7105d330cdc3a
Date: Sun, 20 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753032593
