Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CCC610C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749781194; cv=none; b=okskSNlPow3VeBAQUFgJRH+2KJW3LojYDW4lE6pBdeQNObni8KM2yp5YJa+jytTO6ZQzHaRuWJ9vWS+6AMkLrJVX05FX4SeAKu455V4I2Idt4HG9/nAqdi8vXBNRcf/lXatkRRvM3NhYsbOA9DVM8+JpIDR5bXDT887oxkYj4CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749781194; c=relaxed/simple;
	bh=giXscfotfGsSu89YvVZR2LiCaJs3zAjNxzduXNgC50A=;
	h=To:Subject:From:Message-Id:Date; b=OIIg5hUVYeY1vHA6wmNME7YIoAm8DYSrUO9mCSJe5Oi5RQn9uMSBhnjGFRcxnFV5GU9s+8MXtI5HUyreLOVJIFu6dlrDfC2N/tvFVv5AA7Em3LDQtxIx4bL8TA7Nh8zezSt51ksHxkswxRpmKmPkKOtDdKPLlCPZjO++mFyMuv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4/5u3QF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4/5u3QF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CE0C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749781193;
	bh=giXscfotfGsSu89YvVZR2LiCaJs3zAjNxzduXNgC50A=;
	h=To:Subject:From:Date:From;
	b=Y4/5u3QFKqcBPsbkSFY9J6oA388zkUUfnBG7g+Fin8HIqvQy1Bq2hER/AhH/iRaer
	 F2guZ0EonzdTlswbWkZ1q2m71wx7sy+B962C0IP5o7zp2PjKW9eZT8CMMbaYhvd+0F
	 haCarV1ioTvEr/7IJUtCSVFmx7abqIxp3NyUKXFGpHW/Vx1aG5TdqFknG1eBccPZyh
	 r0Vfrp33qC+skcduVTmW/GOOFR/3DEEzQN2PI3zE2abw+PjnrPebz85epSCPhcUU0w
	 AtRSLe0ZrzNcOWDImmUpCrPgfI0esaZnZlfBpO0pN1TGPbvS7mAK2MUPdDdTSG5qbX
	 gj+e7+Kn0U2xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95286C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978119360.8436.4490174010330315993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588a2cf0ca5d3856a28fc0b52f97399e78c3dc5aa3790e50f64dbab82c8b702d
Date: Fri, 13 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749781193
