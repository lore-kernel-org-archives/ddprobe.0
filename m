Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4481813A258
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780250074; cv=none; b=CU+sWQd/Wq+M5nZ3ChLq90w5S/KuGztXwTiqwxdZS3XcRMhPp/teEba8MXDafhCz3S6cLBWlS1WQHgkSMHZVah+wGEB4brGI+O8p+/dWLvLctlWJdMlBJwoORRFvMVSau+2VinQaGm6/mOIiGht3XhcPpQ5tTilcNAyLGuCGLVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780250074; c=relaxed/simple;
	bh=wwANsoTx3buq1iFPsssBxQcjlX/EIk6Wqt4GcuXSBkE=;
	h=To:Subject:From:Message-Id:Date; b=SgnvrpYyMBSJrhORIJ3NEKHofM7Q4SIGXF6ZY1gPgvYW5CuTksyr30MDJiVC7pUUPFzepEP6EpUH95piFskU7RziSLtUYH79eTpmkOu/DLE2/AGBrVGLZaOL630g8L2rO4uQzDqUOBSqBeXk6i48SUE6eVi1QvvuwmQK9rmXeKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmzHI+Hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmzHI+Hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB225C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780250073;
	bh=wwANsoTx3buq1iFPsssBxQcjlX/EIk6Wqt4GcuXSBkE=;
	h=To:Subject:From:Date:From;
	b=FmzHI+Hym9kZQpALHFVw1lIJitzXQ4k+xePgti6q5lG154H1SwCqnYT7Nkf9ykXtT
	 6BzWC5vtOwgIU2tlCQ97NRBf16ttVY1jdqqb9bvrglM5nzrgZTInpNqRbXP3ge3biF
	 yrGJBMHUQVGYVs8Dx0MJfTQSXPZddbToaTxVoYg7K+POghZfQ9HZVhovKnarynSmMq
	 EcJT6YMD6aFXhgrnCBX2Sp9Juz5RvtMaEd3acvTi+wj6SgP5aTgtwuv47BI3dcCHJL
	 5GtiFDdyicSQR/SPi1eqmydwnUFcs7wBhoT2lvBeFGHaLB5DnsNtaLWcV5TChpeZgh
	 Rs8Uz8PSMhXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC51FCD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025007368.31022.3394112182071132479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a3852d53d2391ac26ab577ce1bd3d45cd8b7e5128d05b855442dd922a663e8
Date: Sun, 31 May 2026 17:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780250073
