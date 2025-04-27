Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A53241684
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745755194; cv=none; b=aKOFXfwNn2jsddzi0uekqHNdaMbsgrVamGBZGCsoYByc9XlpohAN+8HwJYhaa9CCVC9+R3vhvaEn+LhXGqaknbB/YISxdxHzRoCNPeX6C8Reu3bm1V6qxuXssTF1IaFALpsPo4vCHWj3NStRN5ZFMJb629Hig8I7TYW+VLVT0Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745755194; c=relaxed/simple;
	bh=Op1HLOjXmgCg1/DEGNfwU1jhAAKXh1uKeaNZiLIek+Q=;
	h=To:Subject:From:Message-Id:Date; b=Y9RDgJJRhsL6oTZTWz00aZOHOhZqz6jQZg0qEm5JPKK3RYlQ7JMZmOEHDsoFSxziF4S6+KI2af6BiN8ZwFSmPqlHz4jxPT+swouKPevPb9I2BydxfVUgbDyGDN/KjaYX+4Zt0UbRKoZRZ/IuLT5sPOeYfbeUkWfLgfi02aRi7yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7OKhhfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7OKhhfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D35C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745755193;
	bh=Op1HLOjXmgCg1/DEGNfwU1jhAAKXh1uKeaNZiLIek+Q=;
	h=To:Subject:From:Date:From;
	b=S7OKhhfv9IzhiIOy0FgNtW4RHznVB06JrEgxLwgf5AN3ns5MbA2AvwSHorkSrfpmO
	 dQU2MeYY6LNyzbKj+bZz2EceYUxOv576GYUmCDBlENIylhGaXgM/uHopducxoVXXq/
	 kVRY2qCq1cNSAKTLrUS18mBeQ34DIXnd3xCBWCJqv0bKgKAvjYwZtXE+oJDvlJbPmN
	 HPeaceiSVpN//16r4rM5od93xDH/j9nc38mycQRLgRx9LSPxplWa+ostYs4KhnJvJ3
	 FXEzJZ6ZGZ2Z9DFKKKabOOkaJqQLxVoVwmk4Fs5JnDWbcMs8/2URRm7NNBIPV/pj+R
	 wTs830J1tCJbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB0C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575519357.2974.7760344259566672586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26fc3ba454269229c584652577b13d02b0f32251179b2f38fbda8c55ea8e9ae8
Date: Sun, 27 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745755193
