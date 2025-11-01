Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D1A2F29
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762033794; cv=none; b=g1p6dFwEU8oWH3yZMApGK+xzC5MJO6SGXKcGRBHSp8exH8PY1P2QebPJ4pFBgoYxRzeFienC+UXeh+55SD9rFSRfrEqPO1O2CNv/w34bMVJx5LCnODjAqrxp8OHkIGafISPKwz8TtX+jboBlUBQ0NsqofCW0BIz1gdRuFJUHCUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762033794; c=relaxed/simple;
	bh=3aDPZmGTt2TysPHzXHus5LRGzL9/BPCcuR20OZ9qvY0=;
	h=To:Subject:From:Message-Id:Date; b=FMpbhIZw5qZVug4TCK4QL9j7ebnDZgdENsV+tzJzEA34aCHvwnXI/8c/qgg5AC75/VKlqa5X0772CKTPQnUOEH7Pi2fo9a1cP0U0edjxr8Ojpp09+EpQxSRQzJMgEQpnOS8EoBGoDH4AxH+KP62IfDWI3CoBm08ckkpkQRWHPdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zt8a1Czo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zt8a1Czo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9598C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762033793;
	bh=3aDPZmGTt2TysPHzXHus5LRGzL9/BPCcuR20OZ9qvY0=;
	h=To:Subject:From:Date:From;
	b=Zt8a1CzoeZnxhwUuSJwFfhZQmjZYVxoM8WojDS9o5d1BzuJDogLQkIu7ZJhqIBCxs
	 F5uMIYTXw8SmcmqUfEnWJo1mrKoh3m3btni4sS+5WCW8370l898oUjGHsdGjgv+MdG
	 LVOtNwpkWsPlaHSYUnYmNLrHTvmK1ShCkXQ8ht2OzSfpzZoHBu4mWs2rF/MLlPe/0m
	 HTgbodvO8HHcQuphHtnDZdfNDkEVy3SxVI5vjWIfjDvM4UaKyh8c0sZGSUV1YXS4Uw
	 WOaVtf3lbwCOJH4WBMCHg3dtOmwqlwDqkINPONVPioBRHLe1TV27tvce7xuDM1JeMR
	 7CWnYs69sGclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B7BCCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203379358.22612.10660486757958782929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd913ed2ffa8478ce7378b045c94305bf46ff08a7d610c5d7305586f4998dc30
Date: Sat, 01 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762033793
