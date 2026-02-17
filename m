Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1162D8382
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771318494; cv=none; b=fzVr4lCTXJkciK0LV1RS4lkDHbXQc+E8Q9B+ZG5o8Xo06+3ZbiLwowoHCX3pgyHkFNmjbkQDS7sZqVTNUh0fyG7RllsJvCBsLUfVT/g87jB5aEmihL1uA+HZEeNykymLhzZzIxdPG3luqfgfppWY9GISe78zdkA30W8iX6CexWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771318494; c=relaxed/simple;
	bh=4WX6D0+YEAIyLe/KCeg8FALP97DvAckf9VMYbsqphQU=;
	h=To:Subject:From:Message-Id:Date; b=Xp85Bz7+Pl+MMpejfTe6VgyDidd/XFZ8CD+Qr87OHWDYrBuJr7CmucAFac5GHhIMuDgni6ed1ZEM3IVMpA4DiqkIldbKl80Ck0T0nytSc+ok2yhmV5r+hXM0YbAteGHlfZA5SLB89MTej3fazAI3CWBAjER8/+LwA9h71qajviY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTzv1h0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTzv1h0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A8FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771318493;
	bh=4WX6D0+YEAIyLe/KCeg8FALP97DvAckf9VMYbsqphQU=;
	h=To:Subject:From:Date:From;
	b=GTzv1h0g2Q730rkrmlQEJQTO04+MPpBdF7qeFiK3l3EUNwz5/FjibRNq1ECcoJCKJ
	 a93Azl3/3GNUqQkxlOY7DHyvb9AU9Je7Lt4YmrnQays5OEgIWTtC3ODoiuXKsOitpV
	 5Ssalksn+oqboXD7n1W3yYUoRGqcbSNYjuA2cJzGfsqiZC+E3wwlB3JURkOCqYx6HR
	 G/v4TV529YTta48GxUlct5ak76fWP+0KZxZCDm8r0ggGxjjnNO8jmNXJlTUERLBv6t
	 V6IJtcD1+ktazC/dtdOU+eim8Odr9SBGYY4LCIg2xngz1tk/VXQuXwppKUkpLU/Pyu
	 cRPqduTwB0qTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F78E68149
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131849359.25099.18009358282808928604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad3b6b8cb72bf81bf9069491d982488aa7b2b0a578b3a3004ff8dfc8a1ecef2
Date: Tue, 17 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771318493
