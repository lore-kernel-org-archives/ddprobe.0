Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2AF82D9C
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714403543; cv=none; b=GS4Ds/R3Jb/IexQlwBGB83u4L53rELs9bmm4RdcNc66DZzQ2h72kuyoP/MHV+q/W+EydD84IARjGVpXLxMCI0RVFihI55BI0wvwwN19EIeZXdzM2QgmdEZ2rctjf76FaF7sOO8ImwY/qdia1uNnId8SLTQav/aAR9HKB2WxQh90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714403543; c=relaxed/simple;
	bh=Ty4SzqSj/Dq6WnJMur0wZR+KQEI+BuToNFFbO02Rnn0=;
	h=To:Subject:From:Message-Id:Date; b=OWtyPHreqHUPEj7F8ANkQoL6vF8RjYbHO4jTKRaIwx12SXIGcQySq7WBT8g3ATQydsAWb5wsGTK036sQkhonxdwXGZ2Rskl+UhZT2Tr8/bO4rME7kTfWDqZQap4L7+A5cqC5QjpIxwbq7F+Tt0MiPXF4W09S2+O5SVweev3DyJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2QEGJU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2QEGJU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8486C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714403542;
	bh=Ty4SzqSj/Dq6WnJMur0wZR+KQEI+BuToNFFbO02Rnn0=;
	h=To:Subject:From:Date:From;
	b=k2QEGJU3/JrkSfZjp3XfK5KSX6HgO6HJramTPtAZLap2Mn8B4JbEX0vVZiUd4XXsd
	 kzVZI1K2VfzaKLNh3ooukVYbg3ldcapUmHVceON/VFUHj3pQoNs7g2OIKyvxaOsOfK
	 EICW9oJjo4V+keYUl2xK1UJ3+A+yW3nArG0z6mkJVbPpfpIjOQHYKTO/uH/t2934fV
	 53u/nnn6FNKAbVkkV5CGhry3usyPoQW5wEPQr11KaVw81NunVJ7acKSk/JHW8Xjfyp
	 BMV7Kvx8DrVoOTpUVXxjUtH7N+1nFUANtbvw/AZwEhPXiKTHIyjLnIaRuKW4UE1WHa
	 6Jai9x6Cy7gyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F8BC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171440354281.3593.3969624847585093977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b07aec926d3f9f139344faf191402a8e0556d33cbefa87efc74a7f5c3e496e
Date: Mon, 29 Apr 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714403542
