Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF4C41E6D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786810234; cv=none; b=BhFVEYZuCeznZ4CP/DfXmX9jDGRpXK+GvIa0qRybrAV3YwZSHy8Tmeh1aEEcJRLPoCVGyjVJWKSJH/2xNQLXKY1Yg5DWdWtjEjWndQ7aoqHVlUluuFixSrBPjtb5Khz0I2qlNkqzcGTbDF7ALNX6CiUgoY3HfozAdKqKYIiLrP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786810234; c=relaxed/simple;
	bh=ydj4GP2/+vMdfGQZpe6HcDqi0LNgmfI/bmDaBh6S11k=;
	h=To:Subject:From:Message-Id:Date; b=FtKTBCuxbuaPxJWakkCH5XVSa92gLQf8DxwPCTpeRnEssKNH8oziyC1NykasvCZkKRBNjsRS4eXRuO0iN7cx8TMcFDtohVU/w6wnvz5rG62B8nxwZX+yIMG0WMWrmzmQxHr5f2HxEbFheuxgZ502m9RPa8KakNzNaeJ7oYzt6YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7bj6M9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7bj6M9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8B5C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786810233;
	bh=ydj4GP2/+vMdfGQZpe6HcDqi0LNgmfI/bmDaBh6S11k=;
	h=To:Subject:From:Date:From;
	b=L7bj6M9rmv6gIQFmP4koFN53SydZ1YNyrcDKEuNuQZARi5lWBADIbX6XS3NsBZnr/
	 t4+4vd6NjODekfFlq/vmsSH3qsTpC2TxsulfKoefdJZQbBPP5HJh16z7YsT14hCdhD
	 l0w4erK7YfnGlmBpgOaY18Ci/noEazlagqjyRwre2wyN1+JbVdU6ArYdeSM0TX6lK5
	 EfptMjDKAOmk2Q6DmD73ArJl07SnManmT7RWliMh1L2uXHLJsDsnvv3r3BaBKMWjLq
	 3+ZDK3rfx1FLWEUEE3/mJalqka4EPUAezHymJqNDmdg8ub2QuL9kXXph5ZCBwsx12s
	 t8hn6esYzRzdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7F3C5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681023369.7988.18236228189889993714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2952122b64d63db5b03bf8c2c481d66b6b2f2b9bb01ea8c0b644564fb8120c
Date: Sat, 15 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786810233
