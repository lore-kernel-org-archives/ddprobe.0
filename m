Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAFD1FE451
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792232434; cv=none; b=TgW1ev9SZpMN7tMYs/ckcpJHqz9S8YEEV9FS8Y5jMCkNAnjEIv3CtOQYZRh64Y46r1O9xk7T+AluckmuKWkcu5pon4A48ZfRl2+fkMMThf8jnVXMyUO6yReng+HDnrInTnYT8coOi39GlWLGz9njxjtT8w1OUB6tMq27i0u0OHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792232434; c=relaxed/simple;
	bh=Ip/j+CJ9oQZT3nyackx424FmueBiDwh3TJn62W/u2Ts=;
	h=To:Subject:From:Message-Id:Date; b=K3wCwuAweIOiV+/alY4WRkcj8GQ2td+lsFcBCGnA9FkkQhDCT46MX818HnabjBdN6m1R0E5h/V7Br3+9xA9+zjlGXHQkoAAySNsRDi61cZcuccHFLWXhoPUgaUAH2fZIV69BBqz7KrzMJIPH34A2dlNOcoxeacrVgK1Sn3bFtYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoBC+Rqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoBC+Rqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96AAC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792232433;
	bh=Ip/j+CJ9oQZT3nyackx424FmueBiDwh3TJn62W/u2Ts=;
	h=To:Subject:From:Date:From;
	b=EoBC+RqtWNWtrnZsDsqKvkQXxg03ZcrNOxIvqUEbWrzGNdlYFZt1b3JHu9VDOuwFU
	 29bFsPV+s8yFCy64BP+LvArNybZgxYFzzc4kerlvITNM+WG8KiQD8uS39FYIZfaPWl
	 rvJj1dTa+lQfGpir+b9CGpoEkk7K08pxBn65AOmrDvVmX9pfz/hLnOJgYi1ZTCIoxy
	 yzU0ktwr78J1jIk5EDxBK2qu78vi6q7DOXDj5oq/yBuywNhh335no7Ti3ZAl3cqNat
	 TfBG2BL7wITMixy/ONVg0pupeXfXO2mDdsl70fFlyGonvXlYQjDAwHE+hiInm60TRe
	 9tj5f51KjvAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B234BCCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223243369.23530.10707458729071734312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2596adb6de17a42a4d4cb83fbb29105891c40cb37bd2f5708a68e3ffa15faa9b
Date: Sat, 17 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792232433
