Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21762340A7A
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768963434; cv=none; b=MQhAfTERhTC7Hj6fBUc5lDYk5BtVFDMY/bKxNYvYgh70ur4xDG7JTgglw67/gmkSMXNALKQ4mkiqmrsHRoLraRSPpr9ScXdN+8xS5Zj26srEgRUBjXy+J6nhV4TNG1i+oSS2xGi/ESXfBpH1cH7t4dBfwOQ2nO5/NipjnI8D+dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768963434; c=relaxed/simple;
	bh=gcofUwdN0u1HATa3sA6llNRYyxUNCtm/sy6tTrqACEQ=;
	h=To:Subject:From:Message-Id:Date; b=Oq8KlvjfxREU3f+AKGWpNpDK541mD0gxS4IsdXFmww7CltaJza+WhZgCfA+t0caMwMNgMk2sofqBoNt5mJhtsYmNzH3uPY3/8gjNnXAYTpq9+dCm0ttPe/zILC5WcgOzlOyJz0ONXNXyZDYCRciM+SIrsLZyuKutHaDPu3Z6lYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOd923w6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOd923w6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B78C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768963433;
	bh=gcofUwdN0u1HATa3sA6llNRYyxUNCtm/sy6tTrqACEQ=;
	h=To:Subject:From:Date:From;
	b=tOd923w6o0o9tjzyZvH4C+WmG3Tns+bJj4xWFQbiZdzOILPqCBFEzIYYRWKYH5vhX
	 loPiKeGVcegsUcMc3j7iOZhC1R5m54b9AJ/8n2GzTFwO2A1LkL2hDE8QOZdxWz5m89
	 KKSlUgE4wKetVD3RYDCYWJlIYl0U56W6H5KdIzPdE3m2raP4l7qEcZ95ujeHsE6rX1
	 RxXaPu/kYuncuB7xAbtrB2A9ACN1S6YpnY28azZOUlJf3TVxMaqe8aDXs/uuv6jD1H
	 QtPN/PmHZwBhYgOvbcV+5Gyh/rnlnwHCpurqvfooBj+62BQr0sBxudVgcYh/f14jNG
	 VNXZgwU2uN4ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A5D262AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896343359.4000.3236645979129554289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fdf9cffc3d2091d048495b0156733c5ad194d79c4c6659cf3d2feace8ff46bc
Date: Wed, 21 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768963433
