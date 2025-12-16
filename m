Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC637330321
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765859575; cv=none; b=Z6DaSd3Dvh8G3sHHsRTKxOaJZJPaNPuTgTSM7OHxYw46AgIM9ywXbuCHe+aceQLyd5pQwtdv3k29GBXh3090yU2avWTerHte2DHrSZiAuNMku+FtpDuKyBETwkpv8CUcXbU9Z++Pw06OCafvxVBkvTdNUyYp8T804UcQHW1V+aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765859575; c=relaxed/simple;
	bh=D4gycoz1XGtTZJGu+yMApBVdbWMQGKbP0Y15VBxpRSQ=;
	h=To:Subject:From:Message-Id:Date; b=ODjUZHcL9rXXgA3jqbi93JxjMCCrGj5fob5TKr7w2FN62yYWXpB/61QGRbjH2so+Wfz3OmbXiEfh9war70lGi8B4uQk1hAJTHlIgzg/ILmJBlvp7ijNX61UIhj0j+JrceyK1GrC7rMBhpn8MxL6Ymzxsb7WtpvtaVo77a6il840=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZwby1Xn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZwby1Xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3ABC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765859573;
	bh=D4gycoz1XGtTZJGu+yMApBVdbWMQGKbP0Y15VBxpRSQ=;
	h=To:Subject:From:Date:From;
	b=PZwby1Xnvx9Pw1PM0Lbjn3/wL62G+vxAgmg+SXpY+SfqP0B/F330ReMb+RZ7ReIc2
	 mVbo81qD4EwMvbkOwagXgVNWLx2+rkUakFi1PkhKbSsV33pxxLoBQ06iRmSD0MpFuK
	 UteNpChhlbgGUR4OE/dD7pKGttNPziA7+0h7FaXYrft9+sLcrHA9WArxMovwSu4lYA
	 p6An8utFRusyhcM/dnNWd/XPvYoHdtp9VlZ6BzOKyXlIKI5aF/dEDunnaudEt/qxW4
	 f+ZVX96aHyYMF6iF6RTAvnAsywqLaA15ZGukKLdoy5Hj23cBPugwyokQ1ob6/3A95e
	 cDoT0haC1oh1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C02D5C0C0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585957359.17602.6109784179803479457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33502c9ff061c45f82496c5d4334d96ba508d07bc3b36973e7fd3c2707fdc98
Date: Tue, 16 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765859573
