Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164868F6A
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728530154; cv=none; b=oGz3Fp8h4JsdZlduqoAEyRhIW2Lx8tLfFzWxsaU+I9VylscDk/iGBQooakKYpL1BAd9WORWTbcGe8ihKVv5Mm697VvNJseBdb8rkl/Acr5nktDbYI1WEIZ3kp2q9ZRmCYytMvCM6AIcHPxK99wVgtleFE5RW2QB4ESpDjxeA/WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728530154; c=relaxed/simple;
	bh=o9z+WDZEsvyW2OFTxB14XBbLWAJ6A/2Zf7NJHmtZanQ=;
	h=To:Subject:From:Message-Id:Date; b=CG0qFJqH9dy7eFgzEW2E1YxD5oJPlnDvtfrf1BrqfHzEA1O7gmiHtj41kQl9g8kSXozXWrgN64vn5dkg+8Vl3BqJHDEXE6rJHljpfCwmgbczDi4bdS5ZSE8jikSBreairYNyXJ/VRqjMTUerIv0t4Ym/AS9cjgaqNR795A0FKmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6Bl3pnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6Bl3pnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1214C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728530153;
	bh=o9z+WDZEsvyW2OFTxB14XBbLWAJ6A/2Zf7NJHmtZanQ=;
	h=To:Subject:From:Date:From;
	b=I6Bl3pnM4X6Vk06NHc52GzQIkKhHGvK8Dqbg6RIWxL3ZbWJuRH8CObxQzvB7jAWsD
	 OqHGmQmwbn6UA0rZ8Jysn8IcKM6/zr7I9UBipCoU0BO5QJfzH3imm5wovVG/thA6vG
	 +V/BVD3JyALcqDvMzP0XqPLN2SZRWUbeTJWXDZ4kwk7lPHP+KviFrCPrS4KZbUbVPv
	 H+I170PUvvvPlK03MbYE3FKbERr8AbVqKyOm4EyKw59k/6Hiiec9vBTWrm7wVnoMnp
	 1eKsUuSG0NjItyS25NqRvzSRvI97jh9xMzn0DwcWzO10I0QKaXJq+2qGYMhNjiydpa
	 1GnUt2wPkeA1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E30FCEDDB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172853015359.3033.10978330245286301024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7bdd0b4e90c5caa0b18100f375a12f3fbf144a9d0ea0991a484da06dc44d18
Date: Thu, 10 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728530153
