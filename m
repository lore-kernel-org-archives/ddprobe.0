Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D46F1DF270
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746616194; cv=none; b=h4BNX9F4qHxfHcrw8eGSo0UYMJdB4bMRNqFjXwA5aKaDvMZikeW57uhXWUZpQtCOnRgb1K50lPaEPtv4Ctuhe8RZUSw9Z2ybBOVDbuSnA7mbR2TLw4m2l0oAXbL3oS5AvGNB+E8GHIVToV9MU82LFUMde5ezaY3PelvNDqjlzvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746616194; c=relaxed/simple;
	bh=bcg3luhWBAGZx8rrJc8VSvr+2mKnl3t0TTeo5y7u8uM=;
	h=To:Subject:From:Message-Id:Date; b=ZZ8Gm7YaI2LNXab7IHOT5gFYpm8N+RMm9KF3iiTIjpHJ0Ok9Ad7QYknvviIY0hZ5R7MqcC2dTN22pVxurG4aqiz6b5W6zr/tiiEsFA0i+HsuKDk7IhhHz3B06+QD0gAXzjRZ0oCPn6yjsS7ORMP+KkWzu/SrFsxsAlO+i3z26Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEUQmSDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEUQmSDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746616193;
	bh=bcg3luhWBAGZx8rrJc8VSvr+2mKnl3t0TTeo5y7u8uM=;
	h=To:Subject:From:Date:From;
	b=DEUQmSDrsC2JDtnz93hu3YVgvEJ/P/eL2Qrl08TnZPCzFUb7vFFUXYRctuHQlPcD5
	 5LA4O1RiIX3pa0rhgmGbDcnUg7hDtOsuxJQqma2pHgwnagjd8uUc5rtNtVdNgKViJN
	 OxOHg84DrOEseMXJSwRl/+OwEquE/C1mop05rXHW+RitXfzKoTEWu7fCEepJHfPim9
	 arUhpBnxiWSQIi7Uo4QuJM5RHbqhVrV1+dheycXSHDPTwBVFz8EfxRNfwNWT6PxmUz
	 zl8Qd2Y7KrjxbB4AM3joydNScIKMEc7g5/o9BlA6aV3+4vcbh63ooHmA9fsSWBDeVO
	 +k+20aCEe1Rog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E647C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661619357.14826.13952255968218944530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc0646f1d6c0326d45744d012635939396bc78cb1c8aa7e8f0d3c07307ef4a2
Date: Wed, 07 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746616193
