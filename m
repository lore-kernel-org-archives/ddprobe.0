Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4A537B3E4
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770647034; cv=none; b=T/564R5Frmx+qLJ+rLtHhrIxsFQjdaHsvWT67h7gpz00ogvTTTeBHe8dGYXTsHvVrniDqGhxWS11K74lB612ix/illjTfofTl+PzYskv6E6Qv3SrGSTYj83DiTgYsassO9SFTz01ivO2MEfbLcljX212bwUKAkE7s8QRdYr4JoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770647034; c=relaxed/simple;
	bh=ZdJ74DATBrD3Q2HrBUC/Neyy+zr1OCm3raA1A/lp72k=;
	h=To:Subject:From:Message-Id:Date; b=PfA6Ch/7+/DplqMaumi4NUDG01RTICAag2W2x0uBu48WSQAtBtuCrNKk7AE/NKArWWrgAH2djhldPIiUsilSmx97j+K8aFc72QVlveSBG/vZWlbTH5Mu+mSFrIoy1/iXhW8dxglwInECtZqb03FuifsPwj1CEKoVgVNlaDugxkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o02zOYih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o02zOYih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47EEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770647033;
	bh=ZdJ74DATBrD3Q2HrBUC/Neyy+zr1OCm3raA1A/lp72k=;
	h=To:Subject:From:Date:From;
	b=o02zOYihd5wZZqTJ9WBAZZxzna6F7cw0C/SO5zHWvB+z3qsZgPWsxhXQDSpqe2nYa
	 sTMj8nyy1lqXuBYSfXiMVUDFq0Yi7APmRWcQQoG43qnRQfXenZn9sw+ctxxNOCCrFH
	 5Qn+7CN3yPf/WIXLOWqNkyjNUobjDeudFaOh7lk4zLSviJsox/UplNMMrLwnOf0Mq/
	 9KODT28t3FnMzg7OnrTrnok8yFkcjToaGVNpfX9K26TMVuAC37MGH1q/0d4dvrfKVC
	 quyC0B7wntvytH/MV/redeJkej5qB0wf2rqRuYDf6oRaiimapg6iceLiXMCc71h3WA
	 V9o2bjM4A5PRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4195E81BCD
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064703363.27954.11426294542818931779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa2cf7803ffff8505bd56418f6f8a7413d1539786e03f21378a4d31de3b8917
Date: Mon, 09 Feb 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770647033
