Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6855049EC5A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790262034; cv=none; b=Js/08NRFaw2gkCIlBW//M5x6tofCQX0MCnH3Y14WK1Fsn44vd4DmqtZFd5SV3kD4wb8w7FPCkwqcxHLmZ2zfcozSJCMlo8Byes0Ow5nIA/x3RY/kteBvVRaNhgbNkZWYxKtqHGLgn7rR7ubmXklfu8vQecqjGlrQHeuAi2yz6n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790262034; c=relaxed/simple;
	bh=CivY5fxaVDMUPBZqXWPbjslzK+qlnc8aZfrRv5JUCbc=;
	h=To:Subject:From:Message-Id:Date; b=LvOgOTA1uGquFdAMI68l6zqvmHU7HscOpTp1Cd0mMGZAdlxWghjeRdvzDUjSVQMTgiVzN1tQPg1e9uPLEMIstrqpYfrLRkIylb0Pti15kWfbcmjgBb4jUQ4rTNsA4vdHXzOltfos75rZ3UrN6vRAfdvKpve8i370Ei6CmY5xrOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBSlFfrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBSlFfrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4BECC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790262033;
	bh=CivY5fxaVDMUPBZqXWPbjslzK+qlnc8aZfrRv5JUCbc=;
	h=To:Subject:From:Date:From;
	b=fBSlFfrTG/nE/VNadt4HGmfKWwbA5GkRJnkSBVF5B+QxNi90W64swBXigp85pvxLQ
	 8KVTCG6Wmzqx9oWLx1Ztq+yrhsYS1E5aos5MME5oN6qj/tIWasRD9HL4jZzqt6jJQQ
	 AgqNxIUNBHMXNpknm4nybnw6MTNtWlY72tK0g+QBwqndkyVIr6Mm68I4q10TTWyTea
	 iflFC4WezVIXKpw1I+5DDk1N0RnTAC+IZwJTLygf7FqDx1nENaZqt56LV7TMu198F/
	 FBE5djxhcNcnQe+s6PAKdtne102VQq4djXNNQ60YRZo1zYDn40lZVbRcjBJoNZRTsh
	 dKMSF6V4QxFtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F01C98321
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026203373.5924.9330628859754782407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433432592128188c248b4bd0aef0afb899fa6c00cad50025a532f66e40d84c8c
Date: Thu, 24 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790262033
