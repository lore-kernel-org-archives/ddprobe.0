Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659AE1B3948
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737720354; cv=none; b=AqKSZclIm4svIXTr4tyWR+rNFdfHSDyDNWfmGE4ymt/F3OyEGvuiLG17/mpmxj2BIsju4F60sb9mNI0d/+vLdwgaG39MhPMfUxSFkp5fv11X/TTGwEsclaYy3zKcmCF1suCbHTrGKbLD43KdadF5JR+F+9HLgMUzpkw1UoihLY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737720354; c=relaxed/simple;
	bh=le+5qgNzTu89/z92PTgtNCQiaIL0NzO+xo11aFzUd9E=;
	h=To:Subject:From:Message-Id:Date; b=YWsH5I7d5PGcNvWm/oN1F4v+5SIzxbwnjWOyYSJvg3mo2p38KCT7jKVMrLic0ESuNk2fAYVEAP1+XY5fGFK5/s8LC9+1IY5N3Xccyeo4uvzwNDOtgfhRQEn0IL+BbxfFYFCgbsQbJd/lMdnXC4bA7c5UpvjtXZGHX748SX5AQTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU7o9A3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU7o9A3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBD5C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737720353;
	bh=le+5qgNzTu89/z92PTgtNCQiaIL0NzO+xo11aFzUd9E=;
	h=To:Subject:From:Date:From;
	b=TU7o9A3D7e4W2P/xo1hzuwOK8VkY1RhEE2+a62BkWf+ISN9+IXcdvWzPnBxANdEjH
	 onafSCP9WthF6i7Qokzpak3A0iGTObO4DhsQBtqqkk25KmJwAcIXJ7ejBQ0Xdcm2MB
	 mV/pi98sF4Q2MxxeMcT06qIoDxm8xboLc5JqdMZsY1pYHrCCc6Huk/W/+F/nPUR7Vq
	 4to4xJ8YF8fa9eFnO4jC9ABT+Fw+6i+boC+xS10xbg++QXZGqyympXVIzqrTgywh83
	 ex/LFlKZxf2Al34aKUyCuJPX9iMclqm4wlYOhIXL8+KdBT5G7zPVqDdRwzm+0Z4e1O
	 wSGijwPwFNhBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A451FC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772035365.2957.16159487599647109595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ace004510508ce9a863327c4e40e5bd7f9a58250c10f71465a618e4c508f28
Date: Fri, 24 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737720353
