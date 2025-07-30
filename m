Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2727B1EFFB4
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753858194; cv=none; b=kktU+OKU4SlVQ+5AApBhTX0NYm+aD/NcZ1EbYZGkhT1c1+RP2g2J/AaAxSMK61zmq4ValGyk49Qho/3Ih8EKpMXMpK/YK8+jxs4Eqj43mEId82DSsQv0m998aPW8/QQrg7vNKS7qDK6apZJCwpir0bjiBp82s8lRFgZF9F9G1rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753858194; c=relaxed/simple;
	bh=+FtXHzWl8ko/DyjzojSiEkuGHfc6Lpb4h1qS6PL7Ajk=;
	h=To:Subject:From:Message-Id:Date; b=KZ3rRtuwpt2vYmn/EfizJ4QS3WMn6U7SnhvmqkS7reqrUq0/nMh0pV+BqfoQmpvqBETgge307REILnLrlc4hcdy1Wg0iMxrT3w0+Cdbj0KvVVHi+hNMRnK5p2pi06Yv77eJlO+4JtJ5aVFHbrnyArFp2s8idQiETA/oludB4JKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuZUCiFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuZUCiFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE90CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753858193;
	bh=+FtXHzWl8ko/DyjzojSiEkuGHfc6Lpb4h1qS6PL7Ajk=;
	h=To:Subject:From:Date:From;
	b=JuZUCiFZfQQoFZy1ccefgOTi8WtC7ROmOhc4NQrc6Va2QFzNj8oayjrhJmI6yJYKF
	 Rm60ALPjcmF9fBD4iQUJnSgWuK4aNlJ3CsGyQwFujakQJsptW9WnJC+b1qg4A+ltIR
	 mRtRwndMWDun9oalyXWuCYSVIFZR5D2c5Z/b0HbJFiHcQ3OSHZTBEVPX0kyZ1S1c06
	 OiB1elVz5cf+5znXqEn+eLOOwfvTa8v/22cKo25XVUnNryUnboE027kry7c7TXbi/V
	 3/Xo49IG8oyxO7CHjbPrlV1E+L5ZpOjceszWfosAFsMPr1ndMmJQR+9bYjk6tP1xX/
	 SG07dx4tAsujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC259C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385819361.3935.10005530914876507277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e1a3f715a705484ec90b3b56f2edd7af9cca15d3c5757ede66a56849cc7ca3
Date: Wed, 30 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753858193
