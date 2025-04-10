Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F530284B33
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744288794; cv=none; b=EappPkAMXwvft6vtQExS+Rxr06D9rphmyoBH5GngbYw4syopMBQ8MQ2LO0kt7+5YoW43nz6l9BYyzSQRleCSguuZdmwi5/QUSZL0vVYwPc/XD8fw93IUD7jBmnZXqBnXO9HLFa5b78Jer0aCKpJjYzXJIBpwRQvXPArcJybM4ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744288794; c=relaxed/simple;
	bh=WherHK9dnD++Wzz6bx0uznct8UdlcbdUPj23noEJ3R8=;
	h=To:Subject:From:Message-Id:Date; b=qWmMv7OCfTLllqLEkK7HRDtfUMUKM0cy+dOvNbqw4GljZ4/JxrUQ0o/1BddNagpPNOl6Mm+IrNl0Fy0FGiizzKb7fWSq0W0W/QeTwGrBfigNVWh7uTP0UtbMjqrwwsub0JMci6vUygqBvDsJxiiDV7K2T5lpHVHVwsUrRjDnKGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWH1b6Ck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWH1b6Ck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC564C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744288793;
	bh=WherHK9dnD++Wzz6bx0uznct8UdlcbdUPj23noEJ3R8=;
	h=To:Subject:From:Date:From;
	b=uWH1b6CkUAfpQ0J8rIRWBzzc8QiV67GYYYZ0HJuzsplRf+oUFvJG/7noXsddNoAnl
	 MF6YjUFeuXnRCIW7LX1sUhl/IJ26zR6Qsx7cJWF6OhkEJ676VsKlGi7FLuwKHT2qMK
	 +oqOTYX8w4ulXsFgYjpr429KFyW8TweTfaCtzny2q0w7EYpPD7v2ZmCsuN3xZ0WwXW
	 HduMN1CdzzBtpIU6/0wb2HhBeXCe5R98w5HrLvXLYDluAJf+zDnB3DprDufQXgun74
	 xsCj16x8XEVFJtRmRMR/Yky+PykY2LTtO2OJJzEB0Ujp6MqRplwqz6rfyVwQxCsIjn
	 EoFJVvAMLyYDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F0FC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428879365.8282.1122329007440915992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8439395cc9e01815a94312ff16bc8902c154e3fb229d1285271bc19125abce25
Date: Thu, 10 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744288793
