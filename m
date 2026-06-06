Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414272417D9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780761874; cv=none; b=ZK6oCpy9F0dHpNkR259vD/0WGV7v77wPxZCxagjD+ovs+ta4HdY9lZ9Db0cEqqWCxUQ05NpjUT6coO6NnwNmFZgugreIR+095DLNUPpz0g3lxUEMXYRNYBStBqDYXj8gL8cnXS/Je216sN1E1IHveD/VlcOcnrOdm5DYNnLIWQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780761874; c=relaxed/simple;
	bh=n8W2w+BKoPdacHx0PEfQyraMQz2TKaj7kUmqDPbs7ms=;
	h=To:Subject:From:Message-Id:Date; b=IWJJxtSmyIdZ9rV4PazMAmO0RvgdkCFi06woBTRCU8F5qt/nQHZet27AuyUkH6ueNkMR3uXa0lTLDJ/q4Y+KGLMiglORUqTkguMgz2OUQlL8Mr6F7BqZ+3FwEVxKXeNYJ0805fxT17FcC93sePPJ5J88RU570ugGO378slol3P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVM5mE6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVM5mE6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DDBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780761873;
	bh=n8W2w+BKoPdacHx0PEfQyraMQz2TKaj7kUmqDPbs7ms=;
	h=To:Subject:From:Date:From;
	b=pVM5mE6pSFqs/PDehR8XZAytorhgkB/paxxUyNKc5HVeWcr1tY85najZFsgywP+2y
	 NPEKYzKg1y0P4jMbenGJLSpFqAAn5ANZS7Ke59T3c6G0VVc5mDh2TsH1jpRG/y2vb+
	 iH5cNHwwRLjoZ+WL6mnsGM3nAeFILix0FhmJDyWf6e3LKgABDmewzV62LmVMNpf1mW
	 J1wzRsl/edy4vEJSpqBS26z2X29ZPaYSXUb6kL6A+bybOUh9QxPgajJxokPSlDvzDY
	 ICBBK/wReakMLsvo4eVdmKhZGQ20jiA+Xve+s94smZwMMPKcMLGxTUMqSuH1GLxCeg
	 X5AAcKw9YAdLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA74BCD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 16:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076187368.21819.13663403306799549195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585ee1b2885e873523dbab34b68dc8932960b0825fa63c6769b911691b01b60d
Date: Sat, 06 Jun 2026 16:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780761873
