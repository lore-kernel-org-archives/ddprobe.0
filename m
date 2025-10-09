Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4361B423B
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760038793; cv=none; b=OTNfUHlplAL+0+XJ/YmX59jP/XmZWUY+5xPgPBLOBmkZ4/bgWBHtG6UO59XvXrlVAsyetluc4KAdYHX3LtRRSWVgKa9BTvTxhMlQGalJkaEZ6aoSrlk8yTTUNLolarjcGCEdJqFzSRk8+b/quu0MVIK7DUwwNFPVUsyYp2OAeME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760038793; c=relaxed/simple;
	bh=icZBdIr8zjawa/XLWXNe+ZB2o7reqwYFZs8dxrSYayM=;
	h=To:Subject:From:Message-Id:Date; b=gQuFbbtqBkoB4gRhFCLcllXWkd3XoKJFtbcwTNmDC++1ZVrirOZH72WoFbvi0PBOrMKzV9dqHLfUT0cbxoimg88HKuip27vJpfC+kDhAETXlc2jtKzMzXohnNhSoEwuSwGz8zWNGXhewimcyaGoViTzr0JExnIRlz9fJaw0UwlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXocgv1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXocgv1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28EDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760038793;
	bh=icZBdIr8zjawa/XLWXNe+ZB2o7reqwYFZs8dxrSYayM=;
	h=To:Subject:From:Date:From;
	b=EXocgv1S3HROTnYl2IiQmtpRnSw9eTio5e1qB+vmDIca4Qo8cgondUcfO0cRnbRQ8
	 Uw+VIXGQAXghqaf2gLVXiL98REBGJKWmHeg7lSruQhENzuZF3AOjJY+46rZSdLqkBy
	 hYc3vRw7oOnSpM+5F50ejSOfn2arNte9Wl5ars+oit8MzyqTw7NDnrCRc8N6HPdogW
	 4432gwMpxT9Pvaez22oMxYtIYEi9WlQFgCc2W7x8qMK1ajysS2dC2lxgJnakKlGWyr
	 cX9LiF66XrxIggzHJeSgiRi3D78I1Ha445/dzi2u96at3ofuaFlsxJucIp5Ngd4cXJ
	 fWOD6ge4kzhiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D5CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003879358.25890.11425385391787283182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23919213d84f6b3cd875905051fa90944faf6965266dcd83a3d2f4de182d54ef
Date: Thu, 09 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760038793
