Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CFE24DCE3
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757851194; cv=none; b=FKKmTqgZN71UhYNeedzG9OQ+aeDDKW1of83XLa8s8rfFR6YjNJYS63uLLTNBd7kD+ZVQfWMokxGGOWhDpbDPu0P33Vi1ADTiaWP+uC+6WRe52fsKHXYR7X86D8P65t1c4a/74zfIR2Qbw4PpkGCyMH0Qb5gQtfyuFElioi0JNX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757851194; c=relaxed/simple;
	bh=WAgzzfrMQfxPxwTdt2ixUw0MItXqNfQwMm5+uzVrMIA=;
	h=To:Subject:From:Message-Id:Date; b=r1ZW5Sn/NLf8ed4S1mFzDAAKWVZvqkDA762PZCciQsyMYIWgSQcT43yF7aDSzmRt05/gWB/URCSkz5o35nBY3WfAtgnTW6yk2WE4vsGXGu+F7KblQth/EIzNmZ2i3fQ7WISpcFGKIgaQwWgaK6zfPHIN93f2dgA/Q5UzPFFc6Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEoqtQdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEoqtQdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2788C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757851193;
	bh=WAgzzfrMQfxPxwTdt2ixUw0MItXqNfQwMm5+uzVrMIA=;
	h=To:Subject:From:Date:From;
	b=cEoqtQdiRtZZgzDRu2HTt4kSjXDDRF/XoNc22S9Sa9S6411LiObhzdxeckIDZ7ulq
	 V/FsKsPzebxZJeXZ1x0SgNgTRyEi4lrS5y35OKSBR5P2q1O7RBciF/ygOkFSdeMIs5
	 3rkj0XSWlqNYw9sI2zmeSLeWSTdsPttgdPMwfLQtPjiaTumUoYlPeDxYlxyv4DPPSY
	 sbKGD7WtU30mFFasZu7A4TJFAYf+Zh48AeFXTMh3TAOJ4szNseMDSmEGZGJlMXMIZ6
	 Gk7lVRUMKump4rEn/lhV2nL9k62INoXWJ6SmCwjC2PlzVNKT+IS118W0YLN3O4XUMu
	 U9RM5OL5abXvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F49CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785119357.17044.15404335347000354874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39905dc67b2f179336d0e17c867e7f9b3566950b9dc706e1b0acffe0584f75b4
Date: Sun, 14 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757851193
