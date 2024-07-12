Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF3F2C6B7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720813163; cv=none; b=Xk757fyfbTdovQbTFRRjeppJR60ltC424ALkb56i6e8aONQLFFCCd9c9k6rkgyhGcWKYrPkejxwBys5TPIdmO8BCYAfT62ez7eiBYP4lgM7tBWvjVcn54hb1vNJnlwuD7BTIiOSu/L0eMuY0jI5uIycwx5h9nZge5XOiOUkfiG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720813163; c=relaxed/simple;
	bh=/NghpyGI33ysKzdiuxTvx+q8VGddYtM9APr3r7j8Lb0=;
	h=To:Subject:From:Message-Id:Date; b=jjS4BLvU+rcdH8aBLiy8FLSGllNOC5BXIGbO/5YAp8bfW/f23CaB+JyFmgQpV7byljPcRVEdGuX0wkzzEvyIwkXrEEiekANqcmGRFtV+FR0zt9FjIufzCKVkCRqYhyViUPPQEPzpEhHIBJq0f5hPc8DfhzHXkB5JviJWGOz1QWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wuf41oyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wuf41oyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5EE5C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720813162;
	bh=/NghpyGI33ysKzdiuxTvx+q8VGddYtM9APr3r7j8Lb0=;
	h=To:Subject:From:Date:From;
	b=Wuf41oyZmpzDDbAGwLeockAln8uXFG5X5QCxmB/sd8vR5c7Kv4ETFw/OZNd0QtIsF
	 WailH3Cf0jwqfC1V8XPT/t/6Ck9M6qKE8Gh700eDxWv9dDV2nLXWuNfjRPYXJd0jLx
	 LSGJ4iamkpbsNMs1Dkp46VKbuqfd4nFwnh2ORa8TwzEcDwMGW/5r/B95SHPugI4TDr
	 k0DCEPnRHoOAmYYmT09DWYCw/yCDkJ7oyE9Q6iemkcvxra+lCWI+g7AYgcCuFGdxfX
	 QZ/SnNKJe6sRmtaS+TBNFXlh3QfvbTerIK35S0JemxRHa/3dtThfW+r7aRUH+V39p1
	 daIGr7gt4MXQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA43C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081316282.16797.17274253442715352730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab1e2b4c178a1db56034dbe27de455cbdf992d2f30562d0a697af4384fb9ec3
Date: Fri, 12 Jul 2024 19:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720813162
