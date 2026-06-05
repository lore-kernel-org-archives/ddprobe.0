Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145C230C163
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780681474; cv=none; b=pWTfuHNQ2BZXe1f6xyAdu/e1NlToPYd5EFEO0fB3viiNhZsiQbg2D65g9kqgGJLfHlUQF1SKJgd6yNoHQGBnyMDk/dAd6+kxV9XNz4QMnwQ2TuM/0BtMIg2IVB627l01bY3egkkAHuOMSndeo8KRKuTtEwA92YXZN0qI2DtSIkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780681474; c=relaxed/simple;
	bh=IgsQ/dyhiIp8Y5rFDoEzn21BSR9InjrfJMK1WxfU6wI=;
	h=To:Subject:From:Message-Id:Date; b=XCmlqBHRUGlXqUyuI5PcRKUohXHAHU663+bJ1/P3hid/35dZ1CzvsuuOHQ+J5TGKDTjOBOTzr7l9oVTJwGg7GnCZDgsyLK53wC+CyaWPiCUqWQsYFg710exoYg3WvmL9wey/9zPYM+vf6lpUJM8o2jPnlTJPkRObRK2n2uom3C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCo/jH5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCo/jH5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD421C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780681473;
	bh=IgsQ/dyhiIp8Y5rFDoEzn21BSR9InjrfJMK1WxfU6wI=;
	h=To:Subject:From:Date:From;
	b=QCo/jH5ABB5xEpgzbzdi/G7YQ6+U60y7TE0khGuWGG2I2yGo3NTBDfg2nrNKGDJHn
	 0m0aBV5T7+16olCPFT//heEG3reZUij5EnoT1aMtDJ4DQ3nSEJjMbQfhpNGaE8UzBf
	 OLk2l4NY01phPz16LTP8SZ+KalU3qVl9LPwWWiKD5tr++w8PcwB1gCZuELyQhg/7Gs
	 Xy/zbx1CmEBUrUI9Bvawt0zrlPc7buqEFAkP0YeV9tzoYibo3g2CvmR3htsmOvlmDR
	 X0M1U+k98oUpoJhpSObh/jEpaZjwQj9EnojeYNOG4FS38/SEFP1VJv+lH1EozPOd1p
	 uYWDETcbA6w9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95BCCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068147374.31826.6631420393513037153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415c81c0cbc726bc40b2a6ca848ab001c01a999e9930e36bcbe1b9a1df6c3659
Date: Fri, 05 Jun 2026 17:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780681473
