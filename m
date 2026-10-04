Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339AA3F4118
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791094234; cv=none; b=FsEhdwy4eTkXpX2v2bPxmq2p8drqs15oTA+0X73SkwqELvSc4e0mgpYhe64EPXLVSFQyQEG+HPqB/m3OeATwWBOKFqq/5ScLpAX1uOYYsTicLakGt8TTtZREUE4rneFENSPuPEg4gRruma7vM2ZYldWfJfA+SdXKPa7miPFkqBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791094234; c=relaxed/simple;
	bh=ImvGuqgcDGk7sdGvEUDnb0PWmj+vmmZ6Jvsrd9PY2H8=;
	h=To:Subject:From:Message-Id:Date; b=s11OtZ4WYemF99mxTJ/WkBeMKB97dXRJHYf52H/R0vuxdADfnkYDOLvhRxMngR2Cbuhv4WZCnjh23OwYvLiDzDvv0F1evB3oAgXDLrSah10vUIhIiLNq5Dt4CIPgJ5wI8b4gWOhAL/6Se9iMTPSmlr3lbAQCgw63WjUlQYmjzkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNecJV3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNecJV3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AA4C4AF13
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791094233;
	bh=ImvGuqgcDGk7sdGvEUDnb0PWmj+vmmZ6Jvsrd9PY2H8=;
	h=To:Subject:From:Date:From;
	b=HNecJV3GhNKbVz1Glbc+ka4iot+j8BqlnjEFCRjuTBZtoxaYNKwefQrsWtbaSG1X6
	 peeePKux2wTvVbn8tyU6OG9GbMRLYbByAl59OALUoiq0gKK+HvBquuGnNwJiMzfaEN
	 vYPlD9E2zn736Fjxh4qGv8OdyUNNyQ1TQlIC8vy+qbqDgSX4D5otyYMbh1OEW9cyqN
	 Oz9QAm65yS9mt0+Qh42eJIP+az7vxWLqVO+sbav2x8QCT0VncKBXKsJiqLT9tmziIk
	 iiXb68sNiC6eYB+dWG+D4RVasT8dNXhVhXH/ZFkSJI2/t2XqkOQgbpI8XljBnCEsyp
	 aI8vuzYG00u+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF3BCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109423370.7647.6141010111788304164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1584c74b626e53a68dc1a572733388a865b70489dd4fde82b4c3d24057b96ff1
Date: Sun, 04 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791094233
