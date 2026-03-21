Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F967276058
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774053294; cv=none; b=hNeen4/kKSY9+iK6hekMqQdDyrnR+CajCdm4Rpc6Y1Siz0i5W3Fvu/y2FmWr37mXMrutpUcNTlqCpnid/UvgSb/nT1i7Nr8zsMRZ1BUuY3n/tWeSFXRTLBWgI9vAGlqk7JSypwU6PmtLF0ZIxl9LFsDOo43J+iE3VABeui5GJtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774053294; c=relaxed/simple;
	bh=b9bnI+iSY9gXb+ZTi0mn39/a/xL/X0HvlXno7CXu+Aw=;
	h=To:Subject:From:Message-Id:Date; b=Y2Xksax/AUYhMlCpz/8KwOPp7IEjisOtq/HiIWHZ9MPwtHz2qSOlcvAjIC2FZciz5yvlE4iutj5wty3i1F6imjNV9mcY8gDFB2RYRvf2xML8jlymYDu3CSwB+SE+hNpkCbLQL+lWKKl/nN5avupe5hCREcUWHyQjgJKVUJ6eHLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uddgd9Wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uddgd9Wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E29C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774053293;
	bh=b9bnI+iSY9gXb+ZTi0mn39/a/xL/X0HvlXno7CXu+Aw=;
	h=To:Subject:From:Date:From;
	b=uddgd9WrhG3YTrniXpXEvPykQTdoxm49ICus87xGillFnrAskbl6HlRpw4i44JzhV
	 9korm9e2f/LNhMKhdqwRm0N5fY6ghCgiovbHAkaib0I6c3x7F6r0Nm/uKYT5amFPAv
	 g8ddGyw8xhWCnfxr1Bv/IQ7nUiSdSRItdfqjq9tB7C4Hz62aJ6hp9tihx3J4/bQmR1
	 NqI2jKVelqF9kBrs+07ByoiaUdkzAVojh904R2qH8DGg3FwRiZybt3uJSODY8hO30c
	 06mSUiw/9nQ/VfDM1OGQP4eww6is20+z0KLK98FsqapTItoxQHFTu/nUpME7BxuJmq
	 MIuNJ2O052oGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502E1099B58
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405329357.21048.12519738842662897313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5062f0ecb6e4fb626fda66a3dbb2589bdff2314118b3c76c6c11be48e7c6c8
Date: Sat, 21 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774053293
