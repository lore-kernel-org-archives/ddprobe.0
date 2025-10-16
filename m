Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F562248B0
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760637594; cv=none; b=oJ7/hnF+9vTGRTu4bKlLU1q3Ftqka4e22mY3jVgmqFbtHsS8se6FuS0YyZJs4ZoDCyQaL3A+jfQduYFT4jeBj3W+1juSm1OX7Zfhs5T533ZawRuEbWvcbenJgGilLoVQLC9bmM89fxOw18edCs2geFSdjmRuewR/T6uZqMyHr/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760637594; c=relaxed/simple;
	bh=5pSBwxAqIPGnlsfiKAzmA+/z3Xw1XW6yQLY3CKA+7Ic=;
	h=To:Subject:From:Message-Id:Date; b=VBC5MA5akz3g416nCVyxx2Pr4zRRwqg5dEYn1KEcoPbYF+K/qveJZleTNZi8DdHKnmV3I+8ZFAaUz8eptj2G86SeYl9b9YM8C5fE677bboF17ZMZBSSxs3FAOk5RypuNiyxlHtUg30QY160tZ7QL4Sw2KyFkGc76GU6626eo+Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACJmg21V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACJmg21V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A347CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760637593;
	bh=5pSBwxAqIPGnlsfiKAzmA+/z3Xw1XW6yQLY3CKA+7Ic=;
	h=To:Subject:From:Date:From;
	b=ACJmg21V1S/QOx+2zk52bSdpJdBX10PWKBTVHgS8UH7buDxLvpHpX2T42dhPehAb+
	 XsUmKRFHi1JywJECO6XY+B9wYmw25znZeK3x9i6PqqeojXHYtcSKAQ5plYdloHAxeB
	 1N3ISuvOJpvNPVybAChF4YWufP4EhakgYahBaKs+qJGQoU0dwfT6rxvXt0omhVIUAX
	 +L7LyIRoJRyp8GOj2xU9KI+BEovoem+HfntzToSTp9iKXoOBia9bTycboprnmYlXtd
	 3bL9OFGzUWqC5w1mY1gEfr2RoZe7u+Z0VyobdRp/a9CFUsy3RDZQPK6DuHsQivmWsJ
	 B0rdsgCii5LzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91870CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063759357.4446.2033655566704460200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cdd9a3e4cac9848ffaa14288cc736a8846c2d608a84367170bdbf0f006c7616
Date: Thu, 16 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760637593
