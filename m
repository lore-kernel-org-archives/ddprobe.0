Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7912D1859
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717304123; cv=none; b=uNYxAvXu06tYKOLaOmfQc4uDbDtsX5F6YaVqFo0Top8oQaMSRe31IAWRUIxw9Qs6+hm/pAwdc3DVjON1Vwxi30Pqgx6V45Taybly6dxKtPoPFFPgu+9DbA6fB5ZgNtqrYJAOTm8f6U+e6OC8fDbCfvnZ8YS9zQ9gFWz6u8i2nF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717304123; c=relaxed/simple;
	bh=zXsXA5ostBWBuZ/HC86TNzd6xgCSzl9yQe3auNLJoQQ=;
	h=To:Subject:From:Message-Id:Date; b=W+nNgt+pX65PvOtQY2OvaPv9WHSTAX1ccGGZWe+A2P62xVNpExRuqb02SxNTmScaWW6zeFMWbksRqpjw+1uFmjVJOvl/E9jDW+ra8m06xiKMvt4eI8b2VIq5lDSjjjmQq1/3nPKjIDlwilQ5L3JfGq/QUIkA8f0Ly/28j2n2cSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBqSh7j2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBqSh7j2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA49C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717304122;
	bh=zXsXA5ostBWBuZ/HC86TNzd6xgCSzl9yQe3auNLJoQQ=;
	h=To:Subject:From:Date:From;
	b=NBqSh7j2BxFZ2Vh/K7GJAHlVczjwUEHJoCw8TFx1K+vIVsl40yXi3AV6hZ5YbXLVV
	 z2LSnEZVswUB3eX76o1rWlspg9Fh4VmI8Q4kCZn5aFUOhGIlHuOrTYi4QsBAPihjTa
	 FF5aD53+f3H8+tuj10ri0MjC0t7RyyKB/SoxZfeVVLhRJO7NCWftMLNr2c3QlGCARA
	 CimLDHHzZEcqqmIuUtQ8DNzLiElJ6PiQQhiSapvs0gyJ6NsUHbbEWBlkrhfnr3Q0yz
	 0s8uSrJdBm/B3of9/+GbSIEVQGicWaTno+iS1bPcYoIrVNTD9a0O/XmKRGkZsTWTBT
	 Rm37yf7fxYciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A38C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730412278.2865.16696227148148187663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4666893c132fc44c89257a5c78c098b1abd40fa0b6555be35c8fe403da25de
Date: Sun, 02 Jun 2024 04:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717304122
