Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C2C48551A
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787845234; cv=none; b=sw0eZzx43GMYuVemSPhCwRZ5g0PkMXp9uF+gpAuHrkFEeSRw4hSEZ0p4rej6fc8D1wX45UJNnXr9nSingA1dhsKIdSWY09xjgyKck0ftcpnpi+2SvbPdECFCiiJaMXn4wxkCM+6vnpwtfPkl1mE+gqCYS5QtSxM/FmjokaYZNW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787845234; c=relaxed/simple;
	bh=wJ4dyDKo72btaqY8pwXwiR2bNdVaVzO3pilr7wpatng=;
	h=To:Subject:From:Message-Id:Date; b=GdHQLmeXJNSkAb5avlDkcfRW4L34lgqnp8YvdMEYJ86tBh9g6wU2d9xkJyRX8Gyq9ZIupQuyzOgc5l41XywzsVPCRsOz9ygWSXX41bvY7HZ6x7QXFb8GH7PRyAJ37ySb0ip54dhc+pLlUQF3SJVSLY7AzT5VZKauJmNyOIOkQQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6Y7A3jS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6Y7A3jS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB72C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787845233;
	bh=wJ4dyDKo72btaqY8pwXwiR2bNdVaVzO3pilr7wpatng=;
	h=To:Subject:From:Date:From;
	b=a6Y7A3jSYeyf1o8NODhNbGEGYRNm5eLbFB8agnSx+NXBzISIESVC9E9zSyo/2ptGN
	 Ki2hDAHvQI9vMukfuRKFootNsGibgpSXW7LW2zBxlVOnPuLUqRNWKr9ydpt5UZuvVc
	 sWxxnnPhl/lEDuBH8L4E/hl/b5jHKlWC2c8J3c3tvKouS4g6kWEHDJKdJGJuktuzFa
	 TBVuDkThLYyYt0dNDzJ3H721HvOs7aMmkKWDjTsGD7MpXnUMWf6ob+jjMt6SpryypS
	 04UzvPptZ5QOO8HSrBKDc3yB+kzNN7G596DrTeG+B2tFfquy8nlEPYZfr6QnbykC70
	 9/zM+fSXTYadw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB721C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784523369.30264.17519943445966101682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed64b855c72eef075a3cf2884a09e0cc8ed619a35120c9059520ca7a2522b1c
Date: Thu, 27 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787845233
