Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4411401B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753544394; cv=none; b=N3mut60sPfu8ZCp2EsAObc3+MiYXu35U5IFuY1CtTgFUx/ILiy/4qoxaZFS4Q1xyiXG3LJZwpRl7mRFIlkbxZwFV2iY8Nv/V4FSKJ0WsaDWBXFU1NRaIrmQWlxiSVU6dnu2jB4XO6762ffut9WCQ6Aq7kX2/b3DkAxEtWoEO1F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753544394; c=relaxed/simple;
	bh=qBZkF4ZlQss82Iydu4zJFXJ5ivJaJ3g9uQwSXd/mZDU=;
	h=To:Subject:From:Message-Id:Date; b=DIZl72m0Ixj3mZad0GnUdCrKeO/flvjAxJbsW0IpYOZWy6seFrgtnPCutetN0p6m8BTaFckLitaJjVF8NdmHcdGMTPGkSt3HRWwjCLqHmXHHLyI2Ht/Mn25w/4pnoqGHfGVeLDhdRnHizqDJw2xu/UL9QJ9qY99WRCGqHp5g0j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SX2eCWQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SX2eCWQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BEDC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753544393;
	bh=qBZkF4ZlQss82Iydu4zJFXJ5ivJaJ3g9uQwSXd/mZDU=;
	h=To:Subject:From:Date:From;
	b=SX2eCWQHwLp1vZpbB6R0QbXvfUJnU5dTkdkb2j/Lklxv78/ZhJ3EupF9Lu1sxczgl
	 9q3k6GLRNU/7Hln54vZ0zqmFef8qpsPbFqnLB9KC+iPSAxVtQL/m/uBVFgtCL0aOTA
	 +VC86mBCADaiyaVGkKBdpx6nD7wir6toquacOT0BmCbFf9/k+faYy2+wP1y7vctM38
	 sRFc+v6w2ZoS/SUX8og8tU5cTUpi+xJxKL2uYLIrcQpPN1MdZI2Wi4h2XagrMXbrFV
	 CafVSTvSkVzKBTYDpKz8fz8ZjXIdSprj6NYAwnUY1T6Z3nwp8/zjd8IH+9v4CiBZMt
	 szbXYCXl6h0YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BBC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354439357.21354.18377349623118672184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272db3a7386c793aaddde447138129b963e776e5ecfa8a5abe958be9746e890b
Date: Sat, 26 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753544393
