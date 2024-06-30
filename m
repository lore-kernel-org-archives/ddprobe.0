Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E939282ED
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719767063; cv=none; b=YW4JceppXKNQz8EA5EDW4woX4o+d5R8TrHHSrsxg+TZWHdvq+z27kZT+EW8rz2gqNnAmF+V5OXIxu799LERVzAEGANHqCbDJSej3SARL6qSx0uKAm0bJI+/dTNK7GPFkLowxf6sNrtu4i/mNgJgeS7+AkLPc+cOtfH45dkgbEC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719767063; c=relaxed/simple;
	bh=3pcVau8f4Npicx6nZ1uwADzNtxuVg6lWMJCM2FRrj0s=;
	h=To:Subject:From:Message-Id:Date; b=cC1cpKsH4fUzBtRle49gnfe+fkM1ZIXdKXI6lwVzls9Poyh+VdG0OX9Su7ttKbCJfArxQN27lJc5UDJjYTx0nljC3Y+KRkSRFEAPLWJ0BVqVHLiCX6Qu20eKBC/l6K6unRxA5E507X6jYVwsFzzqRAf1z4oOZmeYS05JU2s1nNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=in+xpnZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="in+xpnZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C7DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719767062;
	bh=3pcVau8f4Npicx6nZ1uwADzNtxuVg6lWMJCM2FRrj0s=;
	h=To:Subject:From:Date:From;
	b=in+xpnZtMw023OMhUEMUldJzBWAYfAyoZx6jm3P3rNUe5EC5Mi08+4kwngeI9j1H8
	 IE/UFX6lGNtE8RR7rgfpSmIYHjJ6Rf+w+6NsqrMfVjJf6psdSjceGpIHQir0QjuI6A
	 utVNOc0Y1L/cNK+KRql9ED6CBtcooMy/1Qv9SzG62D8BV8vr6CDtr1Rn/grrp0WQhi
	 KNUwYw7I/7nDcmqgLZDWITVFbR1RXc+XzyxmWoJQQE87WttDv0bnkb/RTfTDbo9ypD
	 B1jJFJfONq96bPUcbEnO6GtaZsliMzwZuS2/amX8tmICASedQka4roI9fn5+AkQooV
	 alvtiVEuPKMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2443C3064D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976706275.14389.9480579444791435327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4619e098b4b2f8e937c8f9fcb828e86640e54139f7b7003300376d512145012
Date: Sun, 30 Jun 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719767062
