Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B217993
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772867094; cv=none; b=Z4pIIMzFxC6bO6qSdO8hAeP+NSBxQVRy3rqSuaKulimGwDn/+LjYGSsZBCskm0G6Oi2Ohiv5Q9ERLeRh2CIdsd9+ZqIFSBgdP+EPY3lq55/SI1ClsdCFipSPP+esPqAJ+FBUMvQmzdXnpGfQMe4u3RqS7oWs2vvwKfPgFLo1zq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772867094; c=relaxed/simple;
	bh=TRXRRlNo/IfBwShqtvlpIRoXZ66CbUgmSRdMzqvAB+Q=;
	h=To:Subject:From:Message-Id:Date; b=Nc1+9qbzO1lYdzCW3PBl0vcSa4obIthdnTqWJtTkcIjPC5XBOgkX2tJhZ/EKgoC4oCQ3VMAuXZTQDBPrEcz0tA7YO8WUwHpllf9PDTLneePQ54JGuz8eoJpIIxEIDcj8itU5B7+Mo6Paz5R3CS+nR5dNDcdBoTd42Yex30DVdHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etMbn84W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etMbn84W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9591C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772867093;
	bh=TRXRRlNo/IfBwShqtvlpIRoXZ66CbUgmSRdMzqvAB+Q=;
	h=To:Subject:From:Date:From;
	b=etMbn84WxcjYxFNCV3HztJD4d4zzN/tpk6PbBC2pJioGtyUps/7PlatQw1O6dfNL+
	 YByX2Tz5BtJlX37Pt1rS8XVAY6Dk5cV1bTQNIdKbH1c6rhAYzT3WRKgQV+3/yuJ8W6
	 SoWbnihjKfL3Rjx1nUww6uMyr6ftOEnHLGSsgu6e/XQyKUtX56lp+bYGLy6sKaqJKf
	 7YAopHEHpTyWKxM6gsFFAEKZhwMEzYoR7pkM5B+maiG1YsYZm5bSSO9DWRLi2LwCoY
	 o74vpDH72wIX1F2Jx8NgCQRYCivKbYm6L7jcH3iXwB9oBSmYAcuLb0Pa/H1xvqnFRU
	 ZnsTRuVMToaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01DFFC9ED3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286709362.15184.3102238880058591873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae10a3ce75c6e439484f3f1b53dbbdfe44771599e7d01475067a978507b1834
Date: Sat, 07 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772867093
