Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596E32E40E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 14:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713536423; cv=none; b=RPirinmbi/q+XXzN4a0T97Q+DcnPAmR9GRWyi/ReoLJ9WimUiWhJcy7tPhpGjtHvGOqeneccWUADybMA2LM2woZWQv78F6PCiQtgaMziKRUd9VnyFgjdrGEyOXHlDcplWhDxV+TWLgwVsJ02A3Fmzza2tFO3UZ+8ep35qdgxs5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713536423; c=relaxed/simple;
	bh=dcwHufKJPjE2dMsgLAdwoJlz556QkLHAtf/Wg8lDASs=;
	h=To:Subject:From:Message-Id:Date; b=QzUxzQmArGVMyAhEeqF93V0HiB/LLcZJtehnaQ5wzH40AVISoIeuaV1+TQNg8+wzUltzRfc6n4Upv7tM5qwDAj+AxsqhIAzMm6HZKNkJBJbZSuu5Qh8oqhn4c3Hpk3i7kYKjEgAemmjqpHg2umL7Ldif/YVBUM3LZN2O//RVUBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWKJO67f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWKJO67f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1144C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 14:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713536422;
	bh=dcwHufKJPjE2dMsgLAdwoJlz556QkLHAtf/Wg8lDASs=;
	h=To:Subject:From:Date:From;
	b=SWKJO67fUpN40RcPIwD/X20dpXtOmA4b/vX8wfTu5XTiW+pX/zRKMNF2m3l8Sshwf
	 nDjGnkNRRWFJFGptjJ2HU3+ZMsqAFRjoh+4pJ4a8PJGF8Bzz1Iey6fjTU7SxB4NX4M
	 ZunRuewiTXbwyf/yf7TVgWUsL2EqGoBxoesa3R6QxReGR6iKrvP3G39OHgr/6S5Fbw
	 AmQIieYXGCrpgdZ5ZoDRdljg/EDiDBHoPqKVcdKr7CFJ4N2cUCd145MKHo3ieRpGNt
	 YEMO5ozgBkNHviHBQ2fBj1HWWdgp7Q64xzynAUO4odaNZUZZgIVb6/4hoAk+F5HH4J
	 UNdxEyBsCxG5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA99C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 14:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353642277.10807.10039290346354596542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9ee6d6a866e83c65d12633b36be640d09257721c90465d655f2a6958ccb9f6
Date: Fri, 19 Apr 2024 14:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713536422
