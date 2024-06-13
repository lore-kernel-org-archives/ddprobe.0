Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7391C12D76B
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718247503; cv=none; b=ghdRLYMFLg7oVbAAC0m4v73NYk5xjr/g2BkVwmgmXCHVLwAyoDugSE/USeElJA/YH4KvkzkMooeF4iZ+SX7gHrc9KuoNBR+NMQijhy0N97/11uxgupPxl92aL87iPNlFcBz4UgpK1G2IEDjqQbPmiqtkT/bzzd1an3y1XCeVN3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718247503; c=relaxed/simple;
	bh=ra/X4T0NtN4CGql/bJMMU4Pl3MMB4UiiVCuLKxHYZpM=;
	h=To:Subject:From:Message-Id:Date; b=L00t7HeS5aoBviQhZdEpuPHAIdmQ2X6oAsKf3MM7mZkMTEYJgTyrhG4jMfe/pk9DkI+X4Pt1wlt3rzGWejIQVJafL4yA8goBPq+R++O7m3CuXhI3+kgkWIgOnUSUv0k3FSC+Jhe+pIuHOVOwuZ7dY53PBJac0Tf0SB7gIraSe+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+mCY23P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+mCY23P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE76C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718247503;
	bh=ra/X4T0NtN4CGql/bJMMU4Pl3MMB4UiiVCuLKxHYZpM=;
	h=To:Subject:From:Date:From;
	b=e+mCY23PAyJwtLeKK+o71pI6rum+kwh4ohtoazdKhe3LheIxesovDekc1Dl+eTKje
	 R5T35CBhfhGhSvqRiiIQ7o1tp5mP8TzVtWGz0h+3k7SVqoTP6nEek3lesCtpZWVmmR
	 v1iRHrhzrjoXFBKP0JKS30sB+rz2D2StpH5kJXndw/Y/MXXEWzCB7bS9fGFxSqW2dO
	 dqxHoXC8abKq9BLgvU7CVvJU4t5lYSNGVd/pWW85OeyGYCDdR4lv83q77MY3sFCaf0
	 KUPp4dIV+K98zyuRdvboAMzB6xMkMSMzbRsOnYnMcRz40lho6FrQpXcAHRTrnLPuVN
	 jYNL9ndmv7KDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAEA8C27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824750287.995.4619252705020756464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318d75a2f71ff35d6b447bced03f0e5e658cfe4553c56785c7ded84f621868b1
Date: Thu, 13 Jun 2024 02:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718247502
