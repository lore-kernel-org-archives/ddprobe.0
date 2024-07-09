Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3398C12D210
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720520783; cv=none; b=jHrDeLCD9OwiHmBZXQ9z+7sraHfHINqH3fHzlYqrqvtSBSqzgbkGO0+hPz0XSLG+g5wNkEg03RxdBd4uVgjKKOhxuuwMXPa+5RC1c61hYnGYJs4nZsEI42/87+0LVr7BxcIKesoRJmhblbMuENaTdzEtvO/RMK/EcY6cwh9qggk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720520783; c=relaxed/simple;
	bh=lj0n/barSPSMkd6mSnfPzgHNZ5hZepPHvw9nBq8fE5o=;
	h=To:Subject:From:Message-Id:Date; b=T7aA1/ACPFVoS+OuW98lB7KP7RkK3FOpTTXIw6ezsaW/s0XT4zy7aDajGGrlEaqkE8bYGql/g1q0CQn/DEdKZGnosDmwdOzn3hftPGf0EyqRM1Y8g8M8t1TNaEHtHkSAYoqpwD+rXr/Z/IZsXVCk6s97JZslms4QWRVCmtYmSps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poc6AwFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poc6AwFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F74C32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720520782;
	bh=lj0n/barSPSMkd6mSnfPzgHNZ5hZepPHvw9nBq8fE5o=;
	h=To:Subject:From:Date:From;
	b=poc6AwFLx9Ylp4fbVJFAE2G6F27i3kiDcUSrQclfDQuRE9k1mO6p0k3/M7Hhdtmdg
	 EkQwUC3AcmPpa+5Jyc+3ySEWm2eX1FNL0vvn3modvllL/Q98sgFrdXqhi4QpqPCmws
	 3yHs5kEbqlnswjLJersG/Xay4ybJjEQ+3Y8zskG1gxtq3mqQxS9Z2QZwLZ2ZCqgQz9
	 Ir6TZC6ScYRnB9RORsi8utl45YNkOdSBs1JrTAumqSht5+gOr2bzpFa6n2jO+Skfvv
	 vBm+/oZBhm9hdCaUIe0GDBO4vIrkZfzUr6m2AsI4UwJ6n+xvKUT4z9g/CBb4/ALKQL
	 l5RKm6gM6Jbtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55D2C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052078279.18221.3525805989058060006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbda3108651750fb7da32774bb3b5f77091393145c2a27b9766ac5eff3def1d
Date: Tue, 09 Jul 2024 10:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720520782
