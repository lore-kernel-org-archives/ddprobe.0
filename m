Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298D01A2C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751078994; cv=none; b=EYBCEagZDdZjpXpe/LfC+f9r9Vc+aNjDbYB0rf3/6z1LzjD7J9tLWqDzwznttouZXiPmU8jTKw93nth060AXueljPwHNmHfQwFrBLPJBHY/RDLw/09V5hVVCZHwZMKZB7Vu9nVQBktTyLi0rrvVxRYShysw1rXQmYgZCEMXeQrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751078994; c=relaxed/simple;
	bh=nES2PWjV4qI7Z2wvv9yczkDYobHllzYeDM8OrlwuLU0=;
	h=To:Subject:From:Message-Id:Date; b=Zbyiaab6iwT+CEyKFoMArLK+EkA77MiVzpC1/enRrmZhsukEm+Gf+89UjUnC5Fm6Qz00NV1lx5rIwFpA70G2CHFjHCxR5vPfEzPXeRzCPdjRcgomHP9l1LgAF0ZQvwG6tTNQLBU3p/d9oIHIaRleM8lXMxaVBQy3LMS6e9loyks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0y8Z2Hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0y8Z2Hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4234C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751078993;
	bh=nES2PWjV4qI7Z2wvv9yczkDYobHllzYeDM8OrlwuLU0=;
	h=To:Subject:From:Date:From;
	b=k0y8Z2HptS/gvctR3H8NvB+Gy6gaj7VoiJCgi5Kk2YQjtZ3wpdmbelmarAioceNEy
	 h7OTOio5YNRYuE1vc8MB13lpEPpkHlcpPIDc5LFStw8CLKIS+Bi7URhzh3ZJBMjLD+
	 TpHdXEY4+2XkG4WAynuKh64VRpZNwFww8UJrL8I5by9+zHnXH0gHYvWawTrnO7AVWw
	 WEbWArlfqRNh7uPWqjCHw2PAInjqOcSEeNPyrjJuLleRlERYY1EaQSruxWdVWjt5TW
	 tAfscI/46smYERRbCzbLeL0ah7KbNtY7c0wTWHzjDmyP25h11TqGVNhVfNXvJ6s4sY
	 IqdNuQXUX0JOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B61C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107899358.15764.1058367647430029952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66ccb9b37084310aa45ddc2a827f29a53d1601497058374bfaf2ddb7f7bd7df
Date: Sat, 28 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751078993
