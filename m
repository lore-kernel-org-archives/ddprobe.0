Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77811D5141
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772834093; cv=none; b=dikUILWtBkigblnpqnVc0GMI4giyL8PDAmj2b50KiZ5RQZVhdBBsE2gkX20edI6GTvIyRiPpokNGze38wDnbHdEB132gkseFPmLt2aIJ4zZGxhBPGzLpeuad2hRE+bnhIIf70fL7rLqabyr/2hvmCgfifV/cDZflbl8K3guBf/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772834093; c=relaxed/simple;
	bh=gsVW1tSwO0d9sT12oeP+LGZP+evZSm+g6tZU6IdleKM=;
	h=To:Subject:From:Message-Id:Date; b=h9vzxS6TI8Bt3bEkI3Yl4PK1fyP+JtMFiERNQraJUKnkDz6YW+JKW3xeIijIoAbzvz3X6C/K6txKMfggMB5Mze6RvpXy5Bm2K3rOuNqCrQ+kfl1HY2nuYMK73KQxd9l64DOWAz5no0PKuhRmWnH31O6ogLT7CCbR2P03L3x+j0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mew+d1hd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mew+d1hd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35CEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772834093;
	bh=gsVW1tSwO0d9sT12oeP+LGZP+evZSm+g6tZU6IdleKM=;
	h=To:Subject:From:Date:From;
	b=mew+d1hdA/ZPQVh2wlHuPc/r4h878kBwrpr+pCBfuq68tM+clNofGJUBmcixgZqrQ
	 4SaJdj2HB2GGXhCgLCSxs47oxIOiFRWZz9+f914oJmR5oN1vmAYmt+pFrHw9XvRzze
	 HqpqMGpveW0DxYZdd5LlTIJEsH+i6RKotMIAqLspxeKYaufh4fNfa1blVf5vVfqK1I
	 /gTBXrJecGOv55TVdJKtjBH4U0EPGPp2B4X+I6eAkZVaeTl0CPzSN2W+S3ihgV96wW
	 R1K7Bu+jpP8NEu7rObfIEMc4Ubgi5ujY+/P6mTmImSeBEa3dCNZPyKVdkb+k0Z9uMd
	 xhPffJ1iESN/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00D0FCC07D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283409364.718.1314090603247842401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85765b8946baa9ef90dba5e7fe7f114cd8b67d1d0fad40e3bfd9ba58b50ee60d
Date: Fri, 06 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772834093
