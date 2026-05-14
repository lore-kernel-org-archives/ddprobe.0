Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2148F1E7C2E
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778721634; cv=none; b=j5oS03lOYL7AiMjotun37gxvdpfW+Adx9B2d7Hh5ahjwbnnVbhC2ucR5JqCyhaKicEXaCj+yoJXp0mthDpX4FIwR/+ZMk8eTQa3D7mZol1MUZtECcGSk//H+7QiVWGb6nE/mkNXqlm0FS9DhR5Gd6a302e7OdPTazcez4GPcdNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778721634; c=relaxed/simple;
	bh=idHyJGYgGH8IBfvq1Ito/72Q3YfNUrstjZ4JQDzZY4E=;
	h=To:Subject:From:Message-Id:Date; b=KVz7216beB0XAI/kjDVmdMyCd/zg7CPfbRoC6OYrjtYdj8j6NnyNRKei2iT6FypGIwm9nrkjkSLerCfzjWDfEphC/fnTQg7bsiaDK2rEKNk0QSFZOT88BanhkXxZCx3iXzhfOQEUAGxd62guEOKBg/cs+Xeh+P2H/+TYnmTefQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUdlDUCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUdlDUCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED0CC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778721633;
	bh=idHyJGYgGH8IBfvq1Ito/72Q3YfNUrstjZ4JQDzZY4E=;
	h=To:Subject:From:Date:From;
	b=EUdlDUCunaGnJxxGJH190WSv61jV8OvBAuWvfSpxPSvyxPKM97qInJWcz/cXq1b2+
	 6tCPgBfjgUwfP61owy+fHujG6TcpHAPXWOHeV0d04cmEV9ruOp2c77nO4HELekm26w
	 2l6W6ACjzZsrWB4YUe3AuSFWNo193TowGy9BL4o7egnxJ3yI2lmZD0mmjzrXVJRcoT
	 DlSZToERkbdciY3BbxOisYUv1nP05NhBfZALJV6vT2FDIOBOLRW3nCwofs27ebEhZy
	 bd2/fnlYtlVdA2iEDva9mJPv/wm6/e+YNq4lrN8otz55toxhWwNH2W423DybrzDOUO
	 ddbn5TXzUYzaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13AFCD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872163368.18146.5967468160947980820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa704008b00779adf2c981ce7def773b2968b95144584ecf56755726a87cb53
Date: Thu, 14 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778721633
