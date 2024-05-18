Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B03529A2
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716051143; cv=none; b=GkyOEwxG7iLie7CDgqivn2lZbTNB1pc+1VQTwsCiv8UKWwPbJE88qw2dcP50O4QnfCOURTSOT0EfSLOD56vOpBDMThX4ccbdoV2gwASQQu/Oc6Rbhl5BqzC8QV5LcGmMf/uoxWjnzNRXD7TJ0wn2ZUjUjzvEn9iU6T5MoiAI8nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716051143; c=relaxed/simple;
	bh=vBtMyVrwA5ZPSOpSuRSQqdlISNHAlehPUBC0I9MKoLk=;
	h=To:Subject:From:Message-Id:Date; b=rhhRONz2XC6FH6PMFOZNipouw0lBk83y20kd79AsnNk5ufGHp8QyRvSh8gzBwKG5tsZ8NIBxsNUKqjyxXhMZH/ZwXFDBu5nJd6PGyVU9qeVRSR8DTbTk0pulw+NluBnBHe3GYiJKsZ23b2EU2mXzLkXmaKzYhQru249epGUv5Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5mijpXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5mijpXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD055C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716051142;
	bh=vBtMyVrwA5ZPSOpSuRSQqdlISNHAlehPUBC0I9MKoLk=;
	h=To:Subject:From:Date:From;
	b=X5mijpXwfwXB/Ccb5ddzF0R0lPiszhSwq/7MzDnp6XClaFQbaM7WoKskPSSh9rbcD
	 ck4onn8qdJvbuUA58ffmqOtpLTEPiwsWGeNsut3HkabtgBLgvvEhnQ9eYOskdPmnhQ
	 XeCXPn40HwslcLTPCa5bHwfYaJpy4/AahKeGVapSPGEKPRSlh6UkeVkXvdaW7abOSK
	 uMl6Npg3GDFzakbf4UhAxvnywxQB34vLroOeC1fyVMOaFEFCOS1q9c4d3dKGp5WZZV
	 aiz8Tf17ri6l9BYX6nTMB7LlVDY1Q9KiexWJa+MHfX0eKZESBFIU65NkxSc2A+yTr1
	 U449N20sx6X1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C976AC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171605114278.19752.7696182312303333507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed848257f38ccbd6c16ef189d96afe7fda268ad04254a67570d928cdf49f841b
Date: Sat, 18 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716051142
