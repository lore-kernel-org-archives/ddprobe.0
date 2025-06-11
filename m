Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4050F197A8E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749654594; cv=none; b=WOFXND4/L4cxfMAMCUkfWgyNrdWlNdTwDmgKfYxWBneqwzli/+YjimFq5TckhvmvCD1QpxG+rVJJ08Vgl+TMYBTs6YbMU3R07A1z6w7nx9nwr0LxDohwR4muAqI+EAnIFFxZ9VwTHjBSyjyq/leIMhuyZGO6tOdepVRA4UVsbvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749654594; c=relaxed/simple;
	bh=GCtRb6gN4YGz9Y3l3v3r2rMBgS1tdaXZ4SZan+0oeC0=;
	h=To:Subject:From:Message-Id:Date; b=Zm897K8AO11s7Wx0xiMuAtRBfmFljvYQZ15oRxbBXgerlymh0T8C8gFjpR2GQ6x8YADi8hHSF9DK8BJjyQqEdO1DFMnLKSxbxVKo1nFA09qJsMkwe7FeAo5DNzbRFNI+lP5EwzYdQq+FjULDyNNxEYoRgToCzuIyWN8MbWqTsSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qm+ZmAW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qm+ZmAW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB080C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749654593;
	bh=GCtRb6gN4YGz9Y3l3v3r2rMBgS1tdaXZ4SZan+0oeC0=;
	h=To:Subject:From:Date:From;
	b=qm+ZmAW5m55XGg/XFJbPufLWSY9LooOLp+xD8GTaZOsWnFL3Y/tk/YgD6fMEEknCw
	 qxPqY1I6Sddg80f53NxMepSJBNOgFD82n9oG09PoTD+OMVesk4aXEZNTgO3PDTxrTu
	 Ti1WhFl9Wb9mlodrD7maCCKj35QrBjBIG3imcse2MIAXZKGxAlx9rXSygdPGJHs6GR
	 YxJm/5h10I+lTCcPPehiPzCf282ZEiHy9WCeM3ld2Luq9C6Nnwl1Chyx5cQM2BdEr5
	 1zRySmTmuxXQDqqN16x7DOZftGjlv6NIAMTal/xOnj16sf1cia/iQqkycH2xerbwD3
	 EgQQuY3pYGuZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98421C678DC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965459361.22552.1750729545557026909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e594e1991e2ef81aaf66284d7333de03cfa6db922471bf0f98f87b58c83fcf10
Date: Wed, 11 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749654593
