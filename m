Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB2A226861
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764613974; cv=none; b=DCgvHtezwU+gn93h0q0eRlzkOUpLKut9n2cuxDf4CKy1xKiY+4ZpHyns/JmdvOSPnVV4uKDRIsgzIeNzc+m8k/PWxOGVobKkrm8kcoYTqjcJvdgagw6XDT8liV0LAzRmP0vYu8liqudBJT05B3qQTp58WhBuWV0vRItUVTkyIi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764613974; c=relaxed/simple;
	bh=TZBlfcBYhkzseJYoWgB2o1mJAtEEyWu0a2xtVxUJU80=;
	h=To:Subject:From:Message-Id:Date; b=SK7lvAWrBSsT36GjxCYLPjlG9U0IjudchOF1rivw/HpU6dZDCVwgxhDHIVDt52PW5dBU9oYbiz5KC2NXvR+CeA8r1ReiRUVZZGb4OUGMoWNpkwUbVx/u15KAt9d6JcMi9k5fUfloeIhRsRM0aymNHHzHLt62LX3dPpW3ikWsHkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc1Vu6bR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc1Vu6bR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF1C113D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764613973;
	bh=TZBlfcBYhkzseJYoWgB2o1mJAtEEyWu0a2xtVxUJU80=;
	h=To:Subject:From:Date:From;
	b=Sc1Vu6bRL9SLpx1B/sv80N5oYnx6qCpM61OfIIjGcfz3JhvBVgGUTLVWmPy9tpn/G
	 Nhttbxwb6mEEbcjDdk5+ZkIoZWSof+Z6KnkeRP2OrgtZu7EgX7Vb+GyKOnG2di1JLJ
	 Retj6TqN6R2Tiv1sAtEEGMhU650OcMT/rFWp3sJJGnnSls2Wvs5SGfSHiBcKPWm80a
	 /EdHgANxzCdzJEgVjEk+Jbg+ZPhtXEKVpxl9HK/mizVkEQ3gGAqDq7qYwwHywJAm1Q
	 e3axECIUAL6pEQvEKXnu56y7s0/yQf7AkqBXd94vmUQ44WsC+D4ORtEfvgi/UyDMWI
	 K4cYWxbYxgoGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DF2D116F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461397361.10655.13326152163341725838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c485e22fc1af31b86605431fa56550a457ab1be54e9292eca1f83ea22c7de809
Date: Mon, 01 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764613973
