Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BC7175A99
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774000493; cv=none; b=bk48AOM/zphe5GeCzdP6DVvy/+ykMCOjUvHtkwli4KzTB+x3tWildWYyJ+ZKpO9zlpz2iPPLJJ1+8qVsNMQfXRlZEw/95chtv166losa+dywZKeixAB87sapyS6lgsVo2WkgcYyv37ZZVVOzhalPtCUlaG2V3PnJs/fZnlYARHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774000493; c=relaxed/simple;
	bh=klO2exagorO0yS+mpPiQuYxg/8gtl6LbH0nMnHIZ/Sw=;
	h=To:Subject:From:Message-Id:Date; b=cmBbpS0yaPNz+94aEB1nxG/xGA+ghG13GoVzds1F+IDti0x4XoH5aB391zuqIAEMK8G3NzWNS2GZ/INMfH1moL9So+pVb+glkiChGWhbtbIX/NuXQh3SxFdxKb3ukBtEIe7NCkqpZZDmeu/2xXFl3MmmWJrkcXSC5qRj8V1OdG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LI3U9F2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LI3U9F2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C896C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774000493;
	bh=klO2exagorO0yS+mpPiQuYxg/8gtl6LbH0nMnHIZ/Sw=;
	h=To:Subject:From:Date:From;
	b=LI3U9F2EM6SsNBltjPYX9waOv/ikIDxYjA19vg/mEU/P5i9aAExexdarWky9J8vpL
	 jgLcntlWcaiUseSvSiU1tqggDpa2RQijbrXVtFZtTBvMib09K5bFqnRgh9Wa77l1rs
	 m58EhZfSs8PfI98kqmvzZ4dFCiulBcv62mxLE7Bx+uns2/6FIWL2fbPm2Ti743Qwtd
	 FnKffdCFCjSeGSC30DmlJns3vVH8tIatjgl0LOL/xy5MI+AgXxrVZYe1uGXoGB5rSH
	 KvzOOGIOIX1UIL+RBs4TE0zPMnkPhiB4qlh4XHdS/RU4KXulQKTZ7NTAlXYx5JiXBw
	 BckCbyXSXMVww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC7108B8E3
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400049357.31902.17114311071068257694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8d189535c5e2d96d753239088ba289d0b5cae523c729178b6e9855b0a43d92
Date: Fri, 20 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774000493
