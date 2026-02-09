Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129543815E4
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770657234; cv=none; b=n4ndMdcXT1gLpLHLOuOglZPQl+aC+1RSj/ciF8S3oieSpSRwykraQT9hzdHePwIMEw0EOH7dF0gwDXtExMBFRmbXq0nVQrwyFIsRi2lWP4N0/ShfcY13p6hkSThJkRqHoN1TF45HBnXdqELowoWfkZ0VTzadF6ifkVBlIgefiAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770657234; c=relaxed/simple;
	bh=EmynGsoS73TKeZvAFKQ1mCCvMIX9j9QnMx3htqLxiUA=;
	h=To:Subject:From:Message-Id:Date; b=csXeKefy8vkmA0c8i5pKpAUTSrNClbb/A8Rl9J8QTAyDAU0jAYTRo79xb3ASTaZaUqJuab5IsRIBf1MgfIPtGEZ1qyudeoPdnA6Nft0rKJixDRE00BtZaHrEP0Qa3Aoz1iahax9WVQcSqKyiiD2DqOKEg4zyE4dC7uEwkhPiXvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0iUKvD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0iUKvD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0332C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770657233;
	bh=EmynGsoS73TKeZvAFKQ1mCCvMIX9j9QnMx3htqLxiUA=;
	h=To:Subject:From:Date:From;
	b=F0iUKvD1Ry33JYk1n6rMJCKdvp87F+JpwJKhOYCAiGQkgyJNQlh9gKJZZZnHtO4B3
	 ESwfNxPZvDnKe/FcnnRtFyWRkww5aO4NUHCbpOCbJ7TUuUHivzStsCjLRD1iUq5OR0
	 c5LZz2e3PLu2KaHwEJ9jhrGK/CBysgFvvYtkdyoDEp+kswPflcM7i5ZqacfefIEHaX
	 qrGyUxZDVZt3GzXyGraDJa7mCqBQ2g6QUYAzVEoPTmokKJlvQgZDIMDDayMoK7Q0U9
	 dl7A60pd0r8cEm3JQN2k8BmR8GVPNOXH56jpOjKZzL2awooQ9Z+NzgT7KyFX8vWSQ4
	 7rXnUuRuMgb3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0E1E7E0CD
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065723362.6331.12733969035114332984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23d262d4c103eb5e8744af5c6a8242531856eaed205abe8c361c5897d195638
Date: Mon, 09 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770657233
