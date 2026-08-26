Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EF2260565
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787787034; cv=none; b=s1Id8JF9WsbtMrRl1veDZE+SV6vYkPqf9dAKCxttS5c3i8cO3m1vC/vv2AGRUXmA2Q74xQj1wDlE677kIBI2Ef+9sLSB9cyc4NdysqKM0LU7yF2Pq+i4Ye7PS3S6jrWjpyDgvd02dSj1gtuvqGWp1k7GF+Ohycjh7GHLN0InWwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787787034; c=relaxed/simple;
	bh=c5ZfYrWcNfvf+1n8zqknnF+uaDXrp86ZWRNHo8QSakc=;
	h=To:Subject:From:Message-Id:Date; b=D1EDylwMMY9Rm0YCJFJzgK6vm6UwVqR30SRLzvFfIMVGp0KI4GZsCSgXpEiMfKabGSQuxZvGXr2kW2FXHHyIOj6SPLBrTeTz0TfhR4yzVkO1digDDrWL5jSJm0rY7hWrWyq7wndx6yxuRGz9XFGHr3uWbqbEgC41lTDV1eVL8dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8/eUs/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8/eUs/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFCBC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787787033;
	bh=c5ZfYrWcNfvf+1n8zqknnF+uaDXrp86ZWRNHo8QSakc=;
	h=To:Subject:From:Date:From;
	b=d8/eUs/9dl+A1pU4rMrn63hVt17TLg9eRIZH1S+r90DbdPVUpRR8vtAgSCkbZq3N/
	 3rUct+nKI9UuvQ84mUbIZqL4Dh5515iNdqWiR/+iJ6nEA8AThihh2WiSGeUbeodxrR
	 nwhEI/7bs+n4cJBfrv5SBTyyZQ2/gr5f0JC3y4/vR3X4RIUD1ZprtYISzp5X39zdn9
	 v4Uyt/XSKRd4W8KmRL7M968Uo3ftrxQQOiCL+470z3Muxt5JaJHk/iGXMUOHhAAAHy
	 mgo5QBSfsL43JVZMoBEwKTuYW1MVequPPfoL+Kt4vlieDldv4NEQmAB8klni2a5A8t
	 AfbtiJcBN2LQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9AAC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778703368.757.2820297293063832949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8120afbaace799c700f23473d1fb12267ad3ff6a1c01c9b075cc227ded31687
Date: Wed, 26 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787787033
