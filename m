Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155943164BA
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774652094; cv=none; b=eyI6Cttl+C4+1MAEtERnnoM5517OhuOXDnmq2/eiopHjpYbvkTXY4yjrIEF9wWzlk05ni+Ai01yWN8Ftgt0yI2ZQjBI+H0obC06yKpfBaEFRfAHTnU1+e3q48QGASXWOnRDrDh2xPHoD4DWJsHd8f44q4CueGYYlNE/Y5/NVMlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774652094; c=relaxed/simple;
	bh=R70lEiQOUQ/6ojNUvYh8GXCpWVASW5y98UBzwz7TqOs=;
	h=To:Subject:From:Message-Id:Date; b=ObfjPCiuDJKnBVCGFDB+92ileZ80xYzyN/jyBphus/aXcLh9j84c4kZf59o1BrTLeKGiOYWpss5CSWAahstE7ca+Pis6Re2Lq8SBgaGdaAzI+YmPelt7RYQ+FKIvN/6YPcH0dhWcAAR8sAtOfOW0YiTQ+2beuysIznBS4fQ4il0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hA9mnc2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hA9mnc2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA980C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774652093;
	bh=R70lEiQOUQ/6ojNUvYh8GXCpWVASW5y98UBzwz7TqOs=;
	h=To:Subject:From:Date:From;
	b=hA9mnc2Lta+OomQqszFZMprj65mKO8RvQs5KcbmDFcBCDZXdRV/PYbDaH7xaD1Cai
	 NctlXvMMU/LdBF8+u7ouHqfZ5MZ7aIpfUFq0b6PvixlBx84BfDS/DE8AWuvH4XaCSn
	 ALK/23FdlNDLPajHTeh4OML57YkTC5yBRAZui/2y+jLNwgWmh62F05YJ0U+h3SI74x
	 eQzvxs8NDQw18KOeLp6qujlLY0NFGn8AAlOxIKhLYNFylgv9oFq1Kb30stYsxvG9bA
	 QHnhKCiDUavAvpulBjwID6uO3YUJtVGyWe87oXdd/WtJ2acsrtDOWptCFMdhdecu+K
	 TAiBJZgAspiMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E4810F2872
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465209358.11829.15213359743713949943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea2d90ae2c03b15707134075f3d350a7417262d42360113e9f11638252d1938
Date: Fri, 27 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774652093
