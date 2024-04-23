Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ACE11B299
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713843023; cv=none; b=gv6jn15zP5mWMzOUhggt6qe0M5FKsQc+0XO7IjBfYvzZH8w3H7p9K9VdfxTMSHyqOk4LTHIk6Cg/2b8oHFJszf1AXfsakmjs+jGfi5RPDrYcPLayHcSxI3iBUBv2rwG99pUQmrHemLWBEdewGQRaHn02nxRAIc7DHEa/7AAps/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713843023; c=relaxed/simple;
	bh=ibbC8m8w6V/G65MJaivDX03dOdcLHqB1+7wIsjDy0rU=;
	h=To:Subject:From:Message-Id:Date; b=Vf7zBMNDXOl+aHmka+GSewcWK42Zwyol8lZzr3UrRFyuePgyxaV8yXOzJZ5dB8FkW27aGc6w8SKdgXC4f0/GYAmzv9uyipXgkID6kBy89W4DBVhGPq5HsWKN0uLHR1EFtW194dTdUCX7Yig6EpteEire5XUmKLvJUKVfRJu4c7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyGmf0/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyGmf0/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04FDC113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713843022;
	bh=ibbC8m8w6V/G65MJaivDX03dOdcLHqB1+7wIsjDy0rU=;
	h=To:Subject:From:Date:From;
	b=VyGmf0/+PpgvRa2dttn+Hoz6RiFxSrG9KIp+Pg5z06dkyiDKpQMoXcOuAabk2LXjx
	 X0R6vnPez1lakXKwiM+6kpqsL7UUFFZM32LDI6XRPrEUe+LhznKCyobAhXejuCgMkk
	 mzYvqxvd0h4lxOw/LGpPa+0sazM13Bz0JVYFF6b6emK0qWOYcArXNjz85dVPaFrw13
	 cU+DRTwZ9aC5IJOUpKSxBXuGd9qs2EVBj2AxywRRwCJ2OpdNxuPdnONt+VRfAs0GBR
	 jksYqAzhV5+zcwIKYFEEmDm/9Vfpm3lUIIzdz42T37STg8KpNlRfv3rBxPoR9FZN42
	 O9zJqr7OOhlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C935CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 03:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384302278.9876.16760667982682957739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b872fdee61a752dde0c7dd9e3def5b7bef2663ab7e2b97a1a151b47cd9453da5
Date: Tue, 23 Apr 2024 03:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713843022
