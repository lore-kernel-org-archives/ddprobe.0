Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD3117555
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770943494; cv=none; b=JLw2TfGOp4/bjYRQNmGbl7ySNOfo4MN18R1y2+wrfl0nFOWRoPJ9lxyFlENp8ycFZUAPNxq3NeNBHBIb/C+TdlyjC+6y1bx3FhkkdtPtKZf7ZsvObl/1g0et/x7JgJAKi5svzfw+gq/Bb/S+naih4li8QEYhSjmtGOGNz2FDAVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770943494; c=relaxed/simple;
	bh=CTYaC5c/hqwq9GhV4YOiIqU/fahls5MTZDJxuSfOFgs=;
	h=To:Subject:From:Message-Id:Date; b=AdWgfhhNoxftWDX9C5XI7j6x7BJbPs3hd2Juhc+lJpyLnRAJa6BntPiKQL6B1GQEtUuS/XJW+J3B4IVgWuUwZkh0XnMivtNW5g0mXrNMTjTyfhNBopfDpsxvJJFGQNQkxKu13XMlq1OUb69/vQL6P2sWIWHYdDDgRFNIXMz69tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doWh1u24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doWh1u24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A75C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770943493;
	bh=CTYaC5c/hqwq9GhV4YOiIqU/fahls5MTZDJxuSfOFgs=;
	h=To:Subject:From:Date:From;
	b=doWh1u2432XNS9XSh/fP4+ys/rrmqalNXAWee5VcJsyEIltFV9W6j/eIYyOFPQotd
	 Kn5Y09sLg2EqOZ+lor5slNyp/eVYek9qaryRRsS5r/pYPuNuo3S71z0i0mpgR+Nv52
	 Ptuy+3/vDiiQJXVFZ5ppFg5+qkEBU4OD5wghdvk0d7F842WQkUEdYzrhvGwB4emUu0
	 lTYIL0uTG1mLvLpNOxhAk09y2kFlH2Teby3fPo0FDcOHrdt38UjxnOSQ6EuPFBGkDq
	 Rd4LdIYBI6ntFFtexAB+8mOggm830StDg2ctR1Qi0XE0gkyLnQ2LO7t9miIgmZnWyF
	 R74OJcUQUUFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3E6EEA853
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094349362.18627.15455285486754340387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741b45c6710d81a2f7372c6a2483396a0d2b70037491fbcaf946c806851f0cca
Date: Fri, 13 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770943493
