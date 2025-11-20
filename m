Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9C533E7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763598714; cv=none; b=kK8km3h/YLDWxuyA2Ac6xGxFpHsmN2v/U1pkGEPJcB2ABZEryf4WR3yfAKXEOZnbuX+DW+cjjj1YzBkHwfslspo+Fh+sBrxfVNqnlQ2vQ13q2KRibRiy3t1weavCUoXx6qs0ygd1TQlv4ap7YxK17MNP3oa8iHQwqsSZ3eHYI6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763598714; c=relaxed/simple;
	bh=o2xMwzpognQBjFMtWWdU3aCadvgs3MG0moiqgBL2ynE=;
	h=To:Subject:From:Message-Id:Date; b=MeV8VdW7QoloP2VYL6AbkyXqeayIV8mVDT6Td6NXgQtdVEvbzecJXuTCkHwvdQLEM/Qz01AF7LXT3rc8ezTYVGNhHMIsKC5S9YP/vXu4IV18b7MhoCdOQenpdfyuZt0c0yMpyc183ahgGGny8hYHCPj71og+ZRXU54FKcuCRFWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY5x7asJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY5x7asJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF572C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763598713;
	bh=o2xMwzpognQBjFMtWWdU3aCadvgs3MG0moiqgBL2ynE=;
	h=To:Subject:From:Date:From;
	b=cY5x7asJgPNdmmLqWKdLC+gQR2WYlNLPWqI1NI1Bz0Y/2f+Vc1LzGpz/JZd/KT4QR
	 TVTSoBJjYc+4jTv79k6ht3TDNj0MaIzmlWi5VU4iHvOsS6opYynbSXmoXvyY2iLCxn
	 Z8i5KX1W/A0pTogvIhQov0KNAm50vnM3ToCetAgqbVR4x6aFdimvGreL1lq/actrUC
	 bYA5WjAwC0qBbAImg97WVYWcHVUSDCg+IGPh2F1aJy1eG+fF5+DuwmwfuJvWmivWD+
	 U+wloKd5faoRnEk3MbxYueo7k8+LQDacHSF6KIWIpQnKs1883rxcHkNJScX3wl5AHY
	 9XtBtwjJgRANg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A389CF649E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359871360.12121.8918316268181907875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f8aa900ff5eed08b54340244d21e8c86c64ba6a418251d7e45523c96319d20
Date: Thu, 20 Nov 2025 00:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763598713
