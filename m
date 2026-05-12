Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5E63D25C6
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778604034; cv=none; b=cU6r7B+yv1yj+9+ojLV0bEPT2ei03Vmv67ax6e+xjwcb/F4qSXn/E7SRYTmNcOvIT9yZgZ5GVCY4aSXIPbizZHxgbO2kCbJPvHPHnBjO/m7Kf2SMo/mN0B7NaSkWfijfA+GMJDx+/OU1G4DMk/qehjK5cytXtB6Iz6jgBp5CRGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778604034; c=relaxed/simple;
	bh=TwZO4SanuW4yP3lkbJlbh9S7UPggCLLUny8dUPx/rro=;
	h=To:Subject:From:Message-Id:Date; b=W12mXHh0fyBWV6bgmFCD2JNY5qOZjx2zaGUuxumYO6h/ZMNhzlo5eO5HoGgYIFrILFxoSsD0BATJVbQTnN4CO9g1e0mZROoKxOJY+zRTBq893Pp5ZOXjZjjVdN3COa5/8J5wEvhGgZFYTQkPcS17I5HULBoC9LE38zxZrH3QXxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heZj6rwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heZj6rwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B986AC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778604033;
	bh=TwZO4SanuW4yP3lkbJlbh9S7UPggCLLUny8dUPx/rro=;
	h=To:Subject:From:Date:From;
	b=heZj6rwykIjtztIMyQgBqQnrnRb6gB4sb1GPgm8mp6/PVHUyvLCEoK8uKbHH3S4GN
	 +ltCnttpAJwTsJhgLrGHXBtTlE9w/PRBSp95V+n1JeUUiLqPXheWlUQpMi1ILoIfNs
	 avKzqfpj305G+N2J570bOMm4GeNhGb01C/xVoo6WzJM0zIY2Ra9ShJIHkt+w0JEWpT
	 xeXLrBqaWFmBZqNg+YKARKCmbmJmQRHJ/lVM24qekEhR2BFleZx/aKzPU+cvbYuATk
	 e6qfaJA1KHiCJuYVskMQnTGYB0GLxYPtlnV5RI2nVYKiBNWRhMiqdSA69+oWmtdyww
	 dEVE0++d+22EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE3ACD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860403368.10295.16843045497455341405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03ea98ec198912d120e9a1d011beee6d7c8f17e1e9463352bf534a14b08c548
Date: Tue, 12 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778604033
