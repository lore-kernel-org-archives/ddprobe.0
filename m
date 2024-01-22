Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFBF54BD6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705948697; cv=none; b=YXKgWIB9pojVbDhbIhWK9P2aQlptSzvnVPsaSZKTbZ0FshhsJzZ6fpmcfQ27tRKfa91i3hLXYG72ttF/m4wQpAtO6qeGJyHWIu3sKXTcVd0YTMqRwJPn28x2ejX6UpexzhcPosRsojyufebwtDKJDdWTxkM5s2X4dhs5TjTh/V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705948697; c=relaxed/simple;
	bh=gbmJBgq5b34wRQ8ci0Yo562lvpQyKbYmMVFCftw6Qd0=;
	h=To:Subject:From:Message-Id:Date; b=ZWgJ3LD8zR6GBSdtSW3j+MJJT+0ltZ/GSwbyVPDABMMtyI+z1YRyJJda+oLSJxd8OMRoMMNGCrXnHjserj6embK8BU6gNLFX8pgsfzepIfXXwYvxnBAhZRNZ3ZFWr2tV3/0aVydzxebofNUTjF2t4BtNq9Qje8ivcvOHaDfV/ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwiChDYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwiChDYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73AC2C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705948696;
	bh=gbmJBgq5b34wRQ8ci0Yo562lvpQyKbYmMVFCftw6Qd0=;
	h=To:Subject:From:Date:From;
	b=pwiChDYaU3Co4TQKleTvV8ZgUaHkK9ZxLuNo0tNYXHR1ud7BpUouzjKbk6ckPw513
	 m4+oW+vbON1c+bFgPJai0Afv92nKGJVv6rfXXzLzYMwx2lYoX6bOcnykFfE9bApXak
	 c+fyIwYUk512WnTkuOLtmDU1M2bsJybGylF30pxF9lBulji1TYN+CgEFNJ3FBxGTV1
	 /qgk0jc2Br+w/3NF6IKaQu7nkWGZFcgu+tO9TZjn63eLwxZVY/HLO4rJS4jCKhy785
	 lNdd5RuyaBOPiTR/4HDPMH2wcMIhJ15r7I+abyHMHfw1UTUn6j0/BPQgPqwLBL7qtJ
	 k7woweFNJCb7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1E4C47DD3
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170594869637.2041.2332149344308677341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e3679011b6c4b72785d5580fd4ba08387297ef375a939b319e9ddc2cd6b42e
Date: Mon, 22 Jan 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705948696
