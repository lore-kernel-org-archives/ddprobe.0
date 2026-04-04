Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C443301486
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775293534; cv=none; b=beFvLfYgcPnXJNZEDEecRJZLTb6dEt1Lp2TZNv0GjulLPYUrJ1siB+ulcILFhLSliFRy/OgY4/KzDDeFuC00iVmbQa+KlchWC0ZwZwJU3ZCQ8wcpaGChLf9HFGlcjhLiuQqKIDi63OKNhnAYsOIYT+gSN9XC5Lej9RjoLoRjXZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775293534; c=relaxed/simple;
	bh=dgBjOLngFGiw0In9efNLA87X3pvKc3LHU1IYDfLJSU0=;
	h=To:Subject:From:Message-Id:Date; b=DzTANIVtyoVGAC07pqHrBumY6M4KSMJIo8Ax6APlfeW+EO5xS3LfIxSidnqb1HcBN6n0u+oSQ5v/JyyyVJ+EvqNPax7LSaLr9FtMKwSMnQzVOhWG2D6ngykqe35HZAGHe1zPejPdpdAev6jYM33IW2zzyYn10ZmWLBfTSdPyq78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7bkhgds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7bkhgds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43F4C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775293533;
	bh=dgBjOLngFGiw0In9efNLA87X3pvKc3LHU1IYDfLJSU0=;
	h=To:Subject:From:Date:From;
	b=s7bkhgdsMtvC4w1KOF2RroUtQSFLShrNnSNX2+MJ1HLk1XqZwyY4RCo8GohET2VBh
	 U5gQHGh6DWdjF8OEJfb0M8u66ScYD4Mgk9pQdvgeBPJVUzWiPASr79j+1LTb/zooIM
	 yTQqgk2QBvpwIcNLygcLtsmUtnvcAbl255AhpnIC5bMqyMUCNGFAwyyrBiKpwB65qm
	 mLmxbgxfBe1P3bJC5bmCqhL7dfq/jlfcrJRGJ2aeYTAZ2j4d4aHnnRJntz4oo6GFPP
	 TCbuJyHzvyyy6hOJDeGaDripNJI/Q0w2vsYLqpMZ1+fP9M275eiJ/Bv4U1zy5KFIlt
	 ioIOAzlUJccxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32F6E88D94
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529353370.9876.6109907679006370062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42539980417d56a152336d9ba28706fcca19bbb517664be6ef3df92b5ed71b5b
Date: Sat, 04 Apr 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775293533
