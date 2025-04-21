Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28592D531
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745209794; cv=none; b=p7NoS3nVauHBEPF4KBUw8Kx4JIEmjUiGyGa7Aywc1WKsbymwt7U+SqmzRuYEA5TKIhRi3mmhzc9xqW8ywjcr1d6DUXjDVmWpJulPYdCzA929RoprvY5xfGrO84elzeVWGHnWPbdnROE6OizH9zsYqCbZ+N2whDLW+EK1EueMcMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745209794; c=relaxed/simple;
	bh=zPZ25ettjBsOqrZCc3kGuatXOtAy2HMd93fdp2INyu0=;
	h=To:Subject:From:Message-Id:Date; b=YcSq/9tRug07EmcC+goBs9rX/CWsR2gtglJLpoXYrfuKGh/3ao33K6b4xkdmU/0CteofMaCgHedejZgAUVTHNDcR6Nfg1yZ2Che/UXi2vYGRIjpd8kg+vV+JqdFkASRsZW8Ws9td3Qca6e0lhkB/xNeLrRjZSionwRmhm3gcdhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGlLbE4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGlLbE4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A140DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745209793;
	bh=zPZ25ettjBsOqrZCc3kGuatXOtAy2HMd93fdp2INyu0=;
	h=To:Subject:From:Date:From;
	b=LGlLbE4YRWWAueO7crlUQy28GosYqfA8OMH2p+NFwNQ3N/AiGSEcCx81A2qea/21p
	 /4R3RSwoV5WeY8i6WMSDh/HYAhPjXXfwQVaQKnrSXSr2RAwzr1ftXagN1m8fuKX0eO
	 HOQstm57tjyJQDNBCox9cBhA0j5vg8EOOd/qMHX9ePyOQJ8YnwRKGj5XprdbeAwmDT
	 /IMo9F+fiIDORFrMZA1CRT1iJzlDiU35g3Wrh2m8+NtguJCO5fM1R5eM3ey5Rz8vBf
	 qlKVfgbzRFiyxeNSIqC2rrrH4qLFwjPLzSjeQzh3a/92KqmUwwj5e+jX1ZGRY7P0bN
	 k7n5Q7E3zy9Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F250C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520979357.14961.18290374338765035277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4071859078bbd6a29dc4fb853678de5aae61862d2adc23f07877787162204ae7
Date: Mon, 21 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745209793
