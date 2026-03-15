Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E805374E6D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773614094; cv=none; b=dc1cVAlvCW97tmTRuUCeYkzZfgY6tG8yXDT2WHS6QH4BtIbOsNj7BqT/yNt4PUPaWb6iT5PgHXzdSJpIGQqFza8XcmWYSPsw1J4uZumGevjeiMZUITMrQec2RWZIhpcUJBtW465Hw2eBPXxml9y0uySbsoLFW3Xbs6xKyDwnX54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773614094; c=relaxed/simple;
	bh=FAlmW1Ob53Ixe8qYPTuqzkFvc1bt7IxUBbxTUjVOGS4=;
	h=To:Subject:From:Message-Id:Date; b=TdYFjwpWFYVmuTmBZgMv480+k4OhpISwlheDLCU1OyATL7QL4nM0oz8zK3SH/MhZ5r48aBLaNBYgO9NLOfImFpP2MvxRKcCK3i7y0NmC5UpvmLtTxXmAtei3AjvME5K0mzp9plu7mbdcOKlaB4uZB5C3RhoiKdqYKF8iECIBQsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdzuwAb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdzuwAb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773614093;
	bh=FAlmW1Ob53Ixe8qYPTuqzkFvc1bt7IxUBbxTUjVOGS4=;
	h=To:Subject:From:Date:From;
	b=IdzuwAb7oly5aXAba7IQdquPVQ/37pBo2AHf+zPtz7zLblDI+KQZLBBZP+fE9EBON
	 ZpjEc4DfY18qYC2fxytnH1WhhItCVMymo7fbr4anI7kNVVU98joP0C6iKjHTOfIE/P
	 PsPd1GFlxY4JQmj9TwX0TzIGjY3t+14PvjI5USY8fp7Mg4KlVXHvX/Lu3Nq861IM3q
	 QqyzK+8uhVpqPEzgzkf6u2LzmaLvIXppkadxsap1nSHLCu7FqHJqiVkMd5TAQDLBqZ
	 j8kGAd6n05wrNfqWNLUEmBjNAwQaoQVj7I4bO8/eMSF3RpC6WqRs9CB8zFldke144f
	 /gdOhyCx5FWtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD95F30283
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361409358.17511.8762235080017044522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20cb6e4de0539775e57df64ebd5b3b44ffa6e4055355686a5ffe2e3c19d60c8
Date: Sun, 15 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773614093
