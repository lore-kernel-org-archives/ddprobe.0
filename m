Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6955B18A93F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791040834; cv=none; b=jMPczu5RVGc8wSn/aSwsElvO9R45zzf/BtEXTq87Lw1hs379Os26cZk2zTbt+AOnQzEgD1rtZsaED89vwXs5qMODUTQWcanI0ZKmW6UZiYxnHxRpg1WARAq00kX5hzr42NeTfqgDFZPQvQJisyEdto9NTIWq06179rqAxOT4/qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791040834; c=relaxed/simple;
	bh=Jm0RKx8b40KPw1WhEQ2IVGbxOqFAQGqtcQMRsxRsZbc=;
	h=To:Subject:From:Message-Id:Date; b=brM7T+rJYhGc8+2fPDsKpsxwuSC9Q2jVvZugs3JEndZNGeC90+uN/G0MMI3KWy6mmGfay+nU357hf3T/Hu9RdESOY5VM/7ikXeQvu/OWSMlLD/wmxmhKpSM6AADieQROGzKs00qJZ6PmDelitciE/PjgRvTHWeSP5oFq5IgapXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kW+O6Z6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kW+O6Z6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D316AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791040833;
	bh=Jm0RKx8b40KPw1WhEQ2IVGbxOqFAQGqtcQMRsxRsZbc=;
	h=To:Subject:From:Date:From;
	b=kW+O6Z6Z9MaJFHMenQDe1nuIK4UoAkFO3xKiutZ14xJgzR1ibbecZL8BTODVTPY96
	 DS7mFn3S6zImTvyjv+ARdES+E0bJj57Iitgy/gm3Q8D4v6KlwjFJc9Pd+jtaBi5cZE
	 Enk8hmvHRNJdLdbSPHkzFF6r8mZGgDlGapB7i9SvVHCArDOdfpVrO8PYRO55+GqL/O
	 TZwFUpZGuq872qoDuQSuocso+LZSQT4czTGJnsjNc546gJPCKZIUw5mYw3Tz+j7RBi
	 pvg/UucdjdSveoFyqP7jQB7AUeWc73hLVh3KzEnjMwi9ZjDQ6d/s/Se5SVmtGsslep
	 W+23WHGgUHHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04B4CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104083371.10182.14712933244974879745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68df9955cdec36156c07460ec13ae063789fb4f7d9daf86fd490b013da3ce270
Date: Sat, 03 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791040833
