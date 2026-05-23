Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACCC2D94B5
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779564154; cv=none; b=NoiBtbY7D+Nae14lE9GLQAopsDJWieVkCm78zfoFle77NGF6/zG5WR97EASlsPjRyaQG7Cd/RnjAXWakTBHFXYc7q6XAFE6eANiMjgZNMaKpVEOf539hQm2PIFQhPZF+7bWui65aa2bH9UE815twBDMuT3uJRl1gZdbhPQVPVMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779564154; c=relaxed/simple;
	bh=yWGCrD9siG70nHxKB4bupO7ortwUAOv93ymq3JlUTzQ=;
	h=To:Subject:From:Message-Id:Date; b=jdj7JGazINRdCgCc2T7e9oLvVAUntMSFBT2xDUslPi+lxQ7/7rE66zilbIiaXTYiXXiYXeygFSo/j5xDlTKHhZcou9tT1E8+hvV1aObf3mMKE0q60u3BwU1HHf+ThuZ7vvSnEGGffNg3T+9axyAOzCJCqZYY8l4WZy8E7Rbi1mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnjZaeBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnjZaeBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA838C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779564153;
	bh=yWGCrD9siG70nHxKB4bupO7ortwUAOv93ymq3JlUTzQ=;
	h=To:Subject:From:Date:From;
	b=EnjZaeBa4XYuYeNjo6W4L+xKgvAvujL72dLAoT9XQWpGVQUwjFd4GODm4uFCjKT/z
	 l7rcP6EbuhsnK4uJv7y5SzatDmRAbZ3P51T6M1ao1qHYKzuZw0YVelPxPfCnOg8PtY
	 O7MFmTR2jJ2VM7V+3SHLACrnf2sNG7C0NHfO+TJzIAatdBzOwd/Gv/u1G2n7i2vrTP
	 Dfp/n5CQyKfXVla6AgCJ0xIsE9Q/rE6TH3hzUl10bxP09quk4LC6LlxRZLP+jrxN5Y
	 r93DItyZ3Sjs09OLYyRUVRCi10dL0Mg3L8MtD1OGIj79fl3ObMFFxqYJZfNAXOPgB4
	 DZ5SIj1YY6zDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBB5CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956415368.32663.673494573846575247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beea4570a3d1749d2427b5b54e2db699d18838b894124a3de65e522d800bbb9b
Date: Sat, 23 May 2026 19:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779564153
