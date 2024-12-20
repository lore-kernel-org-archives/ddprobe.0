Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3079E4A08
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734683754; cv=none; b=lPi/Hb+9h9Xa39qvpKxnqI2r34XNUcHZR1vdnGe1aB7z1KsbvaCnSt59GzKW5t20KjtFyF+ulBIScKtKFlax5Uu7jxoMEvPvwrvnXpdn0xKF1dUqcvPoPQwPHYc3QbKB/fRnQsJg8iF1KG2tsYfh/piZD5K7XE+bwkLM2q/duXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734683754; c=relaxed/simple;
	bh=ujvfQEGEI/JnGN2QyIeyAy6gUTFC/NVuo1drwmBE5/g=;
	h=To:Subject:From:Message-Id:Date; b=sXMXHX0bXDgsUQiLar6UZ+i+mg5bunwvBYoM7WLtswVr6N5PVXYa4ApRt5GqQJ52JxbGW4QbhcwOpCTiouo24ssGF9cGzYth8jAmYWdAo4C6ao/OqDxpdiateW+WmV8VABa3tvx6iSsSLCFvyznjov+nOj05vD+33q0+yhyUgdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucfDtIpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucfDtIpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A993AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734683753;
	bh=ujvfQEGEI/JnGN2QyIeyAy6gUTFC/NVuo1drwmBE5/g=;
	h=To:Subject:From:Date:From;
	b=ucfDtIpbQwJ7d+IZa0+zjN0UGCIMr7LqPb3ToywwMadf9KK5ZN1KldtMX4QKnylhc
	 E1E3ruH6mhZbvWAipYMOO0FPcPhM309BNAzzyMAnIAu0xNNsOpbPfgV3PGYmW+4EUA
	 uiwAcVlD+blNcmq9z4gsXIR6EGuBfMIDWXVO/bjiBMDbpSrgmLr0VtzjzMIyuvsccj
	 u3nHQFzzOOtaMlx/5GBSXizRuvesDNvFduUXvVbiDW0iEJacVtiehoqdw5qKIW9Uyk
	 6zl7T3dwaKO29hgKobQ6001120y/Lc/9YQ4n7m5vVJygYac1xhQ+LaHZADcVohCLmE
	 Mihm+PQ/K+zgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95250E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468375360.6910.6751239397032303782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de550ac9b33fff008fb8f2158f88d0229a0169ed5009a22f72b0299a806ca12
Date: Fri, 20 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734683753
