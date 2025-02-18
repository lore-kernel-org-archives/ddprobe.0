Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3293221B9C4
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739906934; cv=none; b=fJXb3wTsW5sRTe1mHGfICkWm80+I3pqmf/vi82/4YD5Ah4VcX9O1QN7bhFQbQPfigdVFAmZOV5d5uZboNDHt8hErUa6c1y4cMYETh2UOz2ZYdAr/u4uHwA+b4SNO5kuiHbX1Ft60OykDEYyblQLKVeYC3rvS2xwQWjaO6hO86ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739906934; c=relaxed/simple;
	bh=RzqgGRUjstSARLQyC/7tRNHHQMBbSE0a5yS6J+5YbjU=;
	h=To:Subject:From:Message-Id:Date; b=CX2jRlDcg2pebbhddrhbkWRySgvp15WHZ4ktBJrkM46r9CStXIY5gKsHUiRqN8LzcgFc2q3si7Q8DlbzX3nfrcYmG+dxonYhdWFXzu1EoN6RwUN0mjMe0NogKRiy/SHJJxqoo0D/hKgSq6hEDA2NTDHTzoWnR7iWA3vYJfSjblA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxI00D02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxI00D02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA372C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739906933;
	bh=RzqgGRUjstSARLQyC/7tRNHHQMBbSE0a5yS6J+5YbjU=;
	h=To:Subject:From:Date:From;
	b=dxI00D02JifuoYKUYzPdfEajNEirz1euaGKY5taDD8DiES3m1TFaXxB+WWtP1EiW4
	 aYqwEFvu6ieij2OX6gj0KGwz+RQqlofPaDsmWKI9JfsnqNcLpz1anI5buBSNZCInQz
	 rlQx6GEaf2mEOdNJdyDVzIpldEIOHhABIhvPQiMhMRpxY9spigj5BJ9WHG4MAaSau0
	 R95dUc7lWckZDl8NwDwhNp/dohx9fPwtS9HdJ7T+lBit43YRoWfaSCDAgLBc741CtV
	 qP8eO1AWzS3QQJQUQ9SpiZE+2bvrVVnBHstIKjT3s2zaKNh1F3ylTES1O/Exd+bfJP
	 S4eSUU3vnGfWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96892C021AD
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173990693360.22223.16056789643307113782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41341b0f72575e57084d20f197160dbc253353556fe41cdc82900f8271875a9
Date: Tue, 18 Feb 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739906933
