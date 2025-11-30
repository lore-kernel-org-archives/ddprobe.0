Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317FC7640E
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764534174; cv=none; b=IH7EcbMPZwIvqhrxxq3Te0iB0GTxB04cd9MJbygsCL+yt10jMx0bjEHLcWkt2Wzz7LE4Wzq5gAx2Zm4bmothULj7jSLq1vw/wCOGsNUGXK0iDMVTvEXeVOg7NI0TSoGqOT0vhoGsNakH0AraZQc/XVxIymKNQlYTUGI7y3rSV3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764534174; c=relaxed/simple;
	bh=nnV4C0HXbvb1s2C8xDa+1Dl3FkhOKSdpUFQ/Dvh49Ts=;
	h=To:Subject:From:Message-Id:Date; b=QV+yX353hV7oJwfaJ7qjVYhUFh79+npobCh4v+08s7RBxscB43582ohamq89a1l8l1RJCv3p65p8CxwkwjaGRTkGvlKFQiF6Mic+QScz2WLt98vzYZZrukY8c67YWOpANl+H5DGIBnzcu3hMMduIBJ6/9bXyt0g2WZOMz/aGoBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5MfgbSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5MfgbSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8F5C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764534173;
	bh=nnV4C0HXbvb1s2C8xDa+1Dl3FkhOKSdpUFQ/Dvh49Ts=;
	h=To:Subject:From:Date:From;
	b=G5MfgbSH6FK3HbsDE9Q/hlvwo50jAwHMGBdPf+TDuDlgB5eaLgOQbiMG9jNlagLxz
	 oxUeNz15o7HJR62/A+n0pWvqf7ENpVVGR6gff7kzU+/5QnBrItDNwzI0m9phGood86
	 B3eqH1/AFvzMWd0U4/84UFWkSIIxu0C3NYlHq9vwv3rn53+JVlGEWVQZS3smSZ28rF
	 4nWtQBWlYIfWbknDe24z7sglaBZIFs8raaocVIcP63gSRInTxkR10EAMsA5MvpWCaE
	 kpg3P4SNcIepyBe2x/lDxlDAbquNaxvL+r/IYNZ4DfI8BKRb0p4HI/LEVRF5y81m9h
	 yUXF8EiiD4zfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97861D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453417359.17749.5560752097267520021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba4dcb9b1c93f2419d94ca274bdb03060ef5ee7e131e1c8e32d9be7888ee263
Date: Sun, 30 Nov 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764534173
