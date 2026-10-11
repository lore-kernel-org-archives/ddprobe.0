Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197532E7380
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791760834; cv=none; b=Jhh5ryq0hX769N1FS89VIq6y6JkX/y3/87HSFJs0NJaLvO9GfrhrUQAX9bHAabiq7zIRXTGh4+fU1n4cdpbyeBamViOEblDTviiSo1Cy0kgeOb7bGohc1FZjz5NH6iuMhAl4YfcFIU2zcszCTo2M+qtlPHb4lFIBrw54OQvNUFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791760834; c=relaxed/simple;
	bh=YxJyhc4GSF/OzNFAavwIvOm0TAlhscZmnvBKPG4F7sI=;
	h=To:Subject:From:Message-Id:Date; b=FRQvR1riMXVIZDHSJFTy9o1CKBWYDUrXPiTaX/8nwJj4xsHDUnWs0LwpSu0G/AA4nVgXB1biS+6g6nI4LNy6s6cshNIvC+sK3ywSwfePHoDuYmIdXnpRa38foMo6dNqsb9uo3bB5SuYA5pBNe1A1+N3dsqPeAN29k1ktNR1ABvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDEXFXNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDEXFXNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ED1C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791760833;
	bh=YxJyhc4GSF/OzNFAavwIvOm0TAlhscZmnvBKPG4F7sI=;
	h=To:Subject:From:Date:From;
	b=UDEXFXNrJoCCeceYSCfV/ObtIyiAGZLVlyDt4bD6OBTfc5poJTMYxxx8vP2PZbZgA
	 GSjgCqI+gvY8Kk5GNl0MnWhmznjIkHxIOemt3oYKU/Wv6AvMwllpRhJI8M/qLt+0jy
	 w6fP9wQ6/6MQmW6+3Oc0nLj9ldxLovyuHX8Tln+xHCXrswrILHdkpzK6PzuxVVJvjO
	 L+VpFrfqSxu7CVDbJowARS8+1+utIh9F+C3Bi6bBWJfqr5QeK12GwQKHMQtLzt05yg
	 zxpq40Kz932HDXbpuGY2kyz2S7F507ZZoa1K7bBvkAl8Nsn/PDW2tp/TXIqHWizTth
	 J0A4ONdtIyl/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCB1CA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176083368.11730.548324258710648144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a3315875819deaf3d92536e9d0e6f72f17499349478ac1f2c1ee3b7cecc9b3
Date: Sun, 11 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791760833
