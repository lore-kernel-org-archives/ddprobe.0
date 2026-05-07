Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC1E36CDFE
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778159254; cv=none; b=l8xG0ND5uSX02FhwNvl3xgkcP63y1HtwR+moil7/J2Cxp3p/FGdbAojAAfAzdxAxcwYOeq7TtslDZbM0UGwjYDCZxYIyc3xTZ8lt/YVB2Dm7vaBc1JhAp/79uDmqJ8CeyOxCBtH01tXuXwr1UYBVFj0+fQnneNGsXAvUP4cxGKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778159254; c=relaxed/simple;
	bh=E+dGUqOSlX1RrQfvoDz3mafrMj+H86AqhQXJ66J+LSs=;
	h=To:Subject:From:Message-Id:Date; b=U4laelAcfiq9ZgMj8MToTY7ZDkDjX4Ej6ocDE7FLtGl2QRddU0r6lK38sItGbAT9V3k6eKhNFsWG2e2gIATJR4i5L4ymxBnjAXAyiucYku2oDn2ApXOiMwGi60Pj035fPgBQnnB+kSlWT//R9QRPUBRa2h1NTY+qTmeE/BrEyYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFARLhA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFARLhA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCDBC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778159253;
	bh=E+dGUqOSlX1RrQfvoDz3mafrMj+H86AqhQXJ66J+LSs=;
	h=To:Subject:From:Date:From;
	b=bFARLhA6pYQ7TMBhxqs569lR4SP+KO895wA4ToX2m2j5g/dNiaFHKsFLam4dHTszt
	 iSdAC5y1UZ1Q0flEPT/RlyFM51lXYUjVxtn3O/bEBrXn2a7jVbxbDhwZMIjntRmaWw
	 SvTuf04TaO7BTAktNGV4BMSbWiBfUOq3ol86EN7ZE9ikU9ftS8YX5aPVm8bdw5nxpR
	 biwy+DCbmaT73yOr4CCmv/uaqTOfuCkQeQkcIQt4pbgov6XaG3qQYZk84Mm9A5yfls
	 nnc2vqpkamhT6cMNYx5vEG+at6uvNOong12vn+oqhWnbi3QILDvy4ITjN+ki7kyMDM
	 A8XVE+fLMmZkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF4FCD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815925369.31887.11667537131080791014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a8d4ab702ae4ba5105a474d7e3a4c1d7a229a08b0cba7cb7b5c8958968b12b
Date: Thu, 07 May 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778159253
