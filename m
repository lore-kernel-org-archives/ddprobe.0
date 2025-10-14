Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D59022CBF1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760457594; cv=none; b=Xj0tbG19T5Ib+WgPFAGaP12x3KZmuRPsFgZbM7UtfWUDfp+wZGoNgOfFiQwcZdzwMPLSsaO7ZmPDxOiD62YKgCn16rcuBt4vMgMAESWwXDUA5S3+jW7U3UYkYmgTsD/OiYfB6Nz1sR6gYIDE7IIoiFtopmvBORVA/iIR01X6kcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760457594; c=relaxed/simple;
	bh=ClYy5wMniNJBLGMEfWqHnhMgadhG465moWm50gUqFcw=;
	h=To:Subject:From:Message-Id:Date; b=ojFrlpG9ozlwZSKWJMcO6ydHM37wdco187vrhuUQZr4GjFzbKotTzY9DewEAktR3sBk6cJ7yWRPbzFhKmFcw7JBPVoq5SFCXWENPl147L/eZ9txBcIFYAwEXbGM9Lkk2Kg5A32eK4+FCSpxZzfDoeRHIOG1rg7NrCdTz4eQLQtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VozQPz0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VozQPz0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC92C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760457593;
	bh=ClYy5wMniNJBLGMEfWqHnhMgadhG465moWm50gUqFcw=;
	h=To:Subject:From:Date:From;
	b=VozQPz0vyZssz/VCKS8ObXEGynZEYnMpT0g82oIurFJ2PZZu6OYcjPKkrEz3nOQaW
	 39cFvMUyNAhsYwMzlBTrsy+Vk/AN9Wm5aSPmj0f++RakXJQZMQT613aNboj+VjYkop
	 Bt+jmQCqwBlUXLfJDgzMTrt2TTxb+CKCZQrpdTwMEyRVuFkm0Sy9xd3sJMctYhNEOo
	 CjlD9C0/RM35cueTLqACueO5xq30jwEsrR16Gwr4/cobYqniQbB1/FMAW00xZDLq4f
	 37wA9Ro+3l2YdMBewjAepJBxiDIHi02Iz6kspUPxN7Q0EZhF5L+xKoWc6niBf/NS15
	 uBcXfbaVZ93Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91025CCD194
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045759358.8819.16481932577788883474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d83a2286af420605da247e3fa0f4cbad09002ccb28f88a3deb5dd0754b0298
Date: Tue, 14 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760457593
