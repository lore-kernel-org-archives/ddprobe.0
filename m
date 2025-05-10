Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3952A1C84BC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746883794; cv=none; b=DrinnfZ8br4vqS0tvTp6crnkZ+PdRc+hUXcn3X5vZwYW4oONfX87oxuT07VXwy+shTJ/VGMz4jZnIEhrIJtyDUkEGFgCBmqEu4zuR2H+viDBavdpCQpZ87jrdbM29usc4JiiAt272TzKSJLf4is6FVn0TotIVe+ZGnGKvZ7zwoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746883794; c=relaxed/simple;
	bh=zTrqZ4KHL+2jr8vipoH8Mm87CSKfXBwawzerJvzkYZs=;
	h=To:Subject:From:Message-Id:Date; b=JeNVg4ReEOj0rXaSHg17kNXYv7q5tcikghpoDjy/1RSrCfrMeecC4hJhjC+lbFuap0AoTc46u1b95Y1/Bc7Ca9Buq8amifrEL5m83NFdu4iK6GqKAyDjkI0U3Nn8HAgxQ8Oh2vwXyG7ZtF/WYib6xsjP3QbOtP1uaOfikJSCZsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lY8Gl+sG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lY8Gl+sG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F58C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746883793;
	bh=zTrqZ4KHL+2jr8vipoH8Mm87CSKfXBwawzerJvzkYZs=;
	h=To:Subject:From:Date:From;
	b=lY8Gl+sGlmZ7kANyMfG4xbl12IvXDGR7XVEJSkwwgJMICT2uXRxPYCNEOgCcSgAhC
	 Tqa641I2TQBAoxodUULR+s/AfYTGxGv6EG945KFkW3GbKGA9I/oS8Utj8wr9d7u8sv
	 J2H9Hi5grh/NjFK7oCskK1hDigO74s8OYPqYjNqgS1q+pwUhbSAneMLFmALONted2N
	 r9ERO/xq0+NdmAN+29M+Y9aFTAxBzuVeynlxSvttV+/5/4X3ve6sMShKEEt/XmGJK5
	 iWUgAavmn7Gy2OB4IfnbYEIoMuTggcmHfaCh0ktEmOrwDO44h1soJF5NzikF9OsLql
	 hKvZtqO/4DKQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E3C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688379357.24571.5890613035911014989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdbd08c983128015b140d393588b16bf6da1861544ea8852cdef3c01ff03b9a2
Date: Sat, 10 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746883793
