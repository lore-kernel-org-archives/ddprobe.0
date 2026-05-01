Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10A537EFF7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777678054; cv=none; b=kHIJAlQsCSd8pVU9lUthcmWua4udm4UaeOhQXJj/gkz/mIZQbn4MWeW4n6O9YMyQymg7QaHXrfZH740RPLVueEnH7vkjzdGJ/HOeJndt35ReKyEypHnoKhK8r3yI8y3xrb2V1Hc95tLIhZXFrUYWLgLlbG3IxIfH3m6Ht53LgQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777678054; c=relaxed/simple;
	bh=TV11pgTHxLQQvztmzA8LZ2R/1I8Z/yCbaiX2l8aH3E0=;
	h=To:Subject:From:Message-Id:Date; b=Qps1Y+iC6VvO2OiVdYFFREuFSAGbs35N5w4O7141IOXc+O7g0Ny4eRM3rw+PqkMeBwd0v/RJzS0m2CRfWWexZ9yutQxuPgiDRoz1/2PUqOYrRYzE7UDx5C57QjNIw0OHlC9CgZET2eZmzLYyB+tg1ExdBKDukaN/WwRkdy2PQ9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fW4CUSzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fW4CUSzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF10CC2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777678053;
	bh=TV11pgTHxLQQvztmzA8LZ2R/1I8Z/yCbaiX2l8aH3E0=;
	h=To:Subject:From:Date:From;
	b=fW4CUSzRFAf+9pEcy/VWhBYmWQa3KdK6NHugV4E3dXUV7XC7qEpm3AHrlt6JAw2vg
	 nXaeLzxa9wvLSHtlmYNu89CUGywdF6/rV1xmZcIdhaTNcWfMvtY7Fa8Cm08v+Bglgj
	 9SksZDLJ/fygTcN0NDpw8wJSj92QRRPMgEy8OPYZmz0DGQq2sOSJMjaeoJXAbNoiVO
	 0OXUzc6thYXLpE4DSPK2a7ZqjmqWar7/gx031Hu2pdHsSOUg0fs5lIwam+NiWGiEQh
	 jYUCGhk8Z6v2FE65r2ibNK+BpwPSD4XbxKmiRlemBde2Jz8psvQJ8PC+EAabcgUp4F
	 u79Vem7VyHIRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02A4CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767805368.5703.13832168146091193512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a658cde75f60705737ed3a106bfc7f9e6c7e9ffb1abfeb63c6edbb58231fb72
Date: Fri, 01 May 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777678053
