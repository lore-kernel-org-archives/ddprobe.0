Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC717BD9
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750489194; cv=none; b=koCO4Lzc1UkkjBXncSRhL8/i/ggsGudQ4h0YLGmtkDnqI6qdE3xyV6wB320Lluvp3KS+9UO8FfLgzjLZdGIqXLgPr/66FfEa91fag/a7aq2pJY4A2EDTiER3ko5g95L5YJnAohh5Kh8RDXYTeNjXCega7DIoeH3Qh/Ra/Bu71es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750489194; c=relaxed/simple;
	bh=YooL3liWJHObNaaAN8kCOhp7R3TYvsuJHvBiWoP47eU=;
	h=To:Subject:From:Message-Id:Date; b=KBR5j7sM3zZdZqkIfQrsHkdcsrFTtP7qZYj/0dmYZjk1V5A0iX6eAFWV54Gp2YEV/qGTcLqMbXYMdBxqSaiYCv9HIph4au08+/drrzRiIxi7gC2fhiV5ZEyzamOMBWVTGZaFTY5w2r2zPCFHZovMaJ+WPvFhmxYau9YR6g7qLdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS3Mn/WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS3Mn/WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7BCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750489193;
	bh=YooL3liWJHObNaaAN8kCOhp7R3TYvsuJHvBiWoP47eU=;
	h=To:Subject:From:Date:From;
	b=uS3Mn/WIUh/mx5ttYk+dQtOfyAHyj16tgE0bIa1FTFlOa/ugjSgbimQLJHPlaRNv0
	 /9fJR6pePCc0P5dhuTz7gxPZQvjl+jX28exNuk+/qf5VfDmNln6CsgXgk6bx/XiT/j
	 s+bajB7pzWUKgYV2GTmPkpdIPtxT+Ozei6rrNOzT0v00px8MMTHObgwlyl1jZSxIG2
	 m+c0sfppTM10nMEIq+h+cMe06JkBG+101Pxs/EhbsIU1MECqg9RUhqPXRLqHec2Y1V
	 p/XuwHomqvPkr1uKT+L1OBkIVSx1mifoqF1IATa3Qhv0KAhjZvxnGJPAWxm2JYwlMq
	 43omtbl8Y4qfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E52AC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048919357.27829.17635023827291198733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e0fee11b44a9134cfc3b20b2752c0c71284224cadc63475ece445d1ecf2448
Date: Sat, 21 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750489193
