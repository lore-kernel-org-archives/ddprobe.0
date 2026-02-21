Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A48B1DF742
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771670094; cv=none; b=Y3K2L/WfpfD/9oE2KcpP1ysrQrh/ogAl3FquiMQ5D1lMt1FDvDEISS5H7+IyQ0jS4JnkNoEAWWFPtFyzwzIbvOo+6nyNrqmoeCKfDhXZoKQXr3I6/jo/tjMm8MD+xgBRKW6RL7YIlUX2eBgRAe8QA0gKGshKpAoPj8HdpBZCyN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771670094; c=relaxed/simple;
	bh=EehDr3qSeqzZingHgnnYKZHmu8YbOnqypvPPoxhbO5k=;
	h=To:Subject:From:Message-Id:Date; b=nEswG0RNe/ABDlNCAVl+cKKo2i+/OybxJPNb+BfBMxAUICElELVwIfuGapLRgsj6aiUio4N2mIKxEqj2YQo4uMwlzMuLMqqUtRl4w88vNodO5BH7/s1g/s+Ry7UmsjaAkaRBFQlurBcxPNv/6AqSmQES/zPc5B8l5MAJugSKvmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jw2idbli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jw2idbli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E0FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771670093;
	bh=EehDr3qSeqzZingHgnnYKZHmu8YbOnqypvPPoxhbO5k=;
	h=To:Subject:From:Date:From;
	b=jw2idbliITduGxomztDtsmlSetCiySKjqN8D+HFT8X2JfoZStM9/HX8mpzXL6TV4f
	 bXktXU/N0ELIQcpOFaFZnjqsEZII6/6vrjLFMaIwIWl/nTrOXzfVUbgFvK95d7L/3W
	 RzgfdOBJzIc0g20PtWWeOY83SXZW53kYVm7fNvMLl8fTjBPv2kjlKZYX47FXpPlIOW
	 ax/mfcvLl5pd8uk4G3T/8+yJ+CWXDyC+GLNLMTIi6+x+OT6KzbOJlhpC9a2rdRmBMd
	 L5Zz47lbkAkPxW3Lv/I/li6QwINy2961DkOA1dHQB2drm7PeZ6Bk6HO7RwX1Dkd/GP
	 isj+lqPRRqlpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A9C61DE1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167009358.11599.649876505454380641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac6fbb6231cd779217b6b85a1c184dbf7b934c10ae49aa775c8c8bac922246f
Date: Sat, 21 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771670093
