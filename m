Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1FB34BA22
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759585193; cv=none; b=h6PLyXa4lVZzpYbuUE60uu24+P7MIVDl3N8WehMFsdcD3utg/Kag3Y/Vcj7L/oqwDd+RO+qhZDBwthU6uWUQDD2cHyF7kJWTPGJcMcc+OgLluUAfPQRrnRQ0ZoCvQiMu926vaRzlWVS7aL7znS+xWb0Xdd+9DFMGhQ9oAcBWn70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759585193; c=relaxed/simple;
	bh=EwFxW6L0NPy/LKroto10kXaH7+a4qIXi9v5c+9OJeyQ=;
	h=To:Subject:From:Message-Id:Date; b=X5fqKGAcPG9taDGbBnI0JR3KZjh839K6lMo9cZrFbofn7zH8eSswTrQJOUanobZvkyQ9EBldO19u5oHEwPuqJZ401LuD7mTwvdDqvJF/4B3+9mqOkk+kT3E+iFlvrCEMPIbANYq3lf6nEt1w09bxdek5cszdSnMJVvXXWltSHYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhUwCZUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhUwCZUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ABFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759585193;
	bh=EwFxW6L0NPy/LKroto10kXaH7+a4qIXi9v5c+9OJeyQ=;
	h=To:Subject:From:Date:From;
	b=EhUwCZUge1Fi9nKq90D5ydGv0GY+jeFK95Cxi/iy9gCtYno/M+3d9hzOy4A69mJGo
	 EwsAksQcfBjDmmBS9mT9KrDO1VIHy+gUkr6czURe420vLlrrWi6m+VgdciiYJUmWTY
	 934E2JkoX5kq0qRyM7wyqUAaY/IZvruIVsGW7g8BXmpH5TWtTsLWs5gz42kKg0Ukn9
	 FSq5w/u6Em2vMK9AkhIw5w4qGorcptXJaK89wIJhFL+yQhuNCXUKqn7aIIc+/WazPb
	 C/4Nj/UL9VYXAIA1Q0VBtG8/0Mpwhz6bwIszdoFOH6SozX0WHPZd3XVbF36GzTqbey
	 WudpYppV5UsgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A1CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958519358.22727.9581916984779935354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a792d1490b181906554899e525ccdfe6a13778331e07f0073eefba0732c61e1
Date: Sat, 04 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759585193
