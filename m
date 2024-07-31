Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396B416CD09
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722462954; cv=none; b=r8MbxZiP1zZO6kUAKmDoIyaNwinpd9w6o/fEST5NHJTjvQ2zr9aw7opJuVVwI69P7n1SRVpPwyKQdUX4mUVHQjkekOylG/ufkx7p6qSCqofztgYM7d5oKNkxtGEMc3FsR3dBvOITSXzuRfmNR/RfyBAHkGjnzM3rEr57Xylpo4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722462954; c=relaxed/simple;
	bh=aiKIM3J+EdlqVsk0eormj0RcmIpyyMu+S2drxeg4sRE=;
	h=To:Subject:From:Message-Id:Date; b=j8TRPWX+vPTpcaBwCXlsTXMoZ/HV0RYwxtGBQ3p3dYoA9qz4xafQ0YOq1lSs8YpBTeBnGQaYbl6MQrwam9vmFtz7atD7ndykh63z3w5GKhlgy9V3dYXvkoafWhwRn/QvdcxtlTM7YjLVMMMp51+ZPrlCLTwn+Yp+QCDft/JO7OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upt0Q6LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upt0Q6LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8629C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722462953;
	bh=aiKIM3J+EdlqVsk0eormj0RcmIpyyMu+S2drxeg4sRE=;
	h=To:Subject:From:Date:From;
	b=upt0Q6LGEsVTT/kAWAiN7MR0yXROIW4orsb/xvjdPzw8Kjay52oboBb0QVXNDpiHJ
	 YHuvoO2PRXyWs/WO/4v3A+WJlqCn1SZrgv8yGOvUWfAQk2ZXlwT7GVsKIQyBLv215k
	 uqkENnsNvcUPESv+TnxvZ1LeQQn1Ck2Mf2EBkOCx49KW2MqLvCw51mslppjHb56z/g
	 S0ZdbV6NPCYYPfe2Do7HPHfQSTIKwon46A2I6LLm58zHF0U9OP5BzKFljr8cv/FTzH
	 SJcp5hqPEeBeL3bEtzWT9gxGAE8ZbSphP7+mScEjj7tKDxVeSjH069EUgBV7V9HmDe
	 R0ooLSXapeN+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7229C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172246295366.8797.5893043350364004242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fadd339c93241c3841db70fbefdf2dc9f179f8e53ef99ad10b49b3d1dcbdd8
Date: Wed, 31 Jul 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722462953
