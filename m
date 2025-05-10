Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048CD846F
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746859194; cv=none; b=bxRhBR01f2bp7UyrQzYtE2VGnyWMnPxm3jAEu8HG8pX8MQzqehfV8XKkizyweFGugJbnv0ZSaYrEo1obdKmxuX0C3xPmsWB9i3XcyvGl401jcBC8pvpFICc+0Ga/FOHQN+Z7cjb0fHVJ+jCIXdqgs+R2imDo+XNU1RvPLQJhDyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746859194; c=relaxed/simple;
	bh=SQ5ObhmWbRPETRm1qlRQ84dWX7D8BOFz89lhJqk0juM=;
	h=To:Subject:From:Message-Id:Date; b=dbHxadt5qHyWEUqSmlkwKPvB4OBg+mFwr6EN2rVjk6y8as7X8NEQVTSX2HSxYJMCpNWVayTx2Uh8MpnyBP2K2WeOd5i6wAttTR3N5uG6ExnGqkpeZA4xn8tZE3VaPejVBitCozqtUzJMbzUtopVCsdzuUZBFTXuK1qYqOhmS0w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cfk32z5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cfk32z5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8475C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746859193;
	bh=SQ5ObhmWbRPETRm1qlRQ84dWX7D8BOFz89lhJqk0juM=;
	h=To:Subject:From:Date:From;
	b=Cfk32z5VKOp9+QNUh5jjDy2cdJhHArWt1D3qLWAPGxOUD9jGq+6iYv1YHlS/Zld1K
	 oIT6GZWLo6FccVqriUoZSyqJprnempuigyLEOXjvY8K4+S/hI4oR5cxXqRWbfpp7oP
	 ry2kSBFfOX4EofHs8yb80McFUfhlPz6BkCtf2RsPvw+HsfgoKYNHT87ZLkbB14XfYQ
	 S3Wo01i3NnHtMG9yQ5OQX4DVKtT8yZjdzKQSUcA1uWVCdG1Mr7b6pEAL0zFrfVfzWy
	 g3eMBE0uQhZ/eYtZQwqtu4CazvG8HBgT7Gy8vulhYW2eYuEOz3tPYdads5JPbqSdAE
	 azh+092qXHTsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A3CC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685919358.29558.9912900466886934239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b2da75906c5a698b02592f30ba5b05716b9e433ae8659526ba9e622b97679f
Date: Sat, 10 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746859193
