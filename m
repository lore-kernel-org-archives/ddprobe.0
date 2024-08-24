Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EC1161
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724462154; cv=none; b=qV5j9U4NZOiVDh4NmRiXOHFhB1rwshNsHIC1TCTcAZCM1KFWYbAC3AG85x6zc0s001c6Tny3UQZR/zGO/ahcULOG7RnSbUBWOlH8h/tgXM1lcw6AA5y+1xtmBrLtw7Us1XQs+4/o4LD17oSUFJBInwrzAeUK3eiHtBsLPtnNlfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724462154; c=relaxed/simple;
	bh=DL1tYuAidoGDCAm4iWIZmYcXgRSqEQ+YBQhDunxN6mI=;
	h=To:Subject:From:Message-Id:Date; b=XanxFVyX1fC6M6DR2yK3wZgMKv6YX9jqna/jbccqmB5hHcf0XMnF4acS2HzBlKbPPSLQuWuA6IYVfylOvJ05eYaKB+t9O50pGIAnrt20s3Ylj8MhKnMTPIuzPLEgzSBN92erQT/QCGy14RT8wlBt6iBSYdVB5T/ir3uSoDbgJDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkMIRVAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkMIRVAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC88EC32786
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724462153;
	bh=DL1tYuAidoGDCAm4iWIZmYcXgRSqEQ+YBQhDunxN6mI=;
	h=To:Subject:From:Date:From;
	b=fkMIRVAVyYHHS/SgvNdm4fzrRO3t0TW/Jj5JJQd0bt+iYeHpsLLQm4HNWiHXYOdBm
	 IWCMbXbQhH8Ofr/JL8ctNPtwIhSGYzW54BGBWGTL7EKIA2XTTSKcCbDGWho3qz6iK7
	 11gSDspguu5MKuCsfb1ax+N0X1EK9K/CeET+dVINzzvZsXsh7PdoQKSrkARcUBDRyE
	 EvKe3f9OAwtdv3j64ICvG+TRl15ESE1qrw0PtB4ipa33JEsXI0MHSWgXB2UuVzVAlR
	 tvmYOFngOQ2etXPfb0k7ugYKNkCJtG2ky38Ee+sB/Rt1FAynEEYTxZbByJl0Yk9PSR
	 rOJzgVzEzXp1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97289C5321E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172446215359.1172.10018049750070087748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201a8b96e91d86c35876709ade475576fbbb5b7a9675db0ab684f0896e044880
Date: Sat, 24 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724462153
