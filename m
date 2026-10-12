Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525843C4563
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791846034; cv=none; b=GD3O8NXODqeOB+Em1egznNzzxDv7r5hzlX0UtqR+DrJfptqnchsPRmR/QQXekKwnzAhl7ujG5FQSMsa/qV2CSYsCem5hKnG+vZrvefnIpKQJ1otiXmkry4XzKF/WRefwSiwxZqwPAK3XfNNJmXADQe44L3v+Ov7Ra6+fghBA4hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791846034; c=relaxed/simple;
	bh=9168bJWr/wx3NbCsd6y/XvT1K9AaW9FsTkVfK2Myp1U=;
	h=To:Subject:From:Message-Id:Date; b=b1G8pwoja4J5RBIOxS8NpAtIn4638Jq9fpbczRbH5doQ17TyKtHlA5HxegEOZ8WLaaDN9j6Qe+v/lJBrDPSmvHT1vLV9FyoH4yoR/5OdDVLM04nB1SNM/nFp2WS/KJx7ObcJHKRyc8Tqog31+rNLB7YRKJ87yd/nB12hnPa4Rkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAPDdajE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAPDdajE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF0CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791846033;
	bh=9168bJWr/wx3NbCsd6y/XvT1K9AaW9FsTkVfK2Myp1U=;
	h=To:Subject:From:Date:From;
	b=PAPDdajE6hXRLOgZ7KdIEtaiXGNwLPmEHdoHqCE6L9ZVe39depJSsqXYWJSvzMCoC
	 7rw0l3UB0fajwNIQuYEsspFckgfp2sn8jiAoGnvKWXjjo4ZbOv4PT0TcaMn7QmKCJO
	 qixtF8KHiDX1ErRitedi9EQeaMtBffeacD7Hy/BD2hUAjMvpcJc2/Ns46HK6Qp6yPc
	 Wa/y7+9lxXF/Vy7Iwyy/1ZJJV84WZWdURv6RDbiG/TgAM/+s3uWxm3c5N8wub7xIz3
	 +cCHb3BrDxZ46trpoaVSccKxMglZFx7oLWQM/Ay8T61uA+RykkT1Xw6Sr2RXQWqAHl
	 SDeXtrwgGdyJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB768CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184603369.14906.3073235291055247111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786e770ad5d5b6fa2e3c91e502feae01a2dd310aa4e8a4e7492727ca6da28487
Date: Mon, 12 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791846033
