Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEA6219E8F
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743014394; cv=none; b=lSBfBNBL8S9d1cSeZY/HN8m0yzpPwH3tkHxlQ0pN/OJDonKdyLXw/TtEM5H8VkGOZmXbNTBbQ6U9V4hzj0ZqVuQC8lNOX4FCSr+po4AeKFkFwDEcRqMmm7PYXS4uF5JryQd7ZTkkGVBX3Rsbws97hWs9FcS2Wf4DvbsgqHv+Uvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743014394; c=relaxed/simple;
	bh=SD0xbSJwV0lyTLVR/PUkweTPZIHpr6I2SA9zUJ4UXt8=;
	h=To:Subject:From:Message-Id:Date; b=DTNnJLfuqr6zcsAWTQNPNuJ3HP3rwccmJf3lFFtCdLls/mTcwvZCH+wHIm2nvCfSF8H8ov2Vz4ySScueq4vAsMoslwtg3ZYUZIxCBp+yppZyLV4EdlUzgG6cNxiCtpOnQJdefnPT0FRP6GTyA0P8Dh84Vqni9wc+E8AL0aIz+Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NthCearw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NthCearw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD728C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743014393;
	bh=SD0xbSJwV0lyTLVR/PUkweTPZIHpr6I2SA9zUJ4UXt8=;
	h=To:Subject:From:Date:From;
	b=NthCearwRVI5hLYTxMdKAhno1VX1pSe+zaV3BGuCCKZVVPUvPcyoBdDAxpiTgMI58
	 rVVeKwD8ownDNcCqRpmK903r4YKP8WVH7U5W+wRfXET4WdiTWZjUUwJPke+3OCj/Bp
	 v21eMMUGtoACP0HUM+CNL2r0nB2WrAbMWVwfxkyCSWNtDx7FvmnRifS5dbItaPw6lQ
	 yi/OeoLaqXCrLzQE1ed8yb6nAnmBhE8y7n4g348513Z1cltiXX+Ti35TPS9b3TtT3C
	 6ju8bc6RqPyQ6jyUv0je8hsFL2ZEENvzjL22lLlUlXf7B87GfnZ/ZbDW5wLHbORc0z
	 yU6iE6nJ+cefQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9991C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301439364.21420.11642784588407352260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbd3318e38f93a439c9a29101673eee965587f01409f75ac5ee6d221786ee62
Date: Wed, 26 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743014393
