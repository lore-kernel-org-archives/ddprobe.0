Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B29131D756
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760525994; cv=none; b=P2Dhv5jhHqeM7Q3ikQoopbp1ne5c3YZh+W0ijFW2ciR4UHykXBanFAHJOya1Keg4fZt+rRxglyc1NeWsbjeyN/Df/J9dFlbAewSV3I/XAPWcFzAC/+1wRPYIgM05zkKmhfffq4h/QWeqt614venlhj8g6UBvq95fIzc9QGBg4xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760525994; c=relaxed/simple;
	bh=tqbv7rvj73IDH3zNfLLD/pxjIKC36KbSS+tZF/velMk=;
	h=To:Subject:From:Message-Id:Date; b=C3/RVaiUqcyGbwV5kbmETe8jzXCath54kFkWP9B011FA46GGrdzZPtRBH3FTkduCrcbILLG5hvHy2QNRjmXO11dUA8aVy+aYx+ME9tk9RNR/W9MEwOV4VdPZbz45Xk/r/0nEn//H2LAV2RhP6mAgDUqfOLUYW/7wT9OR6kOG/20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sv0wXY2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv0wXY2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A057CC4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760525993;
	bh=tqbv7rvj73IDH3zNfLLD/pxjIKC36KbSS+tZF/velMk=;
	h=To:Subject:From:Date:From;
	b=sv0wXY2n641SN4ZfQG0lfhzbPdzAZYZHRdBtlU8DUjQRp7sGsP8m/Vdb6OAJGMcUR
	 45GnwJItVY2U8sgmCIAoaUHlrUcvb2pgKR+QRZKW03HQ500hTogYjKDfEA8qjPbZMn
	 QijUpvjxXEEIhhHmy/nIRUJB50iZgOkxg7bji4JY7nqpq4Ftj/+0zRsqlVTh1qdLGQ
	 oVXMj0UnRCMi6MQqHDzq+draf6O0CDIW0zlyJFK2eKILTnypRvet83PuyRguyI4wtY
	 Amnhk66cgu9OD3IkX30cr1swmQb28crf0tcGrBkwwzR+rRRMk+S5WK4oNgf2ZqFiBi
	 /myTOoWlr3q/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F71CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052599358.10675.10001436321738765084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bea9a63a401ff198e4af53ebf539de2e1290297fa8854b3ddef48428e39e12c
Date: Wed, 15 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760525993
