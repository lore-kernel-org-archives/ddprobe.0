Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8077C3A83A8
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787163034; cv=none; b=u84u9rT2iq7yuw0PfjhZrUq5yHNS6fFThn7a+a5L0kb+1ycNMv1FB8FGdzj4nEUYZ2L9WDfKQ1rw55q5dCBoFcpUJvi5jA395nLeTjRxz1/lrfkO2st2pymAIS7naXcH+wANXClbmgoIE0njZqvocnoe1XvlP2p1rrQy/4JQbsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787163034; c=relaxed/simple;
	bh=Kk87O4k7vx4KU7euuIy7zgGwarOjwT94/3wFH+m3CaY=;
	h=To:Subject:From:Message-Id:Date; b=PvJr2tet4UM/2CJ59XZrrACu1Pc0ADoJ2DOvVFr9R8bn3tup+32MyAXt8kNSOfpeO9vx/flOYcJ9U3rsoVVWSYlUNexHihdwNjpq4PkgkbB6G504mr1Y5ROQBfiFyqflkrdmXVpahHAFOBcYyH1qhv/mpLnZothn+E3F4JStQ4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDS2Dn/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDS2Dn/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4ECAC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787163033;
	bh=Kk87O4k7vx4KU7euuIy7zgGwarOjwT94/3wFH+m3CaY=;
	h=To:Subject:From:Date:From;
	b=kDS2Dn/oLrCgyiiUiI9Bs1mLtP5WzQOXOIeKa+pI51JP3hq1F+70EgcGuP9k+lOrs
	 SlK+0Kk0q/1idOvFc6yqV1YNrzDOA93u6qQ0Q+KC5VVSfT1GwgvRsyXIgENYO0aTmh
	 OfDLt5XEGVPxJFgybwH0ce5bk6zAUP8zG/chf7MSysBEw4A6tpifC1tImh82qGP+s5
	 vrm7PaDgpylTq03QEP4caP1qOwGxBkftjHyNH57xTfvochJud9PmiOtTwepgIcSjTa
	 7JfO7wNPAb6FqzXE7Qvexi7ZECF7HdzoRiG8axDw5GHR2X8ZM3i+J2MQtwFcBkkOZS
	 kYz+UEWDcHLXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13CAC5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716303370.10869.11448515233282984364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24020e71b1f3351266d858b46a63d885f1efa2e253b9ee5cd7f6738dd94fe68e
Date: Wed, 19 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787163033
