Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439DB17BBE
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723978554; cv=none; b=hmfdaJ+qNoIkWzYBVWpgNqCjKtNiFF7EBL+vPHpA+vzvxeBZxEPC1iws7F3ViWfCgT5sBzuAkkevo4iv20Alwi9yrevaiXEFxL04KcY7jNmK1DWyck47f2HzZLueBLqNqNPrmnuNWv2hF/FhSx/D1NtPEOafmXaVZyh85/ddX0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723978554; c=relaxed/simple;
	bh=CvWHub8vtg8SzsMtR+TCe9SLKNbjwvdZRVKbcJgKwnY=;
	h=To:Subject:From:Message-Id:Date; b=nUvnnvXItp6G3YHaXMNTI1PZtU1muWd6zAA3XavTILABe+zO2y8Pn6e4tUeDpSrTXfTfMq6A7HdKk1jueDrenFplz4mwjIRIv4md+e1FCvqwlDpaeEGUbASzHulyHfUUVirvlIKn90frVdtUn4bb+RGexI0eBvxKDX8gNNQsXuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmfTFvLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmfTFvLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13DEC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723978553;
	bh=CvWHub8vtg8SzsMtR+TCe9SLKNbjwvdZRVKbcJgKwnY=;
	h=To:Subject:From:Date:From;
	b=hmfTFvLWAHlrghQe30PMMVsEskKc9Yj6ZKwa/zUZnof5wLIkWPKrjeoBtjQSC8USg
	 JLJ7IkkHX5EtE+52pC+ixZY9qIUoASaI0hAojKFLzu5k/ucp4qGR14ExcaQ/CtaTyj
	 w6M1o6D4UMWl4YBE+SkNbf25WKkoqXWLNb2aIMbSGxtNTT8Px3ImRtxbxT/mctXp4w
	 LWWC/9gUH/JGPDpvChyYlGLjG+5eXKoN7M2dq9Q85/EkuK6CaqCxYES1ht9SRKJefJ
	 SvoVgPU9b++QwWNvvJCep5ERUVbFSdb4erJtfFN4IDeJo2/Y98YiUvz0qUy0RcZCPF
	 +klK5hLfU6IPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD40AC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172397855367.30003.8998129270259229564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8dbbcd113d35ebab133e2d51f704fa93897f6b77c67381333530407da77a5fd
Date: Sun, 18 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723978553
