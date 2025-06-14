Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECBF1D52B
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749939594; cv=none; b=QCNba6qCY7LeIXZssiXgbUumFIWmHMG1JxpjT0JX4gJ9txB5OkvzekSvyV2NUkvlkZAyK9KzSftxAkzByPxgibKL6fV57vL0TRFc8ufNkzhHsBKaUMRExULSmR20uBKfQOrSflJc92ILHBbHB4xDqrQyAE/ZnkPVNXQ+Dyo1ulk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749939594; c=relaxed/simple;
	bh=UXKLg6JNlvVLFLZs8wny5210SKtqmVrta8Ops7Ylb1k=;
	h=To:Subject:From:Message-Id:Date; b=IDImuJu32Hw3hl9k7hata+vNYJL1BZIwWYjk1LxBeYDl21mgVr5fP+MsZrxhVbCLSoJjp3XxZOJRHyfuKjrtpv4cRO2kY2Q8ge2jNXA86TNkxmUMJW9UlZ8F8ORBmB8p8M6zmzJgYBFFQHFByH4XVXPqwaaxZ1+ALUsd87EFm3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNrB5B49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNrB5B49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F22C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749939593;
	bh=UXKLg6JNlvVLFLZs8wny5210SKtqmVrta8Ops7Ylb1k=;
	h=To:Subject:From:Date:From;
	b=WNrB5B4955uMFSxOs7fbQPRGWqNpTCwimBCtJbbEdvo8gZxUq7tYPDUwjDgZFyqzG
	 4AbVASEYdTlUKdCml6TrK6EdpoAAJPYGFAMDoZ4We77yUehY4gHxRFD+pBMoHm1tHH
	 DRAPzzSSgyznlIoEydwQSxvo70tA0hBTjRfyuf1uSUvu2qWzrX6WKOdTHm7dmy6XJx
	 DJBKhUmM4DnTN1vLmS3IJaLpw1ikV6STbB0nTep5uQj6iQGV+Z2KiHWz6ytJLSwzGE
	 QEYwyKv9hPhwjLV0VRTt+hvAZHmWjlfGlw34E5M1lAvUj4ns0bYz8KiGhNSkUrzjX1
	 BAUnH+tRyuxqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915BBC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993959358.28898.15267528607827163251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbc19714d35b547ddc6d250ddfbb2339c59ce5f72395534ad9d56587b683bcf
Date: Sat, 14 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749939593
