Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A92BC137C20
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706214496; cv=none; b=kb1I0e8DvcNNB38X0hwAKQS3vi5qoI4JbM7U2z8vUArgM/I8rV18Pfv1ZHstD0FnXA8czoBVuX8AdIOR5+DSD2zqg6qwM4cbzrsbl6YtkI40ZPvuP4Ntw8BeFuOOs49fDJSk45o0V4PHUBJvPV5e+meODlxGVmjyUun1tGpM5bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706214496; c=relaxed/simple;
	bh=cqVeHjT2BztGLturSkotl4knpHxjWEdbPA2xdxom++o=;
	h=To:Subject:From:Message-Id:Date; b=sAftbjVW8z8m6NFz4GiaW6M5P2+Ob3petZq50fSb+gO0dw7nUKZBRKHIphRPIo5pd2rITfeKAF+1topX8H+XXWTnlNtO2ANp73Fp/lf6ESOqYzDNeL2jTg/6Gjsm0FWxPKVAztYMUPze9lbnBq1tqQiOHN+B+x+/BnQZUSKkK3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spVXs09p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spVXs09p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF30C433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706214496;
	bh=cqVeHjT2BztGLturSkotl4knpHxjWEdbPA2xdxom++o=;
	h=To:Subject:From:Date:From;
	b=spVXs09pQCjQbXpS4H3ZRkL9cujCMa+ydtF8KRsXKj/REaS2hfyq2IUhMJsQCblcK
	 3t1Gs3TWKkFpAF6nWY0zawiGhPYreawIJQWt/qmThkMtAdkXrtw4vBa9L7dXtrZ5c5
	 7hKL9W8aarTC5api8/i3uTsBDcC29g6Dy45ZNn7ISP4lCiC1Ge+qDTw9GBCXRN/MO4
	 oBuj+ZeIZHqLi2GVpr1NglWWZ/vhSGJWr89uAJqTuiKD/sGC09dTdWHj7hyusFnrrK
	 3z0x0LJSG1YhUhI81EjsfDIX8Fl6szlY4cRHiBn4FNXCEGupzboeDxEtEr0ofMUbqF
	 mlRihO31A3Zzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62221C47422
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170621449639.24888.13451824872176572203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf51e3e4253dcf45c3d27e7b291044eb55442f31680b6aaf8c695081401132a7
Date: Thu, 25 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706214496
