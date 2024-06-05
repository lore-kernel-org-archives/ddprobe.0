Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6298C10A1F
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717611443; cv=none; b=ZZGmafyADXBGDiKr1A3nKb26ZsOD1IDZpmsRTzb6P7U6xE5XHkNyw1cSK5PXENB9Pz6ppE0VbkP4D2fTL8aasuuQA8FwXgP3olat+IvDmmdt015ra3UCU88lSbO3nda9pUdgWswMKZ/E3XfzlHNl6XIe2DG5u10WbElUcAc7p44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717611443; c=relaxed/simple;
	bh=Ci9MYjy698j4aTZdDmrZe6SV898Bqxy3sUKwC9dCSE8=;
	h=To:Subject:From:Message-Id:Date; b=cKy4sVSC3ADE6lvLRTdbENyzVlfIm+APV60psHr2OMrP+6Hz4VcahZ7SNz4eOMMsLCFSTqwjc+4uUi6sj6xWmHrK4LRhpVGc5d3dOyiBlhqj2TFwCO7RqHiBGfRBnxTDDA4XPHg16LGlb1hwDfHC+LZpPvSka+3XhxJoQFOo2Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGOb28GS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGOb28GS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B76C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717611442;
	bh=Ci9MYjy698j4aTZdDmrZe6SV898Bqxy3sUKwC9dCSE8=;
	h=To:Subject:From:Date:From;
	b=DGOb28GSu16mAZCPcDHjv8IncWmhuyZgF9xP70NmYbcBbo1u5BvM1Hrbqy9Q8okXG
	 RlDJgcNsA61g0WA9sg5PP+YSZni1G9ZcNXt9fZK8QxJFHJRnJUjpYTosWGy0ws2ukc
	 O9r1clOZ7i5QagMYPB4eEvD4uxtpHSaqNYCu6/IbH1Nkibv85oQmrGrikL0xvhzywZ
	 1FwI7e3O7fkk3EAxedSlZ7o5ToGwUzkHQxOcEy/bA+VL95XpBhhD8kYOemz45YWMau
	 eZn3iC7JVCZT7ZlU/6T9+WyE4nXJ3sHYookv6a+n5w4Xklh3CTussroXQm5bE4TqFG
	 ErkIZt9oP4eKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC93C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761144280.26642.13582334900041693262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3940228d9836fd81c7b146907abf03ffa875a16b5ef5a6171a39c6c8c99f0f
Date: Wed, 05 Jun 2024 18:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717611442
