Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E661C8611
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759312794; cv=none; b=cHQVTtlEsDIXJ3vzZZtNMYs0sN9w+4GNtr2DbFdpR+mUhg00qWRQ6RxgKyDIayoeOvyiqMxgrYTW9A2GTmVAH20P3hQiUERc8BVxKhj0bfMAij4lIJs0AikvyIX2FAEr0kTNAmlVulRFSZxjEGrBXnQdQuuZbleuvEeq9YPXAi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759312794; c=relaxed/simple;
	bh=ZJAzTcNptNMThcOv76euQJILWynUSj0jpfugVsybxhY=;
	h=To:Subject:From:Message-Id:Date; b=Ak6P8o3RyT5DEdbdeLgCKXJ0b2fJDulhtGHOOX2VbpnAZNaYrvXTJgWobtWlj04sHGcy4ky7QLRxiQBS4lr8GRcMtuEL84I93d6CIaTZNEzYmA7Vvw5vMuilUNNc/3DjpzyzIcqNGupIhpiIFNX0TPe2w9TAzll2GnCnT0hec2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyzdZIeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyzdZIeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7365C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759312793;
	bh=ZJAzTcNptNMThcOv76euQJILWynUSj0jpfugVsybxhY=;
	h=To:Subject:From:Date:From;
	b=qyzdZIeK2B2QTDYvRgijOJ5aHC2QTcLFmbIMfDJdncgfsyO4vge2v9h3SyU5bdMRS
	 9l8Z2gstcoSdod68FgsXNS3p9PGe+TYwvW66CG5Sry09tAYdWM4ohD4MgqZRMVTceP
	 tfz5LWcoh5NBg6/dV6RpyWIIo8+f8XCeWUZe2M/5FE4UROTglXghXtJvmfnNO+mQRc
	 M3XyqHw6qPnJvi+bBsOzQ9cHfMV3GtWcivZbaZRqr+UPVQ8MXX1GY2CKZKDdVLHNrE
	 va+85pevdl5Z2FwpjT6emxlBswslYbtsJ+C6U38OmWXpP35dqjJisgrafB+TY3r5kD
	 ydT68xN6UMtqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9428CCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931279358.31749.7673749671867718206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed2b4703e1c0a0ea850c821ea178db1288aae3a88ed8b8b816d755ca90f0e8f
Date: Wed, 01 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759312793
