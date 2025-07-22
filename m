Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088332E36FD
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753153794; cv=none; b=BVDH4rMA+U/kkrqgICCQUqHOfy8Qn5+qep+D3zfnq8F0XzMjADnH6RlacgcbQtk65YHiXKLLTsYJQ9rjaGRP1VO0XHKrS85gQZRHFQDf4LTy9HnHltDwy8isegG9YF1pgjKt9YilSKpFEkJWjnZGmA0XCitT1X5LyLHqdKd2iaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753153794; c=relaxed/simple;
	bh=F5V9/9g25mYGpvg4PkFhLa6PIBAChxbtac5PcQg8YeI=;
	h=To:Subject:From:Message-Id:Date; b=G53ir/gLgg53HoGGw6S4SEMe/D9Lt0JQAD2mWvjhddkUWOUjcU4GU7U/OpxnS/KsaNnvXqh6GU5qN7tZDjpzdelGuTx885lEwqpa4ctegdLODgG5V4zIG7SOIX9Ds0p2MwBdfwHdvF7aQwlpsZ+1gYScyQ37mlTpos3jmurXi68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPwKgR5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPwKgR5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D943C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753153793;
	bh=F5V9/9g25mYGpvg4PkFhLa6PIBAChxbtac5PcQg8YeI=;
	h=To:Subject:From:Date:From;
	b=sPwKgR5qKQCIGrY/gh9NjJa0pL9rBAByu2kTLIqN11HeltfKUdhoygBy8VDXHKnOR
	 hrvV/OD5bg5SY9nnpG2MiRD8alLt7qxZP17039PdIR2ATXU4VwHPqZiXTBlWQFh5+O
	 tDAScKwRuDXynzGIBwMiPGUgGofBwWv1oCOeL6PR+eyglH/zDkcQXjTDRZZ3emSRjt
	 /Yi36uydrvB3FpuKd3kgP+xzog0honRcOkeiV6WAtaesHuCYGWLGHxKzvqUh0wEWAI
	 OG8Aj8GBiQTkjCGbgbGxsp4B1cyMRPTSyL0RvrCBR13aguFblWOsmNgK1jt5bEKU9t
	 jSOfgpdN+TMcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F070C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315379357.20098.12266577589411930663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc8645ea5b8d10f45ae436b3e7ebfabc19dab0853cc4987e76717061c3b85e5
Date: Tue, 22 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753153793
