Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F6C242D70
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761395994; cv=none; b=sg8SFYBxoDzNGkCmZFT95WsZOzge3vz4OdDCm9SVYZ8LQzulorLQQdLHuuL/gytk6Hpv4x/p3ab7D7CglLy5AI0okuLLJ1o/CcoGqQ/NPAnoMPeLuLMy4ae+2mMhuy3T87wEo0mcK4jfYgt+cvOc4K9lAqBdySgmwT4xEPnxBhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761395994; c=relaxed/simple;
	bh=uFC+l+1ZVn0CXCQZMgCgylSe2nIde4IZiak5iluL/dw=;
	h=To:Subject:From:Message-Id:Date; b=b3dVq9fFQqW4EV0eDOwS72/U7jmZgv/viNBNH4J9YizPcBn1dhPdS3GXKLLq15p74uAeSyT2MuawG9Jwk5EOS5Kv7YYkoZyPAJS8kggJMXjZEB+UzPim8WKC8lTQpsEZYntZIZ6EvcbsGBmfA1P2cshDL2HPtlrBCH2Xn39T0QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnGMqlD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnGMqlD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761395993;
	bh=uFC+l+1ZVn0CXCQZMgCgylSe2nIde4IZiak5iluL/dw=;
	h=To:Subject:From:Date:From;
	b=GnGMqlD3DOC+MPveBpeTY++O2JoTENCX93rDOGG8xV21cPJqkv0WSquEoKmmj7Dih
	 ysu5pX6mjJWDGySiydL83o258bcBKTNqgZHQ3thsDNWQHvB4sPMFTulxcDL9a1v+DV
	 yR2+gF5Iuv5gZbSpprjR7Ibfdnq4WuWT+1vs0JYw9ylFeiNGEIlMYnHLgGdcx98KK3
	 fepGRkLxknspy5OVcB54KNhqeCoXMtYw7iq65ndllW+aBvlmtXeR1sfPOpXNzSfHKy
	 8q6g+Svgv30FtJVbwX8c0IslrPtLzMyTsZB0HS8WCn3a+CwI/4HtP/bYfNzplInb1c
	 YSYZGF6AObPyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B6CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139599357.12507.8127309800978161160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c45df7d23249b004e908500ab2efbc48b7705cec1c3f4361b8f097f2d5cfe05
Date: Sat, 25 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761395993
