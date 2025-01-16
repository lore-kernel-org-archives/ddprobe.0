Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319AD22BAA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737039354; cv=none; b=PgHzFi/rppcWW1mY0BPXcu+GDJZvMlWTVziAnmIo24mIIk3MJy0dB2OrQpUEb2YdrSut4JEzvacyzrH0lq8XfUb/EhhxwFgzJHgqGWZHMjVdDEJz4fy2SnFtuqn9hYFcou2NSEW9eFGeaiwbgJNpRLtl9qw3i4ZN2Qb4woxElqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737039354; c=relaxed/simple;
	bh=X5eFtlr2c1P/FZjNWX3xX8YKtpVtjsJ/qY83Bd0buDc=;
	h=To:Subject:From:Message-Id:Date; b=uuzBvll3KdXp+aBHYsxl/RSq+ENPOOz+8Vu5hsJf2NZSSTqkzRcDf7SKek1jCVI2Fb0OuOWCy9ImNCJH9FW22pyPRXjTISw7eKLzrj4fGAtPkgmHlkVshGuNANMBliMpSzVM2CfIYGwE2iuxvSRi+StAuAYiUs7/ASc16izvqc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqQE6hq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqQE6hq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A667FC4CEE1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737039353;
	bh=X5eFtlr2c1P/FZjNWX3xX8YKtpVtjsJ/qY83Bd0buDc=;
	h=To:Subject:From:Date:From;
	b=DqQE6hq9byG6+TbsCj8CmFBNf6vKYwcgq6HUUbv7fbvTi/Ml34CqtoX1j2YICPTps
	 Ang0LjDU4x6FIXbbfVtcRbmFdvqEPhd3Em34sYW0xF7VXUvAXVG13WHAibYJJxzbW+
	 XvMHz4Nmpt/xe/git9PoyA1dUtFw5WwH5SKXrop0keHp5++TL1rFeL8ayFHjGpNZAD
	 6rnFebG4N+vNHuQJ3wiH0rVfgD3XJnnnBk24tU1XqTXbEC1eqm+lDS3tmo32v4pfMe
	 XUaCAoC9VpWq23G44vai7TfSpPftYAuomDCyLDgw3BR3e/Yi7NJN3QUQuCybSGIaB6
	 D6y3gRQsr2o7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9467AC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703935359.32671.11282777399833927235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566c7ae2f7615e79b2c9a23a15907edf60e6cd1287a25223014ec713f629f3b7
Date: Thu, 16 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737039353
