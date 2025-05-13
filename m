Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2912153C1
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747175994; cv=none; b=lf41ppY8ctMM/wBlKDIz9r8LENuQTYaazq3TgYvh8zAu/mglNlP3gsdlmocjtiVV/t1Cb7DKoS7J0/E/kky/P91DA2/cmjSmIxyuGPSLEkoza307ho+K2xg3yVl9Hnnn707Tmx0TNrIf3FjpQWKxFcuZ4lMMGT5CnuQ/Nrqs0JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747175994; c=relaxed/simple;
	bh=+IWDl6Hr4HBE3SAzZP8r+2KYb2XqfD6jP2GcWTKoMjo=;
	h=To:Subject:From:Message-Id:Date; b=SNDed0+vtaXld8xr2L1kXIrocm5wynlkITzEGAhbYE2LkzFsisWOzPauppwE+92k2l5MKruw6Gg17TBM8Lp253Nuv+3QECpVySVS0N3W4pNRVQvq9a1OMGsKJrwlUyFi3shTw6xN1CQzvpc7ilWO9JcDDEgkBJOBm9LuCGmFGYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLW2BRNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLW2BRNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D665C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747175993;
	bh=+IWDl6Hr4HBE3SAzZP8r+2KYb2XqfD6jP2GcWTKoMjo=;
	h=To:Subject:From:Date:From;
	b=WLW2BRNp2/WLee8mjfJdYx+QCNbUEHztCaxTBqbRxwDkjGbmYBZYO6ZUpSbzDcN3/
	 JTurBtt8HW2kVXb1EktusN+Z0RO4BhjmvY49MHyKz8v179/mN60bTEgbwzct07z55f
	 JSndDD5BGAq8sPi0WOx+BXlxA1GGABVveaOLeEOzLm8vZfFgscrakf6ovLm0bcU8HN
	 jdn6FeaEUOjxekk+cEyybOXX6bhaNPhwUYc1oX8YvasrW7YKD0EfToGbWFSbiy6Yni
	 EFuO63XxrfQd+WP/4/rh5IXYSI70fc9TMB+8QBOB2rR+58SGS39xLIt7hdLgW03AUt
	 RR74XjiLSo+oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E38FC3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717599357.26364.2842549526181596231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac12a47e1f6514d3c2b0f8c4e65934e4598699729183468658d5b7f4193815a
Date: Tue, 13 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747175993
