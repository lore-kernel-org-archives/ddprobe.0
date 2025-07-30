Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F98E1F37C5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753906795; cv=none; b=XhxrKacx7Y6dYw3IKm/BuAhi/9dvQebA9ejZPXc6dawwVhJ+ghLpYTAvZFNrxXBee6N+7ad91xjo8TXz5KQpOay7p+L3CGLaJqvhjnjnYdEUy1uGU+Dw0oqAE3cGkA5Y6bs3+detBYVWBvlZtLKmnI/FuE/Iy2tqnGkEaq/ykv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753906795; c=relaxed/simple;
	bh=8l50NknrJomUvQm763Kezu99B5EkE8X6YOSCW9Q5hLY=;
	h=To:Subject:From:Message-Id:Date; b=Uk9555mXGksfnFA0yKn1zYR+V8ZGnf9MiSKj5o+MS7DxPX9nmFt+y4BmlFSxz/Nbbu5ISu3V3J5++7CmGBP5z2cUgapGG7uDgoHJT+J/UkK2aAtIxoXNjTwPKGSzF1/fJ7tAztGEeDAd2hEQt24+e5cqk/nB/HGJ2WlWXgca3QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE35sZ1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE35sZ1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FD0C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753906793;
	bh=8l50NknrJomUvQm763Kezu99B5EkE8X6YOSCW9Q5hLY=;
	h=To:Subject:From:Date:From;
	b=lE35sZ1uYCVkSXYVAa1rO9HMEve7lTEqhJONGytJg4lXYEIEUHtgGJb4K/klT3u/2
	 BPLfS36d1DnmaiIgDfNu84h/auEli08yft2D33hByiVLFLFSyyaedbTr+HSGSIAqzE
	 A0ZpZYs1G+I2W3x6QG5tmkBzz9fDPt7WV3GbEaU1k+6kaWpL9aKyJGzSUxQ5yTO5g7
	 b64qtqRqgDbMPV+uR0c+knd6F3hBjZt/xcRx9kBNsGFLsiuXxhTvIGI+yC4keSKm3M
	 K2g9R0PWHItqmeYEBwH61/rNo0PovE7LnRARZv+WYKpEDTt4SKODaCEAHy39qswW0O
	 8PlFoYgRK05aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BF5C83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390679365.11369.9398289737377423534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f576e59118afb39abdde1f2de06d9b187862bfa36ff01ee5c09ba103c61d9b
Date: Wed, 30 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753906793
