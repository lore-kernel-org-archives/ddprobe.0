Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDFB3C3781
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784579314; cv=none; b=cQjvWwGj5p2HSctt5BjAsBgHNqqvXLnh7dZS2hC0EKShGQ6+ST4X4salJoymOYGe/8aA3lF4+BlLDUTos8OZL3ELz3I+HMNLMg1HBlbx7sxue9qSUmxCJCoRGmjT49VE8XGkIBqz6UHbXlmpfJs3/cuDn+gKDNagHquYR8Ib9lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784579314; c=relaxed/simple;
	bh=1wmM3Ggu4K7oYb9SxBqk5oy8JpDAs/hDofEmiLLOp3A=;
	h=To:Subject:From:Message-Id:Date; b=IHYCAuhXLntOw4kWVo3VTkyim6xAhoUsx2tR/c1+IRtAlI52+MDA8k1VAiiMWDM8Xi1dOGiAzfgJtjflk4GqUDKZ+/E58GLUZ6lDK33xLUjJPArcc9nCwc6Xn8ADjSSdtjSyb0WwTAZ0uHDNwHd2H21u28xxOTjTUTUyu75ksEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt8YFr1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt8YFr1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A2CC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784579313;
	bh=1wmM3Ggu4K7oYb9SxBqk5oy8JpDAs/hDofEmiLLOp3A=;
	h=To:Subject:From:Date:From;
	b=Xt8YFr1OgqDQW/J6yIemR1ev0OPgNHvtqrzU7JFYm7QjyLAj5wPDQ/rc1/El0IrCK
	 QVW+AQUQ2A3xfSJS0pENuM3oAplCtrdfibWR8z/mxmhidP8/AJOSr8GIE0ljSISV2N
	 wyOnVyacxmHssuuyaEc/hi8Nb9pImR+9I9GyEl5e2ztYsFCu3F6R9k9R2UZ392W5yg
	 oF0kjw51DPf1REvmc2rqh23tf0eWcxLQbC+SHV+PamqpZUCUdGCc7qygEeG/sXv7YA
	 Mm1+C1/VxtA2xHTrmRIP0zqAjokF4NXGMfBkpXMK8/Ge4ch0R7M09L/S4xpL3VoT/Z
	 lYGABX2pS3lIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4CBC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457931375.26252.16373112917480775940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a201358f809e53febd558c74358b84e8acb6cb9cd31b5f5b122e49cc5cbcc8b1
Date: Mon, 20 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784579313
