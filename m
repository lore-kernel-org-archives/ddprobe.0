Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE181DEFFD
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730132154; cv=none; b=qyXzmqkKPfSK3atfqcfq0Bt1/KUIvqWZonbPCec76bQ5POOu8N2+mCTYulWpR1wI3jkiDm8kqll9OmrOb9XgEgIqfwuySWBDrDgQsdf7J+vTjHD7HpFLZ9ghd3ptZ2Xn8jH+rtdqAYvBMxNsGepljHCOZ8Rb9OmxWe/wc2fePhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730132154; c=relaxed/simple;
	bh=KhR+Gh0ij1EsI2Z64EUYPYGAm8BSq43ziHMjQl758Rg=;
	h=To:Subject:From:Message-Id:Date; b=ZDJOhDHaJyHh3/8P97cpuXAZHAtzSXAGuoZ8TH4MX+R8gXvoOprQPNDnw0m0ipM/GkQYEyZSv8R+tYMgeIUzlTS0s4P8eHzgu6KKlt1AKqr7o9G7+L27JYh+Xl+eqT8V0M97cVd1QLJMMG2tqRnh0FccK9XCn4tkMCIo8cLAM+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr3CTOPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr3CTOPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7612C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730132153;
	bh=KhR+Gh0ij1EsI2Z64EUYPYGAm8BSq43ziHMjQl758Rg=;
	h=To:Subject:From:Date:From;
	b=Zr3CTOPwA8CfPk66Y3TEynROxBP8FiqMoXqaMxneppK4qpLIt9scZX9QCqy8/Akxn
	 FWAZpChttuC4M1SRMUwbanp2u7p/5HZMW74Hsp7vapKj8nvbFLu8QIJAi65NX+O5JY
	 IMASlNglp05UnjzI/862iJ5apFvmFDIaW5mQse8kMlNKcO4M+e3oYfXs5sisU9p4ye
	 noaBBtEmUtM0n8BfffiUNOqJF8xsR5pus1GoAQqdD1Hc8rq35KXgs8W6ysdieXFpfl
	 A8zlhOigX6tGhyIIOrCU9Eh37pIVvH/TkpGVnBvUNpbYBE6MReS1O/sMgyTrAwM+RF
	 gZnP5D6VPBNLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F8D3399B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173013215361.22541.293288751324094533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ebcb8b93bb3e4299b24f815e7cd7838fd977afdda8aff50729e82a7d012a01
Date: Mon, 28 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730132153
