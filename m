Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3182222155D
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744739994; cv=none; b=kkSpt/5SNvYa6LPuVQ8Pui/Dcl4jWoB6VNYXWhMx6inkTd5xIQH3ea4jYuaGBMDNVEfRLpiOQiNRweogAelsSbdSUjtPF1M7NawpObntr65ZB7tlxImVo8Gmtj99xhsiApbqsAPpOKM7XuMTI9wq6aCoUgnJJELYy25/n2WPbBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744739994; c=relaxed/simple;
	bh=9bOnBMk8P+w6gNT8fZ23oT2VC5/yfMPY/7dsqtLCOes=;
	h=To:Subject:From:Message-Id:Date; b=WdGIjXfPxeBzgjSa0q9GNXG34t5f8HJau+Xn3kVVaB1wrvKZZCvHObUAjs6KJ7FHmUMM9/Rh9XSPuaGwaZkbEpikiXXr5SuCw2iWPkvhS6ppExt+gZsGStmPdufAxYvLF28U+f2qAAsJQvFlTWSQlw5zV3GTYM7tW51i1t15mWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc+3Ergk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc+3Ergk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B642EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744739993;
	bh=9bOnBMk8P+w6gNT8fZ23oT2VC5/yfMPY/7dsqtLCOes=;
	h=To:Subject:From:Date:From;
	b=bc+3Ergk9pcAFKSQULkxBmQiz182xIJPlZziQoZU71QUqrBtUwNhykSrBSrk3OljZ
	 4Qp9jj7I5Zug1bvNNl00WdW2hFfDBGNnRn8LE6HRtRyOjILC5yTPQp3Y77SrUGj43z
	 nu954sO/4NXWxKMy/g00b8VzdukdzEHrKn5sVbdOwH30aeKPju4tHJfQzqUc2TKXiF
	 mh7AnIWylX1ihLUJ9qBkPdYNfcy1/+tbjMhnpc+GOi7guyNJntF2qEVHcsATlLMsZ2
	 pEPX3mzYzsOVa3N9rgDm4T4rvliKoeNhDVvtb0/F9hMPSzhKMZFvvlex8bXkzOAqy7
	 2JnN71CVCY3GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A439AC369BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473999366.7219.2635812123874721627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80648604b3c90d342702d26a141ca2c6bf4f631d5eb9557db2675f883d354349
Date: Tue, 15 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744739993
