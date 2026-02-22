Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBED1A0B15
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771746894; cv=none; b=KhB79gwq1luc5KR3FEfP8nyHugzs8mKw1d2juEvYNkTn8nvnVi+sQeC9/mSqHenshHu/c/r8rnldowQiN4EW7YTDEkPFGPocyF5S+fCn/MV09btrtRO7A6s0QuHJKT40GxPVSZx4tw28g2+O+cQ3Pa9AzJN5GnwEBWtDLW4uvfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771746894; c=relaxed/simple;
	bh=kRY7IPf/GNpH9p/8zjeIoi2oMJ0igmxnKNgY5t4Oum4=;
	h=To:Subject:From:Message-Id:Date; b=TtcRrWoDV9hVzZjSSgeFrjac13z6RnPeQaUG41+D4WuidqkWR9DamTrc06dim6m4OOHT0/Qu4nrK6rYtdjYCcq9RHrLP73Bxgm/SPTsBV6Ind141OzM9nsCeyqv5wn1dhpd8rf+/7PvNaSm+064Yrz8a8KcgFutijnLqSi57WE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWFdq/7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWFdq/7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7892C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771746893;
	bh=kRY7IPf/GNpH9p/8zjeIoi2oMJ0igmxnKNgY5t4Oum4=;
	h=To:Subject:From:Date:From;
	b=DWFdq/7mxlL8nYUH3NTcV2dLvWoFxU+cd5LwkOfn3WoZMGAFMdwg4kMY6lprWOb7W
	 1VH7kTinhvfDFNP092CNCdzsc6TKeZeaV8rN8Sblt4G5tXbu0vbfAIHr4pP8B9VyOL
	 WX5l3sEelUbCZBBJroBn/+8rre5nUlwqPlpmKQ2+Hjv/tXo8oumaHBXDEWiW2yneW6
	 lA085WedT94dJ1tBIWHl9bVO9T395nlz29Gt/yT68Us3Y9tvs8r9xv/hrkJVgIOhx6
	 6MPKmWQLcNi1XGGAM2g7eBlnPiEa908LUUVJWDjLcvMyhNtwEuV++aLWOv7Xq8tzqI
	 VNceEdb80yZ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FFC624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174689358.20057.18316174257885323903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2028a9900468558243ea6be2058e41f71e8df4bf9a5e696bd16d706755428e
Date: Sun, 22 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771746893
