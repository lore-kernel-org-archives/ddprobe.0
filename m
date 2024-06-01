Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A2AD55
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717217063; cv=none; b=eJPtWXmBrtwtKmb351gCLVTcRtbIy++sncncQy0Rd9+SVYsS7OyUfQS6b2zPkSNyVq4bYcFLf7zlB2IYdluGrAyc63Xr+BowYCQhB/IiVwS6JcAiKE/g/V2kfr5fJLLrUyoXbS846uhulFhMJE3wPgeApOJSRU0PQuYj8JlSkrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717217063; c=relaxed/simple;
	bh=fQa/CgnzPaZT25o1Gu7bRXSY6502YtXrSW5va/xadHg=;
	h=To:Subject:From:Message-Id:Date; b=Bhe8JY1zEo5WNtaq5kLQxi0pvI7GrVvejwN3sQYfbDS3CIhqJ5uu9QX7UgeRl0WMu3wIg9fl8lkde/VottAEEUDJohFXHYcVKiFywzZhKxkd5ChoLNHTNy4ujpM4dSrMPZ5jloeshRhGOXSh4RFLP46vLNqlH5PsgZdUVaNQGyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baIF7h4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baIF7h4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5604C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717217062;
	bh=fQa/CgnzPaZT25o1Gu7bRXSY6502YtXrSW5va/xadHg=;
	h=To:Subject:From:Date:From;
	b=baIF7h4F7NXwbJa3YBOP/4L2guKaFNQmIo8cbo0+JoJefGhpC8Qc/R/zFiLyT9j+L
	 l5XQZwiZXavKg3IWOYz49xyJ4W2agYIYnlear6T4guj5EdA/txUqVZ+VAOQM1fCfer
	 R7BNfXk6YynaDwQBFp4OZlIp7aiSU1LO6o6SZ6xO1IhKZqvZIGGpgUcp8eDgKM3Lj0
	 J3TYYuf+YUjBHsh0y6KRxpyF6x4h4AhaUrgDVBHhfcSzXrM9sr6Pswd86Mo8QC/d09
	 +UuOx59QCMlj0bremr8EopUNEtjMf7atoB92OOn5bnMRpnkWDIoj7H6tzz+Zj8Zsus
	 Bm0E4vEHLVT6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A23C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721706276.31763.2425644305256078438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0169813a2d4a48f1fd2548c25eba080f238be8ee414e830d7af5a78c905484
Date: Sat, 01 Jun 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717217062
