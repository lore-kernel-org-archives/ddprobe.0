Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6C97260D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774422294; cv=none; b=nJ4zxbraqFt5094YAjKMl5hhwSXtWlsDEL9tZxE+tr3TF1MzPOQNm8GEhAkbvCal5UhSELPW3JI4Tz0Ia4FFuasMLb4AN0t0mCKDASor3iDAx4yUctH4qbTw+8OEa0WR8WuP2ywEcsREgu0xdHk406oKVBlSSS/xFv8BshEdF+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774422294; c=relaxed/simple;
	bh=xDXDexP3doYKE9n1z10B+FeEU9G6V8oiWZeGAoIzVFk=;
	h=To:Subject:From:Message-Id:Date; b=SH5U2jcBuCuRbDrqAumJ16WUkZA1gnV6Y1gCbALTJKhGg3RMHJfaLPXiMjs8960Oj0W5HAG5VRlSkR0qmARmPxQ9459DbMIJWf+gW4iSCtgsB88bLV3nwuvMijIS+6jLaF4PtJHwx4NZ5mfSbV4vd0VKtMa3VP34tqSej8Qei+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKhz0wAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKhz0wAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC630C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774422293;
	bh=xDXDexP3doYKE9n1z10B+FeEU9G6V8oiWZeGAoIzVFk=;
	h=To:Subject:From:Date:From;
	b=OKhz0wAxyyOzQewIzd3BpRNz8ulvajNXiknAtdq/H4/1eMD+McOAc3SKhlQw7wxRO
	 ZgbkC8J+RWvA5Mbh757O7UTwxn+L1mlrUWyiDbS18LdAuDemFVjjRFDvQCXNVDRmXR
	 Pir3RHh1Yq6OBtIVxABHfdfDZ/wQKp7g6dj0q0ItbDRZzXJD0X7QgBVHYOm6YBZ5LI
	 xmNqOE4EuYg0YkI4HlnozoH9JdXj3U08LCeCWtGcpO4VoQqDE+9rTlA0fBxHDjH5/7
	 Mdyf1EKWzO9QgXAxmVj3JvMB9xhwEKVSPIueJaVEz0nOIRLAM1CXgm0wTMA7Y0fvBO
	 aUDQKuhgopnxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6DFEA80E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442229360.8349.8532312035835530497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6bc319ca6149ea05ae58d809765355fe3d521f0cc1a15c7afcaa4c1846ec374
Date: Wed, 25 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774422293
