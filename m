Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54462F508B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752664193; cv=none; b=Xma2FLszoR8ETiPjWcFFqF70EBREZbZz3ZTCCF9L8P/h6yN81gWpBzp2lmyXHehyQR4rSsBksXdXlu62ByS1jmgK3qFYx875PF+MVlyV5aGrNZGzQyiMfh6UwWLHvv6NrgW5yUw5c4GiIJUy/dpIOhi+xSb5i65XadWstAFt3No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752664193; c=relaxed/simple;
	bh=SSRTDIDWWPtQLNOo7Vg0C+VjeH+ZqLz7aUVTAJhAP1Y=;
	h=To:Subject:From:Message-Id:Date; b=FJZ1/cFBI8KJSBuaX0C7e0ZbPCcWWI/862oit7e/8fRuHCP3BwIaoham2jBU1j1qRayMMKML/T8lL6AQrLa+axWTFxFnj7nJDh36rPBALCWV6tY8yasJI6Sy07SkcBFgq9zdDGMDlznjSty9u8iWedSANq2Tk91fkBAUt3FyGNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLBNWNQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLBNWNQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D66EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752664193;
	bh=SSRTDIDWWPtQLNOo7Vg0C+VjeH+ZqLz7aUVTAJhAP1Y=;
	h=To:Subject:From:Date:From;
	b=nLBNWNQwcKynICn2Wwe0wlQlIwCwapu4Xm5mGxkwtczx1YWqUp/TDXGGpUUGcM2yG
	 MCaL8N95J4KFro1D1ZgplQGD5dpZkE2jd4oQ+JTNjpWxsF2pDKIdIVje6K34IWdDFF
	 1cZ8wsTtg8AeSe7x72p5Lc7a8j1D+9vrm+FoGAnb9xemFBgyHbShnR+vnSyHQE3Rsj
	 KjZoLTs7m246d9ASbailbtHucLmZgA4V92UqjhweW3Dyh9us0giPD4uqozcNxEUbIP
	 OY9ZFv/jGgAJVZ1jBu7L8UypJAYtrtryq14eaEFAwy/Iig+Y2xI7lJNdrmoonc0P1z
	 AhxDMlUKsH08g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FDC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266419357.8653.14296494781099752798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b240313cbc6f712d6d417165c786e572f4a5256ce3b4f56e5c035a997caa4c
Date: Wed, 16 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752664193
