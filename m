Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570DA2D739C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789224634; cv=none; b=Ht4HX5aON6j83kAUNktzCllqsm/ObWVf0MfkHE00641exFzTm0ITLPMP0TL3PTSTEosQFvk/KDRKL397QobRWhnbw5yuXok/2N2KAnwTu6U7e4gXUMKn2WHQ/yUvb3WWS8D4e9zFP/z2Ihlk3WUS0iKcXYsSX4MoLqgfbYqBJhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789224634; c=relaxed/simple;
	bh=4iWkQbrsalQXLTjLobhdWrWozW9FsaLIbLRcxQEwS50=;
	h=To:Subject:From:Message-Id:Date; b=RuleQdnMrUTEFkSmUP7915ZudQAvEPyjjJj+EpXTB+6Zw+2AdcuYIg/B0QQfMSMkejtgRL1b7y07bK6qiimwOMnQPEadwCh9xxyHrbLs3LJFgZcWNpDP88IKtKKsz170ozZKwGzJk9384h38/jnHRHLbzfR5p16m8adTFVM9m7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF2c1vNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF2c1vNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D376BC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789224633;
	bh=4iWkQbrsalQXLTjLobhdWrWozW9FsaLIbLRcxQEwS50=;
	h=To:Subject:From:Date:From;
	b=vF2c1vNcKesTC/54pPjQYTlkdA8HRMCBRS4mtAooaQ54LcvnhQA/x057FMbS7L5jo
	 UEXUa/mYi0rngC8Tf7OTHZlliUpiVgEmAn+TxL9omWp6cQEATeHbzPeXEfK/EYByoa
	 pl4njSv5FCNW8z0bvJ5fU4V0vdhqcU7wkb7smIrIBXZ1jfTC0P6vXZb6ODhdpy+qkt
	 n5/pMIPmLzSEAIoIjm4S8un83saYngV4omvIV0qdpl2T2IhHdnssKdnDx6o14LfJZ4
	 sdZ0j8rVPPHHqiSf4bJO7uLhD1Yv1QX9gL3X1rg5xdysJ2p0lqufLKxCmgNB99vPjV
	 duHlYK+nL3OeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF853C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922463368.31679.10584996777408317982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb9f58846db8fd19e4aaeb99c82a44588ff1c55ff22a315cfeec66d78ba015b
Date: Sat, 12 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789224633
