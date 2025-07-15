Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7407725CC7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752582594; cv=none; b=h/kh6F1MJtdW2v/3VDztQA/SX+5x5b0R/G02bP+IPxtQqYxXn2cGhGij9zp5tXpyUYtpux7swpaGqOPKh4ty/rxfyJMMX1a+OXorc9fqTtvXs0aJZUXR7oG6VWAJ+08ALj104Je4Uwq4LLy/2jg/5fX9CIoKc6g0vjwz3Z4syLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752582594; c=relaxed/simple;
	bh=aZ7bdJLSTCcy6ergNZRjc0DAL8w1k44P1ytbdcO7kVc=;
	h=To:Subject:From:Message-Id:Date; b=HaUysnNxnXLXXh6YYiF+DNxAWDUsa7yEz5v0VQw3lOQupGcCOmgGO0L+T19vHahlP9v/g9vVIbqjix12PPbsGL8XePCY1lxPbifkHO6h5EdyOilBHQscwfXSc05kauRjBraWzqQzVwAdlyzL+1sw3kmtW3lGPhj452pxZnHrCwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbvHPbiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbvHPbiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E723C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752582593;
	bh=aZ7bdJLSTCcy6ergNZRjc0DAL8w1k44P1ytbdcO7kVc=;
	h=To:Subject:From:Date:From;
	b=LbvHPbiYHwyRnfvaPhxV3Ez8b/HS7qoVz/1pkK2Ge5wWvCHTDLsGkMeL6Ef7irhNx
	 9icxW7rXgIHwU1t0ARg08xWJnK4YPVX68FxOP7gtJwZkmfqYrm352dgoQWVVis2uyb
	 yFNjPdvpGjRsbM/OeIWmXVyqXCZboXMq4/0SZyQbV9sb/Yp2aqbvgZkkWC1jG9th7A
	 7qwrRhuuBYKQrNT+To5HyAh7qkViag951BtSzk62uudMcQgQ1t0RB/uUdNk5O+5qLN
	 Su39541nlHyCYt04/qJW3cuvae/XebOt2OLisd3TbspOh3mMJUfrXJd9487oCNjjGY
	 9s+xnvFuDze8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBFC83F21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258259357.29757.2621117591279583756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762f90ae671d3dffdc332ee8639c310c144816aead987f722e37ec83d60277cc
Date: Tue, 15 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752582593
