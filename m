Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C8025A655
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737931555; cv=none; b=hEa9k8cWjGnkj38UJnKfvr8QcWrkpF0Akq7ZlQGtTaV8dak/rgvoznkamhr5jhLgUihMUcpkr715J8r/RBTCIBeko4D6z1kAx0K8HaLAjW0nHOQHfMmBzixNT1kpRG2w+6JIh81Sl31sQrc2EgZhDWruX9rygbEldwmzzbQPIc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737931555; c=relaxed/simple;
	bh=dMw1XiMLoKhpVpO32tU+sNQXZZbHWqTtMCYXlkbhYeg=;
	h=To:Subject:From:Message-Id:Date; b=fdhheIM0X/4pz6qbuwRIupiUDE0ZONxzYEFw37jdyspFpPiZCCspqupzANk/di5SOf7dnvJMqWVaNqgOKOq+Q0H8njjRlJIZHSTUvrDKj/yHodRNfxq9mE3KTiDYk4Ym1cdVkYV8iT6+feOAVHaeMOEJXjc+K6b/N2JY/398mSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4Gdeo/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4Gdeo/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C08C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737931553;
	bh=dMw1XiMLoKhpVpO32tU+sNQXZZbHWqTtMCYXlkbhYeg=;
	h=To:Subject:From:Date:From;
	b=B4Gdeo/dCqiVfqMro1UJircg8xRaeuNBTjJSLZwqYeJtlHeAHGDEvZtkH9ieWyTVP
	 JazDTwLkpKifZbb4TXEKETBoCL6QZC1jsD4fOWCko+NHGxjyfmZuQnb9YFk++CxtIj
	 38t6S5CRLoBsq0yPunlVgf+OrU6OrxTFylp47CnBuS2b0Oxdl+AgwYpYQpB749TtJt
	 q3VIwTmBP9Sw86QyjQkMzakTTVbWBdobrTpiS3ddaTI0fxoRG0ZLaSb7WBL8u1DUAL
	 qw9zyrQd0RjNwaVkdkg90zO0sIYYJ97k/KwygX8x+yKTkraTDQWw/m5PtLZ2AHfE+5
	 PYGUQXZ6sHetA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AE1C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793155359.15938.748229806916446785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031bb03747b333d89628b21980960e8a83bb427732c14de1d8219e7817e1794b
Date: Sun, 26 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737931553
