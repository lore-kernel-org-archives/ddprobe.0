Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0AA14EC7E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720527383; cv=none; b=Y9HZOG6+Pvbp57SsJP073HshqDXaZb6d1lDX5Ztf2SjrvloAQnC1pciTaY3gLW1r2vEjkC+BGlMG3emhslBjA2eWMuTHy+fDollZYqg7hv7D2RsYNl26gQefRnCAe0UWrqRgW7vAN3qCenqtmEDGtMGXe6Y3/PAd6egg30iOwxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720527383; c=relaxed/simple;
	bh=Hhzqmvg4B6+t198LBWWXhVKoBqE9Uk70eELsEymM6HI=;
	h=To:Subject:From:Message-Id:Date; b=t+3hVwsKkG92wc1JUUXen4aQHiENlL80cqvgUFMKxjjr5ejnxc4NvLQ5F0BQU7ADFaBxHnh4QwAosAkUaKWC86QloC93up/ZgQ0aUKOvnNA9toQKapDlIA7g/MMDuWjXcDxSnzjX5kK9rG6GhZRqFpnMfjbv/FJ90m3Ks9WnuCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnaeVKsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnaeVKsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1934C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720527382;
	bh=Hhzqmvg4B6+t198LBWWXhVKoBqE9Uk70eELsEymM6HI=;
	h=To:Subject:From:Date:From;
	b=PnaeVKshT4G56HxjWM4QigX2wrlfK3Sy+lWq0FL1EyC1AP/zz9blx7jgSZyZznJ51
	 IerfS4hMQgYRzVdDKNxXl287q3oYcpT6o7GrpCEiZsH17qlcQkKNBn1iGV7KI9hE7g
	 YU/YsQMkv3Ha4J8pHn78An2jy+gnU4UStQ0I2QkCdqgYBApYjzjE421WN3obJFz/c5
	 djsmlLaVZMxTpc5FlLKzDnVSghQssHHQHK6QoFUOc4/W1Ieslpg3Bjf4BGQowIMYE3
	 uK8TI91LNCoIoP9zknAARrC7+pY0HbP/PdX9hJhhIucnPEzzJRVf1p9mLXXpKyawDt
	 BFZo+b6j6GOug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C64C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052738276.18671.12706189220642932934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c132b38a0690ada0f43c0b8e267eb27bf913ca9dc7806795a10cdebbfea0ef20
Date: Tue, 09 Jul 2024 12:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720527382
