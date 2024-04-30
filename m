Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E8A7711D
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714491143; cv=none; b=mNqkH7cvUhNEWxBt1s2Uc3yFE27V2u9oG402ILGpxjYcqw5b0SAQcI1fHqEnW9MFBcZp9LCzm/FGUctde4YeWtLdd4867n1Q+KvdZYCjpSsD78rXN+AWNO/HmLFx8Zslw0cJVm/nFDba75UzlTHp6hNl3ZBzvRVnClhH/nykkaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714491143; c=relaxed/simple;
	bh=PO7549GRP0itDqwx9w1C+LOmv6lknjoHDwFwUT0MLfo=;
	h=To:Subject:From:Message-Id:Date; b=e4SZkb/aJ3yf5lr50MoX7bHEigIjxj0nZ/mKywq16UGu/NWPaExgYrpDXvoEsM6wW+bH+z96diyEZNAjduuRHBuMJaAUaAL071yVEbxh/0T6iSi9NgP2Kd6IcH44q4XD2O1Uu+rIGZksPkvmy/MaMzZO1FOvhH4EXAJ1WeSICAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOR0aGki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOR0aGki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF239C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714491142;
	bh=PO7549GRP0itDqwx9w1C+LOmv6lknjoHDwFwUT0MLfo=;
	h=To:Subject:From:Date:From;
	b=oOR0aGkibv6EnRY3fI4x5v0EhF9vorqZwMzreFPuOEuWpsnuat0/AP8X1ickUm6d2
	 UdxBSuwYCwVZxl3NgeNP4ppRnoFrNWevldu3mUrMzZZlsYDfXFANRCn9KTEIIcClgH
	 R9L1nNjKt3LqARnlwblm9esxaSOi0W/wgEeDqVcO2aubBmJrBVctqcQxIjh7F3zWyr
	 Iwv/o9sPgYqRRsylPk8tzMywJ5U+4E3NPMuVEvUJ7udAnVcaUZr57aCfSnopVywJrX
	 +lJXxEMndakFhuOi+ysy0TLtalJw5NZsNirZaGToF5oULi+rEeGP72qLG1l+I0UTQI
	 qbAmdQi+e3xww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD7BC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449114275.30104.2596543417990669760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05881898b18716e8f5d6ea2bcb04392048d8cb17809687343d460f90c307b44d
Date: Tue, 30 Apr 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714491142
