Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F55F2F3C1F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780854274; cv=none; b=HY/6HS1CKJGuQa7XeZE4Xm+JxTpRMs2nfxPH2JMdEATueiJGttskANh5aCMvaqQG0y+Lze5KSifWPKuhZgZi/GUht5pV1PWkB5m7w9dOtFkQQWgp1Q/haO1xJqB7irW8wEATkxpYXBtb5D+mw1jA2c0b4w47rIwGnUzS2TYvSz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780854274; c=relaxed/simple;
	bh=4rsv8BCsPAzRg84om96hTR9ysopflANUAcOgdsarCrU=;
	h=To:Subject:From:Message-Id:Date; b=Z4SvjRbmS9f06gD6kDDzH/yYWUUYUziONvHewFzh9tuThRRUi/JKJ5+DHCrI84CGMi5EZTNc4yLtIe91xh6L6lzHR68jqvjMMJFyhtly5E5sr20RwaEynwcOoqxT3psOuvzWVsIR8xSl9kXQbuiJdEBqrRvIT/oIg4kw/8vFDmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3bgMBhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3bgMBhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C628FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780854273;
	bh=4rsv8BCsPAzRg84om96hTR9ysopflANUAcOgdsarCrU=;
	h=To:Subject:From:Date:From;
	b=Y3bgMBhhTiWYGX+a9ktQpPyknu9y8H6LjALIY64cXkM7gz0yedbQDVLBwqyEO0Ubu
	 /DZetIedXpVuaP7SOr9K9yCFCV7gFMU3/ePhFeU+xFJjSD6kZxseD9FrBY8eI8MuzT
	 Gl6zl1BLbCfpmHJORZi3x/EN5X5bB6gdRqLit+wH21yMr7DWH+sO3VxONIgpB9AUoY
	 aWgdF6qdpqinoi7GerHsvPNPKH10ti6ikJZxJHc12XfV+lB1VXj7jVpIRqaX4tFuAk
	 xugTsN/653I2yoSZ8T53olUhka2m7clo9Ioj92MddOpbkmEXNxcVLoUDO4M8LBtQdw
	 hDZIXSRJqZcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF66CD8C9D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085427369.2440.6646344674598907789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23337e63a8d51d5a0129d930799b4f54611893a350ba330ae1ae108ae7e385d5
Date: Sun, 07 Jun 2026 17:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780854273
