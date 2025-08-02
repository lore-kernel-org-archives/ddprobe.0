Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FA7238144
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754140194; cv=none; b=FFr4855h44vNuOtnb1xiI58jNHLQOknCH1j6vo5uqxialGXlCzNo9q+umpKxXm4raM/dgiRy1NDpwkBEFyN/wd1YF6u6aRRMIG/MGSLRK2wcHoq5mNiiCXTw+ChBvAYh+P1BRakkquLBzctBSM3PkICeezCnxgwmU59N0ziy0zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754140194; c=relaxed/simple;
	bh=nbfkdqBScuHwtiNeAgkuRKJtnpExXMqskyNWUNOZhz4=;
	h=To:Subject:From:Message-Id:Date; b=tN0J5R7rVf7NAUHFhruzl7ViWlVnNMhK7uWD2D75EcEdV/FnsCiGh/Jr+ku+WSSkENDRG3RWkFHyh4Cf3Xk9DsiQL6wxAgQqpujJywzeFY42U5t01LeBq5Hz3DebKQ5yI+RRZIQ0c3o/DjyImcH6zgR72+ZCfrBHsw186D2C5uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptaMBodK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptaMBodK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65B5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754140193;
	bh=nbfkdqBScuHwtiNeAgkuRKJtnpExXMqskyNWUNOZhz4=;
	h=To:Subject:From:Date:From;
	b=ptaMBodK+h2vxCgwqof6nG0Zo5bxgoiN/kzX0tedCGrt0PJGL3bi87n7kcM982s8Z
	 TSKrrwGwowQmW8HYMxdXquP20HZd9TwHJ/u8EHpHkXu/flMywW5yl0m9FuPiubFDz1
	 YSHnsg+vd1Bh7bG1BbP94Way/nGyH1Cv/1HrDOTqGMR8M8h6EM9bdcJX1pbjVw8pA+
	 3Mu8X+M/BQu7PbgYahJveVQm9DIRUckPhsgnD5A4aqJn/34FWRbaGRGvxTIoTEMlen
	 C/rmLcrmp+79DNKExkCXqqfGN3SFWRB8Yg58+YWA/3ORyc0t6kLh8kzKQFhT2/RknR
	 Jp0ujnDaeBMrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95088C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414019358.22461.6069534021773999621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e7c35b53bfc9ebcc2a357a64ae9218034eb60f9853429918768a33f1b6d3d6
Date: Sat, 02 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754140193
