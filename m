Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364BC1B6556
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747103394; cv=none; b=cupc4q66xdEvs1RWS7DdpXewvyZbxzPeiO29zFseupLlstPvx+g7QYicDA7mmbSXECN3F793W1GveSD6zvgze7ogCB+3pvOecjpCYzKOv2XT4yCMfKCPR2mzOrHPejA/otdKttzlMjb5UIjgrNxTHxZ7fd46v+MRJIB2pqFzYXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747103394; c=relaxed/simple;
	bh=5JHtvBsMAIZ1mqcjfcaRjRbaZyIWtPeEsk0NrwhLMJU=;
	h=To:Subject:From:Message-Id:Date; b=IWkl9KP2xK3RnmIm902I2OBqfeq6V6K2+VPULpOp4Y+LW7gGnyw/hAE1zT4jT0JmgPyqrybZ+D+w6bXbLmqTaYhsbzPEqXCftZcP6CiW8Oie8GC8mH4TLPe+s+xIDgrolJ4xMAIqcNRTVbHKTc0K3SDITwk+9tqvdEz5URAv0Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L564ty6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L564ty6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747103393;
	bh=5JHtvBsMAIZ1mqcjfcaRjRbaZyIWtPeEsk0NrwhLMJU=;
	h=To:Subject:From:Date:From;
	b=L564ty6WR3uyoZfCNyvmRsM/HgzdAa5DuONZr+UL4Qy1byqrbjdWKXZVsEJmyPpHp
	 Jq/g0rR/HRHORe/7IooYFA39jayHh497HIvkiEQ9bsN62YXG31J0LevBWgc5RtcDVL
	 xa5lwZfM6E54XNwa9YtNMUGBG26RH/O5i+N3VH2e6FmmDMXCW6AgbP224wtXFPjKPr
	 Xgmhd7sOPFkIfdjzoAwz4p1UNKUGIdwxgJiUFMKiGQdk8YUJUc9p1cgURqPa2Lk2lv
	 xUWCen+uelqG153fkvfxotIJXrO5tpQwRFVAcNF8ibi/AXNZ/Q4VCxWaAnKimTV+Lm
	 3HlPJql1nGDAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91003C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710339358.9183.12631632856558722858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d76d3b558fb26ff8a4cb39bb57e6677373b32f7b362b5e14055f0d25d91b37
Date: Tue, 13 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747103393
