Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDC74399E5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791541234; cv=none; b=UTHxhv7wJyK3OiASYHUQByrOn8s9mdM+4ZJUy4qcNfsWdghoSJCkRFNVRG+42/l5NKaYAAv53mLK4ntvfp69TZRaG7phhVNx9B2Ej1kj5clFMQrcxflkURMKbRacY3iOhcZzEAholD0XBPpOSw+DURt/5azknWQJylGrP2xEHKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791541234; c=relaxed/simple;
	bh=A4Wclcr5ew/RPuoJ5afS9hYsiHuXT/xYZUtUkl2ydYs=;
	h=To:Subject:From:Message-Id:Date; b=bNtWgKkDNEx2mqlF3cu+RCROZwuwcM3BSdbsvEXeZWWhpMU1wD/xSYgfJLlqDNURTPLbvpIs/MuLWL5SVLzOOLffuN0GKvwbSdqaqtcUeged65msiasoF8O8TraHOG3Td/SoHQh7gb4tlJOmnDgTSmRA25F2hdOyaxho0SBVLr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTAegya3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTAegya3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4B7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791541233;
	bh=A4Wclcr5ew/RPuoJ5afS9hYsiHuXT/xYZUtUkl2ydYs=;
	h=To:Subject:From:Date:From;
	b=LTAegya3m+rwqsY+zVXDaj1z2ODPM1eK4kNnTw4GBCYMtfU0zw9VYbScAGK372a+2
	 FWL/fYBJYt/nPQkMMqsZU+mMmEnPxix1KtBZk6HqJH8+YHcSS0GnWGJzrbkx6zzhI4
	 WD1NLgcUNOjAa6p1xEZqAZ1mBIOD/uD/N73WUOmq/73LJ6aGwOJ4qfuuv3MDW/S8No
	 G6imIuPpBfaZq14RVngF2ZNULJrIcIl8JIyLerVZhDeOTpuyXtt2iuX7AFVGISVDak
	 PFBiUest6Pl69UGSKXLoC2smTiiMExARXKCCmPCXkDxYzDOvzPVdm1MJYN/5I7s/K6
	 WbjFeN9/M8PVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D56CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154123368.5951.8028480033105778912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d7d5f627286a7c774180568f9f638db39f069b4b3083fe91326806a47e80af
Date: Fri, 09 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791541233
