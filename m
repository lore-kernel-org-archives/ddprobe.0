Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665483C65FD
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785900634; cv=none; b=tLrD6QLOKAE0+28t/3+jn7af0XiT36a7z7QfyHHzpA8aL3Na0l2U3v0VWRSDmgMwFqz9wkdbby071bZqpOWbG4FVCTOk7a/LHxxPvH2oqSjG1Ykc9dUhcWqwFezEM0VhjUAVLB4HhS2D/OwHbA4a7dY+Fp6ihTKAon725tjNI0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785900634; c=relaxed/simple;
	bh=2nx7oq/LnMM0940hiauwjYZ9H5uShJlvp8j+JXEQi+s=;
	h=To:Subject:From:Message-Id:Date; b=C882kp0HbCXM6HEKHdkPPS116pExphUOcaiE9Ds283CTxJOB5MusFz2fmpotA921ME/23Q9ZAqrRgHS4VewXAmcwG6xLW8t5aH7xPS9Uprp1FKSg/D4L/XE9JT/b/52VULLoLiDUyW/Q4p3FOoltbE02iiI4X/C/mgfMK2tIHWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9pYhjNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9pYhjNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA233C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785900633;
	bh=2nx7oq/LnMM0940hiauwjYZ9H5uShJlvp8j+JXEQi+s=;
	h=To:Subject:From:Date:From;
	b=G9pYhjNXEGfHciy6PGXwJf3Lwpke6Fpf/3MsjnrHVwVO3fol8aRr6oalaJ4IaBLID
	 u20Xj0ALht3jtNVfboU4zVAVEvCbzV1J5TEKCNqpuwt5qsAaTMB0eEATIwDBNxdUz5
	 NebS8vxXpMfjOumGAhsuR+wMagDxxrn7uX0tGNn25HbwBqLLThw/wvkYTddLreL1jM
	 +tvpXDsrsEMjnE5d7thFvPK9wLilwXA1vLSdhKVOtet+LbnUFSPGt5gPpBzozdJtBp
	 /0wrnYzNQrE9kfanW5gTqzWLPfeX6pq37XyDbGvp2R8L0j8LTN68ifqmiYfC+bpz4B
	 NmYk2kEAFuO6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B509BC2A09B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590063373.23032.6600926616159440238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765246a89eb0cda13ce0c3012e1f9539ec6edd62c812e6d837729e9488bef836
Date: Wed, 05 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785900633
