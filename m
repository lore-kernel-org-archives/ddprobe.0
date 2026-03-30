Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25BF2BB13
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774854894; cv=none; b=Wf7FvVV+7eJGRVPiAkBCwVXD6z3p2FjxWXjfn5CkgDz3oZnxieqSrTloCZBfovU0ukS/AhSQfWNWKyfDny+1+zRC/K+yqhX/1GVLHS7qpUBQZv0CTJ4ZBXO1vKncL3fKgfCM0dTeI5MkNqRkrn1QfYx02c1tXqlDHTbv7VAgnFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774854894; c=relaxed/simple;
	bh=57j63p6SH/p04PWAaBqGsKyjRUZbhHBPQXvjmUuRcMk=;
	h=To:Subject:From:Message-Id:Date; b=WXOat3RGjN+GplF0RtF792cuCPOKjah74HJPrS/eW7WlQ1PruO1dDJIVvcUlEBdOWrM0WculEYk7M1ULloWt64P1rZwt49JhyOCWMrbe18JYsqPxuTf671iP9XYNQMhnhIWsEQ7HkUNlYYU67Y28vqqWOuzddZ/kAOTjaS6uRIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKAFuO1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKAFuO1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42C5C19423
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774854893;
	bh=57j63p6SH/p04PWAaBqGsKyjRUZbhHBPQXvjmUuRcMk=;
	h=To:Subject:From:Date:From;
	b=WKAFuO1NgpGMvq6qSfkT91LzaOR53j8Sp6mzakOgDnJqSjDWNUc5EmjaaQSp7D4ov
	 7eFgM3XMBk9Xgbe5ImNtqxD17PktlHJdJNiNHv9hrJYXdIUSw/jfYNEXzy7MMCa4QS
	 cFFDYI42YBXWa8YlEjNXi8VClDi7Yx7BFTsexItu8zxZg1zw1wSQQtMQJlIkuTJO2o
	 LBOJuipwLhhYfp4XoNHoNrtdovRzkNK5+ScMywMnir9qXe/KBZ/52ABXQn9UFDVSlo
	 kXRs+oDjwMiE4A6C1kBKLNQrUUTFcNtNYwYfOToukBcSkydwroo3x/gg1KemhAFnXo
	 MmlRhoKk6Hmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9322BFF494B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485489359.30820.9331746849707470331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30b4fe6efb61d6f200c144ec613a599a8c6d9786c43af4df3487e69c996ca42
Date: Mon, 30 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774854893
