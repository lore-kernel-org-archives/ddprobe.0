Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565A618EA8
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713912023; cv=none; b=TVjz+HalZx+XTkS1R5bN8P2ZQDyGzRdSkABPNnzIdaPSL8ZqLiGWTH9ucjgM51qsufM11CJrccRXtpeynkruWr4XCtuVKzlIutv9WUIXISGps1BoGxcafhtokeuXf+KRlXvM98mkUJPzPy6jwSTN8RjxW2ngkhNUvpnYor5p6dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713912023; c=relaxed/simple;
	bh=1pPdIb5KjiFducnSA0+IdVRq4JrD3FpyopYSYCLIxoY=;
	h=To:Subject:From:Message-Id:Date; b=d/WXXXJUTGwlJIVuj+KnCVipbwIGI7JYa0zMpFXR8LZQWj7wS+GSKUd3+1WpX6Lsc3M5eBBoX8HtrsTHvPrm6uTdNuK37cupGBkC7AmQXOCceO3kwR+qP/DvAGHTUJhTV62eVVyDstJMnDQmn5XzjkNj/CmMilJ/wXqK0aSNXhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7bH+utb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7bH+utb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46DBC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713912022;
	bh=1pPdIb5KjiFducnSA0+IdVRq4JrD3FpyopYSYCLIxoY=;
	h=To:Subject:From:Date:From;
	b=s7bH+utb7N0rkSAz0d/ZVY6JCGjHHkVEl49Qjegv1XPQnhbqx65LzWm1oTasQeGOp
	 QXKd31b7H9rlGMhZTLYCCAvBl8YFFBK9a9I1PTI7BVQCm3lfdjyZRGx6ICyQPg3pdz
	 v2RLeBmwptFnrG5xKQJ9XMoLlWVHgIVZmKwQpdLnRcgZc4aSc4dyg2EdN5cwwr3sOS
	 3Bxu71yZvIBc5MOHnAJ3yuvpnTPGxNRedrrobhMZDoZRGG/KvvFTvFiKBaTKTUBvH8
	 lGAvuAL9AwLNUUKU+MllTA0KwcmQN92uYOiqkIiCfxRpxwWsuXeTO5Rh2eZLytxFI5
	 kBrdBjo6a75hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE66C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391202282.28013.9734174976872097437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0ac2635dd741d03a688906328f100193b9645e01c414edcc2d4c352992a757
Date: Tue, 23 Apr 2024 22:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713912022
