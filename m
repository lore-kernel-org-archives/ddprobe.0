Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861031C1AB2
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727783754; cv=none; b=uHiBmceK8/FsB0esVQ4BiezQG6b/0VTe1JVjsZOBHdSqjtrNHJlx9rtgvahcvA94jvYhtosyZLxZXBcKKVPGhe359j5Pbk7WQ7l9Cum62E2AQ2NG5w0d0/mXLlQsImlVmubcZ6rsxT458m7Oh6WyeBAnRi2ZaeYtOVXYopcoypA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727783754; c=relaxed/simple;
	bh=keMywQ4iaoGRmk1HTA7+ITsnYYW2XOMBAlKHRLr3jjM=;
	h=To:Subject:From:Message-Id:Date; b=XUIXD7rj8Frq1mVwF8Mfd9yGHdvs4IOqC279vRjFq8rTz6ziz0fkk/ajCFdNajyWFY2Aiw0OqJLcRDUQclN4jsIBGoaxfRJuiJskALbUSZroxQrMFm6STmuS4fwyOQQxd+9Z5cyvOiSphizsV467cf8gzYAPn0vCJ4sTQ0e3bTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgX07KGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgX07KGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12087C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727783754;
	bh=keMywQ4iaoGRmk1HTA7+ITsnYYW2XOMBAlKHRLr3jjM=;
	h=To:Subject:From:Date:From;
	b=cgX07KGZ39W55SpLIjrPOKwaDcWMKi/k3HwHGwXpCo/cVK/QPUshTqFLRFWailATI
	 XPVqOOFG+5P405rLsUtERKyNIm//MwaMsIafzgyV+6uHwxmG10HCLehZAM09uWGNlz
	 iJFEOluVVIr9AGAOvjWEcGfEPQtVqIsFUHEtKBgttd7CI2ZYCtnVWfjFDERuuMocgJ
	 BrvTKeuv0p+4m5CKqPAb+stIsu7hh02f+1tQ2Rr15LQOacswoV8c1SRP/Kj+nidnAb
	 5RCwQhsTV+J895Kd16SsHYwQnI5UvU5csFp5vc+KaNkUPB5tvL44j5v50kXfD1MQQO
	 7aPMI3lfVKLhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6823CE7D12
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778375388.27968.3127901230774624586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee63adea6c3b9344c395abe4b1c6d8afbf6abae39cf0021448320b778e9e51c
Date: Tue, 01 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727783753
