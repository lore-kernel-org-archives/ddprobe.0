Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF8A19D8A7
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751603394; cv=none; b=CkgsNtZtQtFemcUyqnn6RwlgO38csTjWNZZV3brimkmdUv/DJSSRCgIlocGOsCvc2w/gG+ATBNSSD9Rx54MF+paVAdph/omarwZTV71um5spHb+Z3w2OFq8AgpB5JjvZRHeGg5IHHAfKFA2IjvFHrZki07EdLvvnsnAR3FKNFvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751603394; c=relaxed/simple;
	bh=p/oSZcoN3bDRqQK4Ps52Q6xeCOcQeZFYYqJ6O8O87Pg=;
	h=To:Subject:From:Message-Id:Date; b=MiAnxdB6SXnHwe2AQAQNw7fkf71ADP2MZ4MzHOa1+xcazaiVPul93xliqsuZuKJIOIgsqNEQpAWCJIjSnrThdtJbsAbcSqdtFD1WWBi8yo5/nkISsQVJ+etEuD9zL0exQfAWXVQuzYGo5lhe7EiHeK55SHytMkKNn+hHddUaoPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2mILU/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2mILU/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EC5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751603393;
	bh=p/oSZcoN3bDRqQK4Ps52Q6xeCOcQeZFYYqJ6O8O87Pg=;
	h=To:Subject:From:Date:From;
	b=r2mILU/ivdy9fNg8rUpBkFRzSJVjYIZogPxCxBUlvAftXCaLb1WZCXDeW+upJJaM+
	 B6xOsPsB6yPHLip31SO5okfA5ryMkyz6937/8SnTAypi5U+OTrM3CwLBQiGCff0gLD
	 8L9mHMtAisUZWQuK3UjOCVWOm6UhlhzIjR1b6odUGmoZ8f7aWu3A3TtimHR4TgmJR1
	 v1G/6MBQQXjpLszt2P9F1e/yo07rh7dnvswEOnsaLChbUMvdACY+Lb+Yv9N8VcMpVF
	 wzgAMafs4G9eC72ZMsPUCNRvvTsqDomTNcytfx0tzi/9PYvFOEqSM8fWjusCaoJ4BE
	 YuEStu4JpgZIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E967C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160339357.13993.4768843205496006157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd040e6988453d208f73940b8cfe71339404b759563a44f86d787f00b1d68e3
Date: Fri, 04 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751603393
