Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F350F32C84
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710227297; cv=none; b=Zpb4KRkBpRdQ2DlFK8rzlBp1PguA0m3nZTEmP33yIODTL1ZVf+mSYypQJTf/8fkuMjE4guU6Oh1rCnWJYSSqkT697LUW6yDxlx3uItfCPUzT6R7nkBT/WYDVdfFTM+4rYUUviCQxRgHk00thonmIFXXB7+eiodk9UAE4JuhutxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710227297; c=relaxed/simple;
	bh=8qJQFlhJhi78miMMSCRmTiTd8H5Psv4rQuHBZ3kQEuM=;
	h=To:Subject:From:Message-Id:Date; b=SrJCT0MOAZ33YYcQmqBpQF0cE4y19iCnfS+//7NRj/29N3D3y/Ku3lwlyEAhtjWgrY7VlH34Y5YuySopHdB+mN5ciQb31354SYyomxbFf67GI9TOdkeJIrJiaAQlSI48tbrVXG4TM06DtYJCeRO893KArsVTjvBsq4q6nBN8l0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbt+VuF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbt+VuF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0F6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710227296;
	bh=8qJQFlhJhi78miMMSCRmTiTd8H5Psv4rQuHBZ3kQEuM=;
	h=To:Subject:From:Date:From;
	b=qbt+VuF0WWbZihdlc28Kng6qIk48OXqkEJoV577DGrghinRzOrE4eki2TpPHaQ4Df
	 UTIRlTm1tKZ4wtKy6eWuoBlL3RRyp0rjcYCNsaQPEco0lKNbC+x5423isfKQhxyfYz
	 DzX7aII1kOn2pNduX23+WJ01qr7c9CRRS35msumRJs28f2gQCJHFnvE/76y6ZoFww6
	 KvMcg8KteMdFndlV+lTWL/OEFSayYgzkVFBLoFEkSR5T2Pwv82IElwICAvTjUePpq2
	 TicZsT1HeGa7sIKQ6sPluwNWGQutl70QXaocKXmlmMQ3g/WR5VLNY7Z9A/mjGhirza
	 6IhNSVe/WOf5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E70C54E66
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171022729639.14609.4018897720618443090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7059de4e86f316530e31342855d4c17a360cdfe7de4422482e2b83105a4f85
Date: Tue, 12 Mar 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710227296
