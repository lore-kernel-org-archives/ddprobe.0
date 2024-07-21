Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415203FE4
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721561754; cv=none; b=loiuFly5IM06iH8X/gIkaqeYwnk6d2384DAAVsuJJOEMe/EOByd79k6Jl3OskugUkAF1m7lgGrJDVMakzEhwIkCQTJNglOLcl8gK0RRS+SNo2SCtG8RjuL+HSfP6YKyGxWAPqeAI5eJDTDBNFV4RElP3stXgUys76TNaUWti0O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721561754; c=relaxed/simple;
	bh=eQGFPltv9mWU4dnzM2/0Xe+ZWja+q3wbG3JysD/CjA4=;
	h=To:Subject:From:Message-Id:Date; b=blX4rLvy/vqKmbgwsyO7217LggJfK625Xdb0HTCdTHhE2TPL6BYi/uk+oOuZpulFWlUJWEbZRxrET27H/eEMejKNhhHqWlzGBxRT+teYwZFfVAcnw0efINgy/uQhHJw1lms/nAbV19rm8F6sNxlHYF3nCaD9HrylT3Rrlq97teU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ted4IyJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ted4IyJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E18C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721561753;
	bh=eQGFPltv9mWU4dnzM2/0Xe+ZWja+q3wbG3JysD/CjA4=;
	h=To:Subject:From:Date:From;
	b=ted4IyJYkfJMyknj63uUuLuN6iYMD3WuWL3qPkLjhH/KxWFdm0Dg/nfehIhXxEc7A
	 9PkGIqoSEnA18XCK++nOfjOZpsOcw4QXiU5prCP61uIY0juAPb6ARdEucu9KnKfxh+
	 a/fJwaEXUocsBJuehIro4sYb20GC8F/vw/PVD7By6DzWFqEa0kCilT4RvoO4azKtJA
	 tI/X6PsDLNjktMeicUGGqIvR/NVf1zrBH81Zcyy6zgMS1QnnWyPd5TKI2bdk/qWJ+9
	 G43/TA6mTcdeaHng9L1II97rPGnqmwK3rPERSDVXWi/ugjgyJ8vflkahVug8Sr/dnP
	 y6/4XvTWN9y8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92448C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156175359.18923.52192224704443205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e1915800fc07fd6b8645b9299605be1e3ccac9bffcfd736138b0fb1be1ae9c
Date: Sun, 21 Jul 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721561753
