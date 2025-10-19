Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464C335950
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760845794; cv=none; b=ePvMU44Hv6s3OZ2w+YKDTio5JlsaTRutZ5sdQ7W5OxXutCyl36CtjzocUvUsNrCZXM8FbJ9S3UDxpDFMjevDuJkaUdcoyJ2Nf4lpvx8bC3CnDJizBBa32UStkIcmdass4pmHa+9HYa56I/CD7gFqbXjPUssgQOuBPB1e1P7dR20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760845794; c=relaxed/simple;
	bh=g0dA/DXC0HppjgkEqqBZEUvQhZ3wCoU/RMgqX3MDxsA=;
	h=To:Subject:From:Message-Id:Date; b=IvFfqSKXhFdTJs24+0wGindmZusVqnOSTBXr+0xo2ogjSTXFmWlewv+HcgA2kY4I/VSVE3qrbYbmyI4IRYuOPg5tanp2twhgoWvAVSbQ66c5gq+f/hzk0XrRl+wSJpTz1JAj7pAvK07hOyAJKvOkfWt4iEjTcR1A6chZ2iCAh8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBehi1v6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBehi1v6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760845793;
	bh=g0dA/DXC0HppjgkEqqBZEUvQhZ3wCoU/RMgqX3MDxsA=;
	h=To:Subject:From:Date:From;
	b=PBehi1v6FCcxaWlA//6mWbciVu4qK57r9R1y+WCC5UV6N6wjce4HbW0fa9v6/cpnR
	 VQH36iyfuLQjCFWTXCH9JnqCwki6s9IJ29jlUeQUyRIZxmliIcatuWtTlxWqCaj+QQ
	 T16Qws/lPEVML2dbMYN7m0RrnFAxI8p4EP88IEIem/08GQtYotfMRaLbwJYGzzKWBp
	 PiGsBdloSA1fGlICQQZPX2WHcatRdYV7NDi/140sgYQcamr9fK2Ll6Cq2iEUq5cZzQ
	 TosyCzuAFQGrr87728Zarh+ab37VyElW+bOjhjGVGkGuCy8lPwk2gxFfL5YpRrB893
	 PxTzEwm/WwrxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A1CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084579357.1189.1954604491899377745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f13f047cb864ea113acd6cfbc1640c1cb3775988d8b97922cdb8661d4dd71a7
Date: Sun, 19 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760845793
