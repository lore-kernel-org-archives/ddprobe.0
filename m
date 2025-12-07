Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24FC270552
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765126374; cv=none; b=bzuQ38XqBSCYSDDSoA3SLv22xuLr3K3t+luHSDlpigJmurDJ0zO6L88UT9K+1gqsxoBerA6iIYY0y6Vq1kKx3NqIohePTOIby1HOAYRbkCtJ8BLO6MA6goY961r+5PYR2b0YPOQ95HDuRp9iAPv0HULfUgyqplpUyC2+kV3SzBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765126374; c=relaxed/simple;
	bh=OZQ5Q7tw4Hbw310UT3mFdiSWSz0RMh3OVzpdJ9ldxXE=;
	h=To:Subject:From:Message-Id:Date; b=gC9kzioSHNbXrv1xGkL70OyQMqpyvT4dfnOzF99NVhR74a2XhE/pbMV9jRy0xKF1acVqLEL0mD/5+5vvLX+xT89RJt4ck7JDZZb5er3eSGPBLkaEYuyIHQUWufYsrUj4vGfbmDlSM6CYsYElkKkDfo4+mZ8bYMtMTkE4kNNfu6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAOm/DiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAOm/DiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED2EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765126373;
	bh=OZQ5Q7tw4Hbw310UT3mFdiSWSz0RMh3OVzpdJ9ldxXE=;
	h=To:Subject:From:Date:From;
	b=dAOm/DiXJ21LJeBIhVCgNaY87Cm7nLRc8JxG+Isa9P9xEHDZ2AJavh7N5dTkyxrDe
	 twmrgIoVXWN+iBwqVVj9T2qpPpDAPz7YiIq4io0cf4josj4aK6xJksaPFYSS2XYT9d
	 lA3GcuX5cNgcbyjLgqA++1Bzxn1haOr5UmsgQqnf8j6haOrsTbcvmaIZOnae4BxgbG
	 XxH1DLIBytktDvffgQ7uD1pTkEcT4xh7GPtllg3OXNWYLtnbND2TKVn6n4jXo2KkyU
	 1bHeVHt8eFQ+p7cOuxgfK193u9nB5fQ9L/FZPROi726M8ZoFx2TcZQTIQmqQbB2llB
	 +Yiwq57O/IO6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991AFD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512637360.7350.1758763084408435933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfbfd17bf44f273ef29d1984dc1161442db4ebba6bd8d7af378c36c03a12c75
Date: Sun, 07 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765126373
