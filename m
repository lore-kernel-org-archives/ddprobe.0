Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4FE1419A4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792348234; cv=none; b=nAm8k18/XuLER53ctEjwvbtIdbjBHNafvjV2vZ0N4yPPAAbvnyJLvz7rx5lGuJNcir9nIWhxz4gtI0D/X1RL2gBGb4PTlYz4SI7FtX+GVqgTZMMChXr1P3+tk1Kd8D4r2RUNI3g3CB0q1iIqD/IVtkYTGHoa91c+zg4WeSCq4l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792348234; c=relaxed/simple;
	bh=KweRc0PbXrV8hWTSjmJouk7GfIef3mRPfKDWaKFM0HE=;
	h=To:Subject:From:Message-Id:Date; b=tF/ZD5Y58e0YQhEV2nDo3uGqrv7HgKpnlR9VoV28eGE3KC0EfpIU4sP+u0q5HPYwbhHeSNh1HwwvYC9wD4k1SSjLrBy9cfTL/P3NSROtGLDD5//8QR51WRR/LfDjQrnTXSesaHANoR50CrlSudP6hLizA89xAgnE70D1V1NCZBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoNAu5wC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoNAu5wC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBD9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792348233;
	bh=KweRc0PbXrV8hWTSjmJouk7GfIef3mRPfKDWaKFM0HE=;
	h=To:Subject:From:Date:From;
	b=eoNAu5wCfqk83pv9HrDWnru4Mplme+C+41T2frv96g0GFJJshyWQX87WGmPa60YEX
	 TrFulw5wjQQCSVSj6yAKpwyk26/zXRX19hE5SP4zYtc0eGhOkntZGWHHUk7eLdf8Ln
	 zWl4N9PNx6lWnnprFAq2HrgN5BeD7cpQELjqNdFk5c5/0yRkw3A9YUAiZkcKJ3gK4O
	 m4+wMXF+OsUUNSJCfs7tbAmiBKWmzKzuk42bTcldiXfzQLIT93Hik81F3ijK55buqK
	 JTPrbh+2AbVkvJFq4oOAbjib5qCBCD7Ph03NbUpcBxWJ9CJhelmon/oUyK4O3JoGkq
	 tKqHZC3fVqauA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B3CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234823368.7345.12533191051575991766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a133965311ad0d3c6f6aa500b1e1578d3dda60b524ec93f55d618268450f1db
Date: Sun, 18 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792348233
