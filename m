Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506AA40DB4E
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787671234; cv=none; b=T7vT9BiMtc1avvyC2NOyJrdCkNaG88da2rdxXL1IN4Ki26srIF2wsSkqFaaONfR2z93G2hX+qa9SAzuaaOTqgSVmxbsr94cADuMaalNi5NKXHwxoyiUkeNz8dIDsUCrLIBfKAkcpgwjIJWsPYCj3144JVKPizfK/wEERbnQ459s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787671234; c=relaxed/simple;
	bh=01A0+7NGOC/61+QJOpHehwjPUKOEl7QZvEZFJmv37q8=;
	h=To:Subject:From:Message-Id:Date; b=ClCP6N2/S8KxtKPV2IR7ifQkfu4QRAKhNKUsHaR8UAoey4F+QqW2Um4SYzitkGHLT8xyMU33d+HYOc1MW0JjeVxRIKbfhhDc5rWbMA9nlymn+F4s95FYnr2vHHyQu3wL3vg1DlYemHzolVY83R1QfjY0KRele8NoS2QP0v2flNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daLHKc95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daLHKc95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D468CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787671233;
	bh=01A0+7NGOC/61+QJOpHehwjPUKOEl7QZvEZFJmv37q8=;
	h=To:Subject:From:Date:From;
	b=daLHKc95pOeeSN2urQ+l/rBPQRNQe83pUM2sDq6Ykkxhkja3oCnAoWqZts4vTQtmV
	 +r0gxqLJ6d88MZUCCXp2yMIttZGJ/C8Vffpl3xW+ve3tABms082ZKyS+HB/YSxbocu
	 ahN/MYqNxCaac8PMoLfv36R8nqmINxQhBhDjYflMPw9M0mtW0mk6Mg9nSan0czdFw/
	 ZWdUmQKFcsXYkkfETNF9iw2HO4JL8YrWjHuidY+bL9JFGe9iJx8iT/5oD5SXQFuVGk
	 YTGOJSYrHX1wAtGmfgSFKF//V3XrT7Ua6tgtWoZQYHR7WS2XKB15a79Cdcu+NoOjLI
	 PYvL6ch8QuNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD74BC61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767123368.12353.6294612346257170840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ea43d54c81098f52d1cefb376df8a5e32503451556b942be9bcd26f3e5f820
Date: Tue, 25 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787671233
