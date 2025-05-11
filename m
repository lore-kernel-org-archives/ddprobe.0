Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49914433A0
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746976194; cv=none; b=MEMQswCsusmm8XlcswC/cUEGYz4KbVBWonRgYVS2zZQ67M8a2nZma0ZcEcefPCDytC8EdotCOfws/E5TSzH2DWV2MRQ1BHazYl4dgeGoXk/MTOott4CGvtR7qI1CL7hbMxu+xPIvzs0cOpzOcAPB8tDGhkF5Ajen0XOR5gEDaZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746976194; c=relaxed/simple;
	bh=kYSrC4L9Z5QYq8gSAKce2T4KH0Z4k93g9Abs0DY2IaU=;
	h=To:Subject:From:Message-Id:Date; b=ayqqpuwBlZOsBqgiLlXlZEGJ2OoMc81TeEJG7qV7ztSBN35N3ek/uSeFhxO+4x4bcUR+XnXRhhdLuQWUNuLzgtiBsSzQ4ik8iRh9zyL8NTDbgrKY9aPdueLjpfso/d5hRqwNbWYa0Fp68Yic2ETh295uxFhYwof/r+zhH1mnNaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzXQeyQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzXQeyQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8195C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746976193;
	bh=kYSrC4L9Z5QYq8gSAKce2T4KH0Z4k93g9Abs0DY2IaU=;
	h=To:Subject:From:Date:From;
	b=qzXQeyQ19x7/ZqJ3iGT8Nd24hYTVVEFi86dKGKaXBQZYHwV8ga8Z4hWvTkBvlrNCF
	 JX5EzYjmb6Af00MmuLNOuiyRjo/yUmyC7peDGkvZp7Cxp2ILHwSk1YPgvdwFXn3EOQ
	 2EZ0kjDVLo7TJHxwBpbn9iAmdDXQZOC1BTZr42Uyv165jqmIsRKktMgNl50IOdBODV
	 W30yCcU0TlLlCUayxEJ5ffCnJ6BwhyK2fuSaxyaSi3spw+UUwn0FaURlIZgnyhuHNf
	 /C0K0JHGgrSjdjPBAtDTpfNesgBfqDDBJTTExj3FDrKJ2KkYOksn/aqJe7CDMLIMRR
	 V1AvjhopBoa8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92769C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697619357.22755.1575706034922631332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6387b09d29521522c1d455210d9e47d926aa0adaf61d928439b0871d4dd11ff7
Date: Sun, 11 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746976193
