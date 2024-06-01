Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656D817BD2
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717223663; cv=none; b=j7p0v53RIT3iN/kqDPQc0NOLycw+iLyWW4w0ZbGBasmIk9i8jYAwYahYEUSARfmaczu03sR/Sysbm5gyR/tqGEbf+4vL6NqvvnwRFYKeu+0iH+ew8gxqVu7rlIT6r4bSAZZB1/hXXSzzETDXsp0hf8BM5DaBEhVIP9Deka+pYGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717223663; c=relaxed/simple;
	bh=41xDpzeLp7HinybiMddTh6pdXvoyWPxNobatflhQ8eg=;
	h=To:Subject:From:Message-Id:Date; b=NuXZ1IH+QkledDOURbH4p2kPibSDYuMti50aWRydzA23w9UZaMNjUL1qlbUO4Kb2qFDLGvJEpuuaAOCfhPFTt+z3BDNDduHTBmAO+yNVEi8w0mHCzKD4C5L8viVnfDkvShvyvTkUYnlV31SVa55iVoSdie8PLCqXhRsro/8Dy3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuW8QEv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuW8QEv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D882BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717223662;
	bh=41xDpzeLp7HinybiMddTh6pdXvoyWPxNobatflhQ8eg=;
	h=To:Subject:From:Date:From;
	b=JuW8QEv9FeVw2JJsRoLmPhSAiPap4Pqq8iDRNh74NYWPH0M0slrGxLqI7OhAPcr1S
	 qcbPTukY6QV2OXy6Q1+sAugW6NBDA6+iFnJTijk2mGHPhhSM1IfKHjJOJdmknoa6PO
	 usQIZUIUjVk8WDjJrlTv3g33sn56WBhoAP3Zrgxyuoj7YcodWZMGQf91IO8vPTU3PF
	 mq6OHCM8I3G5jWo4ijawBa754NLGGx0B1/8/wxdzHfkc8wld4xj99uj5/DFRXx/xF4
	 QRbmgfzQuDcXhiOM2rmzqf3zP1AUMnVBLHLZRzbONGJLwT0kA0ZIIo6FyyhpC0xSQS
	 wR02PK8zU2EGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE03C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722366277.30983.17333948133601613227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ab5595205e6624b1eb5f866e1480160d7b9fc4c41c61751f3ef6fd7274f19c
Date: Sat, 01 Jun 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717223662
