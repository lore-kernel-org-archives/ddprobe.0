Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF204A3E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753415394; cv=none; b=FJBb7xcfe6r/VgPCI6srfPiC3zoWasa+/a/rQIgW6pI9XCN+3Bhk65J2lpXAoSn4EXFjU6vDo+uz/IJZymzXt2h6SeFTTleqa/t5r63DV5xCq51Kd30IyFtP+aB+tETmnmIoiNh5BO6mtHDQHcU1JQOpvzH7wkHantSl7Pcd9ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753415394; c=relaxed/simple;
	bh=ljsW6IeaQ2p2R8seHM/5JjVvtzORqSyogMDg4bUZN80=;
	h=To:Subject:From:Message-Id:Date; b=N9b3YQoH06QK/YtXH8DRhpA6Kgh5QbIZRjvcQWQN5MFEKWYv5vYwtZtxWKUGUg8Rcz7QXSaZLkrqi9/e6iZLU2QQgBYy2ewgUtDwFG7One7/TtReHuwJVra7QPmVq7iwwepnuSPvWvfCH/mCZanlNr93eoA8UomlGmZjFKuL/Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/hBhVbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/hBhVbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753415393;
	bh=ljsW6IeaQ2p2R8seHM/5JjVvtzORqSyogMDg4bUZN80=;
	h=To:Subject:From:Date:From;
	b=u/hBhVbAJY0NxNxb5r9LHpEQC5sSW55fVvVHokOoRX+G9leKQuw9tnezeIX1B3DUw
	 f1cVRxGNshksFfbqmY/8bxNPYfb0JgzzOpcVR6fCp/BFoxJ2hl/dF7yJ1soQn/6po6
	 8CKbp5cKddoluQRBVjlPuCSW69HRWCajS/pUv81bJqItR+GnR98KAwTaJ+xh2ZLE2Z
	 4NhQByHcZ6iXG6hnmP2Le4GtY+DEi6FAB+YpxureFEJmNMeoobnCIcjngx8kMRRI8E
	 tSsPYtrKzu/9HxW+sCjtvfd7G01EnEPBiozY5/mGF/KTSdb44jbCTMg1Kp9QlkMp+y
	 XPXRi1rLyONAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9167DC83F27
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341539357.26631.2704619961160492001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67123550313c14c0a84190745d0e9a0ebcab645412d697e0a547f0466393b3e
Date: Fri, 25 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753415393
