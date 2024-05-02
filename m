Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE9C2AEFD
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 09:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714640543; cv=none; b=O8xGHVS4bbC2OebptTv3aKTpdGL8c3g+az60FFupql0FtI74Gnz0Y5miApAQDmuyGADdAMM68ifloXDE/Uz3EdOGufmMWfLvgjhyR1Y3VIFUWiFuftqZ3Bi3bFNuqjH7pmrktbcuvg52/+WBJgdH3lGOorjgAUosz38jjv9Lr8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714640543; c=relaxed/simple;
	bh=g4qLIno/Wz10vo+PdwmEcc2r30sVd1MUOhn9cPITpuM=;
	h=To:Subject:From:Message-Id:Date; b=k8RO4zozJcFI7SXyiZFgcaYOa1ekpILmAjeCh/GfmpjtsOnlqnRYJ0SP7H2av5cIPTS50+6tLecBrKBNm7q7+l8B0DIWHTb+psm+tXi4rGfAALgbs4qviazGzW+UrTaoH0FOl3ajDwlifdAUvh2thrMmSuBHNbglKHw67z8fdcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieYaHReH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieYaHReH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE051C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714640542;
	bh=g4qLIno/Wz10vo+PdwmEcc2r30sVd1MUOhn9cPITpuM=;
	h=To:Subject:From:Date:From;
	b=ieYaHReH9OG8UYcN4IQF4BDvb6/BYPNjdV3c+6TOL+XUMCSMmq1VpmcPYmI11Vf5p
	 IyC7XehjYvnG/Xkkc5HYzg9BokFV9eoJznPshcAw3ojEdzzl5z2MEtdhcNULdjWKa9
	 +a/tKRpvvjs+qZrkYBDdwXLIvLaVjSR4ukFo0X2Zk1+TeTJFKYX3Y7Wfo0Itxmv9rO
	 MSmIgbJkOtv4n0v3R+xNT4ApiV0v97u7N8ZLxdH4S4oWMoM+vXU6bqfF+sKA7VE5Ii
	 mZnnRw/0CzADp2DfQX/70W99hhQ+RVOb9GOh7HTgpROJHM69GxItwROH2gjsejet9T
	 bOgiZBQ8ItOvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE399C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171464054277.16374.10071126723463439949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1f453409c6065939469d9b52965b894461757311d2eb773d05851eb189c577
Date: Thu, 02 May 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714640542
