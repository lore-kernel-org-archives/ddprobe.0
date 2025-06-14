Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349951F1531
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749901194; cv=none; b=nEaR5b42pZi6C4TNtmBOcXVOuvNnWed3U6AZGuZYsC9fYvfSzSFY+Ze0aM7I2MkzZOJ7q3HqRoqoUBtRMXAPdPN7xEpUONqlQhBUPduAeVsTcpoLUOWlZho6KIOL2eXdf26ieYQgHyivV0zxpiuLEsNm+cYKeIRWER+GVg/hoJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749901194; c=relaxed/simple;
	bh=xQzNKtaOoN4WSIrUJBxs/Ag0A9ecLd8ThD/bW27UpdE=;
	h=To:Subject:From:Message-Id:Date; b=ImoasIjwkxTKEo7UsAQg570ryd44NC7RnvQ224HyBwAPPdKkQh39ySvJoZR3WBYpwru+PWCmFU2nP0s7etN6baBQRrNUQddwOiTdk7/dvpBFiy400UtwpCINZrHXRRtNh5dQj0LYkjPgskEmBm4uz//wnB1Yp7upHd5scW1g6/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGBGZHmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGBGZHmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6335C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749901193;
	bh=xQzNKtaOoN4WSIrUJBxs/Ag0A9ecLd8ThD/bW27UpdE=;
	h=To:Subject:From:Date:From;
	b=NGBGZHmkYx3uZYOzgsMiQQiX9dNQxRibaPW+8J9TvAauoChjQZwSReyvMzKro9Auw
	 HVlWfdugFXlR0JJpt8oZJxjt0FOenKg77i36pHhetlXs1s8u1mJMIMDsHmhJPUT4zD
	 IOeEEpRzWhy+/gv4ygXAsBHUctuCXGVon6Kdwe5zPv91p3UvFWtYRYRRKfS5zM37m9
	 6Zvez+ujCYLxFEW8DEBMqV/4//siXjvopcILZaF98l9nck90mmgtz9KmuIjHDCgH74
	 Y8BxNXDraQzRLSkb3gB+ypyBaWzNbKJkYtd6iBYVjfBXxHJDXEc6NSHDu2qLKUvoeh
	 1YIgGluHGtL0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E2DC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990119358.29546.13520779553236179624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94329b1db8cbca7a376f0d7df64af5bb37dc65740e6f5492262edb1a7c5cbac
Date: Sat, 14 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749901193
