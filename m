Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CFE763FD
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718792963; cv=none; b=fQ0IuUuIHdm8zo7YZ58ebfgTVo4BzcWCS4is7rD5enMQnBJ9o9zYc1Ue5mKqFSQU1LgANfge0om1SbyuZGuu/yEQbuuaNUErCCqvyOxicD3JhW+q+3TmtimOXS6MESe4IHk9x2bwMXeZ+MJfUGVX8LfsDGojeuIcNDcu7BWVKCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718792963; c=relaxed/simple;
	bh=hW4WQNHmnWJOeyHnDalax/XWmMTA5gAaj1x1bD7KQ1A=;
	h=To:Subject:From:Message-Id:Date; b=s2PX89rdzhpxUtStIrZGQAO/SSgdrqM2q71P3cYlaUXmvOQPC5k+VU6aLbft/TAIZsFG1JHfeS73jOuOlrXgBpYWgImZBdaAwF86MJmDmM/P9pzTy0d3FggN1E/x5vL9SzDSMotT+6kabAsenqTQke/1CVc73Yo2hcmqtPrJC+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWOkTm5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWOkTm5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6349C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718792962;
	bh=hW4WQNHmnWJOeyHnDalax/XWmMTA5gAaj1x1bD7KQ1A=;
	h=To:Subject:From:Date:From;
	b=FWOkTm5gAq5k1sNU8y4a2RXcaWpV4mQtZmS88woOeK05QQyijXSoz38a1HPL+Yo1A
	 KgEz/yS5gWWRPraaf/1P8PaDiFEZeEgiOWxQiOc2CIpB+SIZukCwprfA+z48G4t8Xf
	 5gW3S33tieu5+/cOPhlKexpq12tbYhXXg4SgZRuCf0qeQclcxSviZwcNddcWxpmWlY
	 LXa3jpWJcCdb5Y5KFRjj+PszshVqZYSKomj2e7L1zel536S8jyOXmRNUhudGwukMW1
	 W3Dyq5h3avnUKxyE7Fq3u8U1UCDlihYvVSvVxMvCZKKI47KODzBuI9snHZApOhgS+2
	 FBkXZU0nAKgTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA07C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879296277.14841.17244830026059203321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6ffc4d465365ae26c1914772c456284ce07f31bde7818f6829c43c5f302189
Date: Wed, 19 Jun 2024 10:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718792962
