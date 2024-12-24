Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514CBA47
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735011354; cv=none; b=Kxajj+lZeC7xOlqosBZEaOiz53ZXJtIc+kknlVA4qYmmVLpDI6ZAZ+YMaQ56OV6k1/0N13U/3SnWZxdStRHTPUfuWKggpx6LwlaD2qH8B7lujM05tcn7PTM3mZWvi8WYQsGPvfM4oGx2YNYUhpxnm8vohQHvrQegf5w5AHyGM4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735011354; c=relaxed/simple;
	bh=XcwZ5uw6CEw7fx/D7vCyg0IBSMQqQHaj3Ukr5J3Cqik=;
	h=To:Subject:From:Message-Id:Date; b=JT4ld0LiSqcEtJeowlrs3fxXZ3YxNSOvgulAlnmN36/59MI5trosfnU2fQ571YHtZO55xFNrZHuZcs6wb5yaVq01XCgOMcMJOI2Hhvct9WmHJa7MFWL3v76NBdjEHG+iGKafVf5llxYtzwvgnXaCqFSjhtcVNwKT+FHlMgJHJ5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plDuXrr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plDuXrr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA679C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735011353;
	bh=XcwZ5uw6CEw7fx/D7vCyg0IBSMQqQHaj3Ukr5J3Cqik=;
	h=To:Subject:From:Date:From;
	b=plDuXrr4fwf3NNrzCuMrIG6xjA9KvoGDmyge9GcJ4yTWR4ak1L2OcqjRf8W+J7dch
	 oOWLfOXULjocCj91pKbeGrd5Yk30NHChcKcF0gSSVX4XVyJiDvLgYBpPh+XG6tFopD
	 1HLz07y7CIXsFEGjy3gRX3nfZpXxYWTaZhQpDSF4A1voEDlq2hC+MosYvRakcmCGlW
	 kXZFtyR/N7j+ukgWlaYB2hPp7deDl1XrBShir+gPXXcbfdWseR8Ce730ovvq7+wKDE
	 NJbM1td7/hccbFoS3znLkRXxtarVrT/xI/zgwZPKG+Fm+ptxKLGWIw2NgiXRfyCWgJ
	 fMG5mogDAiKxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A416BE7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173501135365.18053.17184686395763330484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2292d1e222e20d03716d8611011df257f8570dd75763a9259017fc8476015b4f
Date: Tue, 24 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735011353
