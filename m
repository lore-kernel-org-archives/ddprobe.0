Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340C33D62
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724602554; cv=none; b=QVk+fBDESIP1qq5XO9fWuwaBIYGfqDqsk0RAtgFPApjIvS1dZRMFMBi3lWM1UZB60jgYyg5E3ZVPo8a1M5CIAai4uUIlf8GsCP2X/0PQtnsQadOHa4fR3MRtT3C1XK3KKGDsZqVgceZJP7+L3Pbxbt13KGKoh8WapOSN53wD9M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724602554; c=relaxed/simple;
	bh=/jVeG7yAvDkDAOWgdzy0MnJfSsV5C4A+66oSOIvj/2Y=;
	h=To:Subject:From:Message-Id:Date; b=WiOmdg0SagnHcZDet/ClLKW4R0nH4ZQXE+izUJpdBCIfumhL7QQ8EOtABoyXFTXLP3VK4SD+xSsRQa8YfBKQ/GHFcO8jk3bJFYXec2kOysjSJhIFJBP3D/V8dfpQEDBYladrBIIRv64l+otGWpODr4WH7feIuvnqqeDmruhGjes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiK1mMRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiK1mMRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16FDC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724602553;
	bh=/jVeG7yAvDkDAOWgdzy0MnJfSsV5C4A+66oSOIvj/2Y=;
	h=To:Subject:From:Date:From;
	b=jiK1mMRkPr5VqCnLHzg7v8i6XjGDqYQEvLTL/iO6z1hdH+TGpD0vFbXGVr5rlty3w
	 HQfxPpUkXrQ+HDpTADtmgd0LESX/1xulFGghj0WRi0cLyd9tU0DFBeQeZQXlFalK3A
	 UOOVbriDgp+Hit6Di0QU0pJUV/bu70IRYMI32Vjc8lik/DoFcB+ie2QHar+zVaZWU4
	 4d32GXx2D3TqYtoex7HaUSbRFVTYAzQvRUqOg8zNPfaanXbfvGfiOQekTZj1ag0ZLf
	 0JADqND4lIYLVlPVNuLwFAJjSGRQSD5dYTMjZUAcU2xwWOn/aixauiLdWtNnB+8zUQ
	 7e7j5JfQMBUfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFB2C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460255359.27814.1331403980322814752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9dbda0a637f70c670968bf2bf4524465506cc1cc44d2d3ba76fc6af8a8d8be
Date: Sun, 25 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724602553
