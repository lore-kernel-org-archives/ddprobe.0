Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC8133987F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784949635; cv=none; b=Wq8OsB8zn/kgxYVBLTQwS9cXZeUwoVA2mVTyy5FQFnmTBJEmoFpiFkqpyLxaYqhAbbYVhFQmOrC9Prs0S9aeymwE+eZlb3+mkDjLcy+CxfmIOk7KS78nBd7xVa5/aSY6WiRMfF70MVBXGQOy6qkAwnPuwLqnLeRwPkOyo/8tLR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784949635; c=relaxed/simple;
	bh=wI/g9ALAHyVS8EFp8YU3AydHcEzc0sPJ+g+Q3+v+JeM=;
	h=To:Subject:From:Message-Id:Date; b=AuNWzBecURlsmfN5KNQTPMBEY3Qx3lxXnsTL+ABR9BRLDWlND1R8a9OxaQGQgG8iK/aAP3JUigywMeW/CIp+tGDFidU1CLUHVUDzbt/fI5Kk8Ll8HK0UrImS+2cd47V9hXSFKaouBPSGZmlP+eOue5QjrqAhn83oTLYoq3Ab16k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdzR4Q0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdzR4Q0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA73C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784949633;
	bh=wI/g9ALAHyVS8EFp8YU3AydHcEzc0sPJ+g+Q3+v+JeM=;
	h=To:Subject:From:Date:From;
	b=KdzR4Q0QX+4PPCf8tuB/Y9BTAiw7T5qesTlJ6Q1K6dOuFJ8L376LYq7f2bP70vuNz
	 cmSak6P+OTZl942PwcRZBSoBrxlCuWW74nwPqegxE2SeMWvyrNVgb8JJ3AYWIcSYXz
	 uEFi3Al7PLeNNPhO5LhDyBpgbENFFWHlvp3rbca+Y+wptnC5CSRXRpL6qoZBiorHdl
	 xt3S15tWTHbhJWNbXjP9DC73y/acvm9gC5Y85dRKYxRf3vC+2C31EWKsp1963LzQci
	 3W7uAaQ+fIGh0h5/D+i1XjgtO0XU/cgCYyM7AWx53Pu9KMAw5SYMa+RkugFrP6gFEl
	 IV0Z2o1OMnCNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC03EC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494963369.3539.16601652551466102793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa568fb6ea1e553410864b30a258dec1b058c4e6b8255ef4f5f9efd5b8e9962f
Date: Sat, 25 Jul 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784949633
