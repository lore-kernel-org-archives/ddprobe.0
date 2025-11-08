Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3804F17555
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762630194; cv=none; b=U6wyLDcJ1l1CxrI/lRsDHRFCC/s4X+PErw0GxC9OrEwCsjCqjyjhVAIsHrgmCpk/VRYNUFJDIgG9eX0WtReUBIT3dyVJbbre834svq+KLISUoW7HHg9QNQ2T9Gq8b7v9hVXMyTlYBzflN8Ap1ZAgjycT+stkk7I/2EEwxO1F4ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762630194; c=relaxed/simple;
	bh=Sj5Cw78oveU3PX2zYStSiDlZoY7eLkjeQDnD4sSUMgM=;
	h=To:Subject:From:Message-Id:Date; b=m4gtNh0dX+4Ga5tmlR4XUIx77e39dhzagNcPwDRuVZx1nqvKKAi3a6kNleqcZlVPyP3wAM6poZUOS5zTOHlZs5FWc26OH3vnrtBRdAbjp9jIVTNw5tIK19r3XaPjWRPESRP2bZ6kLmUidGDSNmmlmgrkChwHtvrrTL3/cJ21z4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uv6IZZVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uv6IZZVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4776C19422
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762630193;
	bh=Sj5Cw78oveU3PX2zYStSiDlZoY7eLkjeQDnD4sSUMgM=;
	h=To:Subject:From:Date:From;
	b=uv6IZZVicU876IN5kd4TXMzT3NHGmF4CTi3BoY0lHi/1jClE+9l1E/lsVyKGupgrL
	 JoSQMDWCbzZ3XFmLNn7rG4BLsjU3emONVW6PRmgo4DYckq6Ly+8eNMLldveFXuubbS
	 5Wozl45omYGOZhMaeBXvNGfm4Gk6lDWWe5AGV8p0cqFFl9SrehnLIiGH0CcXbN878a
	 js48CfN748U7hgnReuPIce0p25OmKa6uM9EnRYogDoRM7FDfbihHjMUp7y0KSn8nc6
	 zsu9mjOfy1HOLeolqL/1/9V2KesTuNJOZKm4u92PNBSo0aG10IxVa7nPwjM9KhCQ8R
	 mVmYP6OzJfxuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB5CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263019358.8465.12533503391709569914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaaffed177bf680b852a99cacaf71a6b4d7dd2429828dcc361740c2b28842fbe
Date: Sat, 08 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762630193
