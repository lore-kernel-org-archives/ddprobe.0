Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80FE73164B7
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785397234; cv=none; b=bfXEQKsp4rCZX4v8iNmtziIxYPX2zs2GCVzl8UmJyGSv8tA2T+FewyZpAiUKn1jlc91ypHiRAm4l/V4da8hMwBm1nahgkosdNaY2GO1NQ4X42o/RpkmqtAdvnYw21TrtUFauKPURepc6EavlYX6pj7MoJSgJwQxh+6+95c6B6GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785397234; c=relaxed/simple;
	bh=2yGZ5EHqWsMHozTtUFIK2sNjFOi3lEbNKNtJl6xftZA=;
	h=To:Subject:From:Message-Id:Date; b=DLyBJk4qAJFYW/rr/1qUeDj9gnr0qz6kLp1VksAHeQOtRGhasMpjOXybIWxjVYVLuZs4jS1OUVofRz/8G5uJErHW8QnVqXF2TgbvvdpfOx5Cqu8es1GKPy9i7ItSEGdMEhpqUSDzqXiTX1j0sE4slDcTqLnINF75EJp9QrvrFP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrWTd6Rl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrWTd6Rl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EEEC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785397233;
	bh=2yGZ5EHqWsMHozTtUFIK2sNjFOi3lEbNKNtJl6xftZA=;
	h=To:Subject:From:Date:From;
	b=DrWTd6Rl/fIvX8RcqmRHoocvroTZqLtP/Hwp4sJWiVa0b6AUp/DbO231uMWAqU5TB
	 EPC1rwL6doEGKwqDC4n+LUUNqV9s45K65pUKQ8isZgiFCdHKdEgAyAYmnjUiE9UyG6
	 fEBuPX1Tcc2+aAYAcZb074rrsxbQos6i4q4XDvOOL+3N+roXg4iodG+hv5ddeWlcpo
	 QfSYKyESuN0YZx+AioCgp6MYcx6IIhOHkz2ZVZBoDpQ+xkYulJSi05XclTBbpAyHxQ
	 rCJKZsOivzb7DG6IxDj9XOuuZIbeQyIoZJf/mpkU0KaOgU38NVXbNNwjj304NRywGV
	 MVCQBo0kjSO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF020C54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539723368.6558.17280624799943305298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e934b98d6190f6b68ba3e4577b187202be2156581435e41491b92dac0142b72
Date: Thu, 30 Jul 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785397233
