Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0391E47C0F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792229434; cv=none; b=Yoy5+r3csnef7EKFFaP1F+y85/0ohjE1zTp3C1K4Zpx5IHvzTj7Y+0y8kK0Isn6RBbYMeLUS4hL0Luo/0t9XWSP6jT5lDNzbpmPXGbLczDhD83Z/aMGRUNWa+UbV5ybrLybF7ID990W8y3vTMiO00T8ID7tJOEfbzkTs7q2yA4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792229434; c=relaxed/simple;
	bh=d1IRiRCzySj15LnaCSWOmsrHTW75AhtIhC7zrWBbs10=;
	h=To:Subject:From:Message-Id:Date; b=VQFTjF/b7zr3/4TtEmq7BPqKUy0p2tus7sG97oWdpvY2ip9QJn2j2H4JOgz9z/mA3emxSvWTTyX2K2ZXNNpgMPAl0Wcm3siGhoWHPiqSua14MxQvkNsXFH17S3ETk2jwQ28yd5uugyXVWNr9ERxCU55rA4W/wln6wwkPCxzpD8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqroMa4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqroMa4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D72C2BCFC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792229433;
	bh=d1IRiRCzySj15LnaCSWOmsrHTW75AhtIhC7zrWBbs10=;
	h=To:Subject:From:Date:From;
	b=RqroMa4iETaSMTnOm70CsSuyPtlt1PcdbSIRdBCHqnVwuV7B7vzJpj6Iqt2RSuVee
	 lTzvBXjHYXgzAV3y8fTzkA+eEDUbBGA2GayYAb+zk8DK2K8pLe6FbHOelYPZ1L59IY
	 MuVl4LcE9jYRIoLB/LRZVHK3h/D8fOp46MieApyOru4lsILJutUK25iqiuQXvsTZMZ
	 tkJpFwOEc6LK7bYOh2Ga0MFHyDD+459Dht+tujfV6Z3GKuLwZT+rLucL3uo0ynNXjX
	 t7lZEMqe4iMQMyoicH1McYh27aSaCVabx2kUX6pUZ09J1DGIEbenJQ+0RkXL0I0A4S
	 ryrXXnt9m67mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF65CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222943369.22233.3198781816722284317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7300133bbfdd9e4287b62e8a0aba9f1bb0f097be0b8cc30987b0964005300697
Date: Sat, 17 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792229433
