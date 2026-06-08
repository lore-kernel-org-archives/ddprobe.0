Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3859F1E1E04
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780886074; cv=none; b=mNfUAtb7kaC9Bvhl2HgdTBKRhWeyeom89B6NxxixGyUNhBLJHthhT5i8OhyXuudY4pLib0viFMrIqCYVo314pA0Rw9fME02TWRFI7BnaXKc3FPDSmy4ELksjJfEjoIfsVm85Fa6JW97m21pDr7wiwbJIh4W1TyTSjEAw1OCda04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780886074; c=relaxed/simple;
	bh=2JJuG1V4ZcIqQsFT/23leiefiR6V6i1UG2M/DpNIqPc=;
	h=To:Subject:From:Message-Id:Date; b=utETNgvoxp255Tc+Q17xyBwlLE4NMtdhgjTOruVc2HdNinV0/Nb0jbmP9SRsrmKOpOHXzMXKvFhtftwyROvCEHgR6dAv6Dunyt5jSDZWQMZej22BQQtvLPPTUIxTblNwLBbtFHiFSHMD8hkc+0cpKeiJVzykSXr5DpX0k/yKDgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKPesZlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKPesZlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A80C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780886073;
	bh=2JJuG1V4ZcIqQsFT/23leiefiR6V6i1UG2M/DpNIqPc=;
	h=To:Subject:From:Date:From;
	b=AKPesZlZoUFhd4YnEHGMNBxcxPu50iuGYJEipfggkIzIcAka4syNHbRgjZL7OniBr
	 IIS1SjJbDBW6hlKANm4HaqQ63aD7KxPd9ml0PkpL5fYg8gEdZVKud5oVC/YD4ZhOXD
	 LinhNpuG8Fq0SvTS7hBltGItpZIPeYImv8mX/Can3j5lncc1Jers8sprB/irFy9943
	 desNGwXMeJue4/nd/YJPw9WpUckUZ6Zt+kX/yHUXHuvl7y6G+22N4nna/5SLyhZjns
	 lMiVyu1SjDi7xLNY47XyEDBhxrlzicBerqszEdhrhsmnWbrMHYqeR5w6NwNW/f80IP
	 2nkFStj9+LQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1EDCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088607370.14580.4637611989547706250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2621d256a6ee51efb3bd90df390c26b1a5afb7f9ef33b79e2d0cb3ba532918
Date: Mon, 08 Jun 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780886073
