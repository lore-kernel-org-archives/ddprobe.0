Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366FF1D968B
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728326154; cv=none; b=LSN7m8g3MNpz5SwyIrAG1ZhZKMBFnvfEcNT7D7p37fnx+DxOgcHMnBkcZ4WefQ/+Wp0d5H8H0WNKe5C0+4kVelhtldKb03n3w8hFjh51OL04mnYhQZK1VZdfjtGh1anMUahWRZD+A3GSWq9irvyre8klv0gpcJ6wSOWP7UvrKfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728326154; c=relaxed/simple;
	bh=S5rmDEZ1+i/l0wKWW2IqQ3XQNSgCcy3PWdlBPNn/f7g=;
	h=To:Subject:From:Message-Id:Date; b=W5128uo+yTMfSkq3kVqCLKPE8xPmtcCnOTStwD6jxmiC5HiXRV0ZJiBTwpt5k7w/kUdJD0Kyc6kzwvvByqLQYklvGX7bh9ggo7Rj+WLNE8B0JWKF96J5Sy+EL03c5LXmL8RcPNgjz1Y56Oq54OVdkZPa8z3av0q29f/GSHXblN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDTHNAYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDTHNAYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6554C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728326153;
	bh=S5rmDEZ1+i/l0wKWW2IqQ3XQNSgCcy3PWdlBPNn/f7g=;
	h=To:Subject:From:Date:From;
	b=HDTHNAYf1hdTbN+BLU2uGttacRJMB+FO0h7NeulVAtJHVO/VlmqL/HLc5JP9A4zf7
	 4ImQPXGGpbVUHVFwnHYUoK09Gn0u22iCnQD/GaphgKlPvJIRfnyBnd4N3gybPW97NF
	 P64xvgfOMRbZmOi83eULsnwnrfjfyhQKzlsItmFV6OOFg1f0M0b2py2VrpeNvjjFIJ
	 6DqilImKkXt8d9jIBhYVQOnByfr6CDrwu+x51TmDJAWXmNcBTkqtO+QZutwnxVUXpZ
	 1xZ1wAkkZYXA2oK7tOqljezJ2QfBuGKnXEoi4p1mf0Uk/Gh/16LE3MGKlWKB0qfmVa
	 nIE320xVYQ6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9724ACFB453
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832615361.28825.9532920170685789753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1efd5d6e0d4730975e6caf7a541b0b74a7ba1ad53abb70ac05f2cb2d7760070a
Date: Mon, 07 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728326153
