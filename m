Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B93C339B34
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770121434; cv=none; b=lEbNtqWSQfQb4+fgaDmLyMff1w/h/7nzqYxoj9Gg4cWahi2BAX4WJWFxlmsv1hQyZXQykJr59UTCmiucNCvmMvUb55Q7hppOcR1tTimDXo5XVSE3ZDcqTnKKYYLOAjv0Yd19I67gvAKc2q7XxdSeaS3DixgN093wEQpQfBLz1Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770121434; c=relaxed/simple;
	bh=utX7NjVFNZbxprilv9gqOfdqAKtt68tGT+yEH1+r2TI=;
	h=To:Subject:From:Message-Id:Date; b=K7t8TcFCyct2MBX6gLdOgTnfVxRU+bqSXnQeDMv+XfUdREEDXRikVl97EZgm/emGDeAe6Be6TsLmvqguPzHJkAtxy7atf13QqDFVUbz7fuqzfiK+cp3PdjGOVHZH1cNAx0FFmES5Nvx8p+JgKNZme1B7LaIO25Tb3Jsex7PfIes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USxyO41B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USxyO41B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9549C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770121433;
	bh=utX7NjVFNZbxprilv9gqOfdqAKtt68tGT+yEH1+r2TI=;
	h=To:Subject:From:Date:From;
	b=USxyO41Bsy+KirHedFPk382RX3oD/y9boj3Gx4OidQW/uUfQ0UNOvYzlkppuZtjGI
	 sGSRbfoHS6+zJEQRljhD9oPsMzpAvAQKp/Opcy1z9Iv6YsHtz76EGeaHzzjOi0G5QX
	 0BEz8Zy6CYzU5XgNuhpdSAihdvf2vW/KzKgJSB0pVJqpr8X2DKJbxztWK0jNFU+aTI
	 zjQQWr/oB7m+zUtbLtQ3nzwvl6d9HXFC/YRnCiXylS6XmP7QSYrZcSwg5v/vAyUqKd
	 KIo7LtmKZSMGJUObU5i482oD/Vs9xFIc9pWvWpBOMMwsYRoYbMyMBJrzAKM7+W46TY
	 iIU00qrzeKATA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97755E87820
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012143360.2977.16644390143453320455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77259965f58c543719a8886bf4d04f6e8285138e36f8614aebd532fa6edf6a95
Date: Tue, 03 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770121433
