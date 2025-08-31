Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3C717BA3
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756622394; cv=none; b=rFAqAQ1HYF3Hxn4eAgvEYGMiAx0qARw+oFVwCuMTDoc4YniLMTWaIEHpmhkfmdpngzJRRCwU1TUHlUa9g/dB/EyH1QZyrrOvh07eOFZs9oANlLaFwBbNiHdXJzeMPucjegLVHYkvCjUCermsQrI/fyVEBIyD4TVe4MjZy4HTbQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756622394; c=relaxed/simple;
	bh=i+mRlzYbpJj/wTpEMkIRgmtpKbtnWUbssynxrxUOZfw=;
	h=To:Subject:From:Message-Id:Date; b=QP7CpOWlxesUEXJDYNukSj4P55XWCHxbe+xHGkjaXJeYe9Udvl97wNeJpMpNuTQXqlNLgOuxYWldTZYi58ypJk4Dbe4A66a0V21IlRPG/MtKxmVdbcJ9f2laF+XXCNkGyUWf3uKde0eXbTxOEowAyVS5pgEUzUJwMu7okeWvyPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ny/TCbKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ny/TCbKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A04C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756622393;
	bh=i+mRlzYbpJj/wTpEMkIRgmtpKbtnWUbssynxrxUOZfw=;
	h=To:Subject:From:Date:From;
	b=ny/TCbKK9mtbcjzzjFy4sq84P4f0GO2lwm7A2ofba1NqWtMSXKUmCLknJXSXGGPbr
	 +iBv8rG4ZS4Mno5owgNAApV+42SsT8NB3x73+5nXvRkK4RTbCxYRgi0iDhhIw/0VNa
	 +zuD2pmoGpTg/dhCNHe9utDJLBdtth0EfOrMEqhC09p95QuCKi5BNjmF10rE989R9p
	 a9sVyvssDBZeleVy3+yCCcIkXMRsgcQzy++Lhf8QKOczYGtdm9pOzvZhythp4NAo5z
	 4krrmFlzirM7cgkFKQII5K9vX6C5GsnvckLORHPv8yrLse0rh+JK8NpVMXumxrCvIW
	 2R6v4hxmKRujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9362DCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662239358.10915.9309213350637996633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2765eab5104942d241dca6a6f702ee5449ce4b739a038f11918429881d69c1
Date: Sun, 31 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756622393
