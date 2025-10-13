Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255103093BC
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760395194; cv=none; b=TG+c67wAPruTpregDlVOQrWdWFUfi17x5jA++sGjWMburEBHzZ3w2ndxBL4xA3de6zJZLX4AXPb76BVvoryIionPAJjcxoMVDHjnMw3aWHYe2c0VC6DErXvfRO8gtJoVfqvWhxWmChNZdApohmMUqfTc1RoEqDgAfoZ4UNgnAj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760395194; c=relaxed/simple;
	bh=WkQ9GcjIaFiYjEAMuK6AoJyflZg80QkQhSxipcDDBGA=;
	h=To:Subject:From:Message-Id:Date; b=Tejt9rXaYVtXbWSXIINFHhQOLHkfX5ooTj1ex3lXN5Y+fSWJUz8lw6U/PGe3n/j3qUs/TMKbYcjrFUaZKzZfGVHQufBAVRyCd8+ajy3uX1XpiT2oM1ecaF4xsXmAXy1dMnQ4O2ciJljUBxFhVwmZgUEw9yeSYhxKfWSU85lAg7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MB7y6M1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MB7y6M1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34CFC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760395193;
	bh=WkQ9GcjIaFiYjEAMuK6AoJyflZg80QkQhSxipcDDBGA=;
	h=To:Subject:From:Date:From;
	b=MB7y6M1arlWvjZ9fxlkDs4FPry7PBCB4FROeB8/FBwA6Gbs831XBb3hLjTabNSWvA
	 M8QX5vJRNzPVJiasqhkSUca/P+sgfBL6JUQzhMmHZ6RkMulvq6oCwuaNRhy0MK6CWS
	 BVtxBO91ouD3K2WZQyFxPmQAEGQctQPSCqPTiDuojPnCwESDF6pp2xfQUifR+YSj83
	 IKjS6lHe742Ki1O9vlMK1WEORLW/YIM03imFsE/GcAGGvHwo3neQjDhEPETAO92mEV
	 2WzYGXPVAwaS47dvySbrjTNFOv+TLw+SPLW1GQROFGxKcpm3IH7ePDfuteTQrxBUb2
	 pUuZLOO1qBzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF3CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039519359.10405.18406951814113379505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f4195f9b67d8cb6a7b2ef9a7fc2bca68dd2871cdd79de9838f0780ddf0b5ab
Date: Mon, 13 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760395193
