Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E0E2E764B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766211234; cv=none; b=U3/gtr+uQJnaA9uycAr5YM4U1sxZolPKBoyjhrjzmk/dVLh0jjXj/dU3Zyf1Dx+F/hrBCgVHUrQ+dYA1oQIcwvnJ9AfK38/G9Y2XtXoFq9J0cxLh7nyczQrUiMUug/JiEMkAd7IlzVsrTdmJqvnViUOmInRZlTb6Tnyrhxns+P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766211234; c=relaxed/simple;
	bh=OdGX+Fdx3Z1qSypAIvtca9pjD1IfdehDzIYpoLUsSw0=;
	h=To:Subject:From:Message-Id:Date; b=CAOo97HpdkgxdADh02/6Gbce4EGLt+T644P6sSWC6gPlupR734M4lF0Abl6KVN5557RausIjmjyT9VvqnTMB0t/wXY0TQWH9dy2vEqv9vb8YYDKa9GNqhsvCtBuqCfPTywHdJsjs23/ALyY5p+fCkibKPquI3gt4a/sS2d0nBc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJWGhAo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJWGhAo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9220C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766211233;
	bh=OdGX+Fdx3Z1qSypAIvtca9pjD1IfdehDzIYpoLUsSw0=;
	h=To:Subject:From:Date:From;
	b=TJWGhAo3qTvxZX9WgVPLoebQDH0xamM2Hx0D8aJOCGvWgGr/MoaJ6RhSTnz9q7xUY
	 tliaYRckR9o3BDHZcLbPlhZfdPOVSJwMFzmgus7mp4eOx7PwstiweXrBaxhbH8NaET
	 XKczN1FttyPNwFgnqSstBBtfdy+1GMNLEFghIt7+dPKoY8OFXBBLiCYNSKd6QvqO3l
	 HoPEOW/hmiNMRoTMbOoU6iZHzONcfTltedwXBbHtLZuEs4cj0Ge51Fm6gO6Xlt7eM9
	 WK0Kk7Wesr9pyoLLBdGoOV94/lbYAu47RiGGIAQ20WuwyHCIIZQFJB7b55Q9mK3iWr
	 OBLFdLmgfgoHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665AE6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621123358.4162.2086923074459640854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62acf82eaeb60ab71ab9c235b9d8bb99d9879a26ec08d683e1a9eddfd8f53640
Date: Sat, 20 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766211233
