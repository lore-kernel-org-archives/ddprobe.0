Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327F02FD7A4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756133994; cv=none; b=O8kEAQS2C7yElnqF78s+Omdme+//c4DWx7m1iEMYHEQ/LnUs7LrsSviWWRKHRGM+M/DdaAPv9HZ+Mjt71CGIoAWolB0Rs6FiYq/gnXFbLQDC0/OCv9N30uv1+KNVofWpzbv0gPz9/TyHpiamHK7cmgX7uZ+8CHHOMSLUZwhJtmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756133994; c=relaxed/simple;
	bh=KtUFkNfC67o+oSA+4i8uOThNtDa/cZIy8W8CdsxMXEc=;
	h=To:Subject:From:Message-Id:Date; b=oT1WKAFLHY3T0E6J2vTmsPHFFB6aYo/KioEUDsCr6sQwACNmexaFTdhKpQ/biikl2jT76fv7HC9dnK7NhuEFQNdJrE2JC0RjVkOqdauIJDtWjg6l8mqFlX6R3U8A2U0Ggnmtg3tW3cCmrzaWJDaqv9YvhDWyHbY5Y0HoFLGv8EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFnIim8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFnIim8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3772C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756133993;
	bh=KtUFkNfC67o+oSA+4i8uOThNtDa/cZIy8W8CdsxMXEc=;
	h=To:Subject:From:Date:From;
	b=CFnIim8U2wW4em4WUDmgQH6T/6ZuIG9q5GFWrXkBcQflEs6wvm+/VUZLDAw3Bo2v4
	 /qcaezMlgz1TlDZ8u6T7h7M6i48WwUBhJ7KAaB8zw2ErC+FKl1BGZdAfMMJtLvgdcV
	 iZNewDXnTrrTHTgBu8ODMEbO5wqcQ+KD0jO42C1ctpH5y6NHSih4O0xNqN8x/da2Pj
	 /z+0OfewnlMQxnt9dM3wxpVykTrIi0twaEMZHZL+b6puT77uibJb1EltOpKR8hVCOh
	 G9Mpee+Ngsq++dHPq46PAo3dVCKjZYz8V3o2i5WCNRfGFOZyVSp7b4vcXdAA7uyEhm
	 DAkSKbDg5tFEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DFCCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613399358.526.11061562107117171761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a20ebf3ac1d6597d47a134d9f2e52c0187db1f459a630197f67f519609b63b
Date: Mon, 25 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756133993
