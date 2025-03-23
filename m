Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437FB19007D
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742716194; cv=none; b=Fjwlha7cNVdILHDT3NmSLaqH96rmbnDky2JhiNI5CaS4fMazeTRph7QFJ0uqXewp2MpWJvjMgr3Xls8XB0iGwUnWNZcXX/GawTgyu5Jnk+L4P3avqVCCtUx0xx7qJ6lghWcoeM25bdvtkDjQot1p8qNieWpPfLazcITMhpPOxBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742716194; c=relaxed/simple;
	bh=XK7AEr3cOqBa1o7DGjeYartyJ0+SEhYwxgYQENp5so0=;
	h=To:Subject:From:Message-Id:Date; b=YMe/4UTI3ZFxUCVq/lW7GQ7jyejPCEfO2juZnK2RHzJmWZabYfIb9cul9oz+TVZl/MSzRqpAT4B5Dv+0LxE6lgBZANMYDHMsE32JP8QwSUqeFXY59xdynyxKRcPay40wMnUeGvWUGHyAvb99qKRla+hWNGpv4dfCVzYsTEUamg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIDtn+P0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIDtn+P0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A56C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742716193;
	bh=XK7AEr3cOqBa1o7DGjeYartyJ0+SEhYwxgYQENp5so0=;
	h=To:Subject:From:Date:From;
	b=RIDtn+P0NsP+MsUeKZk9rAFml6xvY5g23HadHZWHk0FUz7W/ZL0ug8qvsSxkvDSo5
	 ohO9Etwl3M5gYrXocwoY+y4Q+z/rCP5dZVRW6a3J69GnwaeIheAFu/A2oLdepbjqi9
	 2IYJWnTsT8Kd9wYMAhPdyNQmMLBk3pVTtJnA8IRVJ7uQRMvCb0bZ+inBrzNKctAn2D
	 0o/9a8uFqf/xAc5fNUztVIV2tfbdaOdtT7YLHU30y6qCe03x6Oxm5I7VEH5x0TjEck
	 +xq2b3Rfk5aNBltU5ESpwO4NEwX5ROd4IS9QN4Iix81MJcxePyJJz86hRb1E4RkyAs
	 DLy1Y0gUvUI/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77F1C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174271619365.16539.1998430731492479816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6649dfb566040b06cc0d32bae344e44d13bc2fa5a4176163b71d50ee231d91c
Date: Sun, 23 Mar 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742716193
