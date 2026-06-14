Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD59171BB
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781414194; cv=none; b=rmejBSt/eREztOIm7UbofpFwFuTqlfjhOdnv4e/aWWmzTwbuql8PygeqeWsnGuJP2H2fGz/t8qt/7W1S6edEhNXUcpWOz+pBN3jKZsidB5VzayxVmKLcgi2wxTFJuhgYAfcY323bL8bzLubBoJ0QRouo3kSYemm5cZIT0H85fe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781414194; c=relaxed/simple;
	bh=NC6Comx1ky8ZDSszaTx5FKbybwymOOJi/LXrx2+A+co=;
	h=To:Subject:From:Message-Id:Date; b=AvPNJjURTFFol9DdqiXWgNnhUzWnH1WGYASJwO9iP/l//6GgDSuUwo3pzVAupnLGV7M26MLXDlRM8oFUpoMgppjL4idEUm9jDb0MfUdu3MQk+G/RWLJjhO/PGWGLgLGSVfVsL3Ctbt1puJ8g1Sriqoq2YIvUBEeR1RzhsEutJIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4pAScOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4pAScOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44F8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781414193;
	bh=NC6Comx1ky8ZDSszaTx5FKbybwymOOJi/LXrx2+A+co=;
	h=To:Subject:From:Date:From;
	b=u4pAScOTJhjEzYMoDDVVu83vpk/qVg/+quMskRc2ttG1h5xS41IH61OJxeOI0Fyix
	 aVwM5WPRt1ZB+Y7REbGOaxDSMYsmvg+5JrgCFffRyZvx6Etc5f2Rn4r8USbkAGSb5y
	 3SG3Mnght722ICOU7A3SuJhavdD6j8W1pxMQs8ILphhxXVsUPgNAURJWU+rCEuRUhM
	 5LTnvA/MDA6HrsDrMoDBcdp0qV0sFRp+X+zMf3/GKH5cSt4qIDel8ojhqzCbi8OsOZ
	 Gq606cUpGK8dyAGRLFTN/X24WjezCcYVDgkABMpc4c1sgw/E+skZQqq//v0EZzq7yX
	 K6eJkyxM9FZig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F3DCD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141419369.23753.3191793298181625706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9e5b24efb8a3722711579c1baa8fa805a2d1d52a91199b62fb3bdc8c982d20
Date: Sun, 14 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781414193
