Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0DB2AF07
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736449554; cv=none; b=CXTAFfBNim8FwdWp/Six0TTcXGmeOv/Oe/avmEU0VTZ4X/xIT9ZKHIRkH+6QgF983YzxtynbU/HiHwz6Ay/tvbC7bbsNaLE0Xu6W5QNrzBPDSiwHzXba3Gmod78omf+QuJudXbB6MV7c0VkIkrg0MmNv7Hs3sLS0dHYoYQ6qNFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736449554; c=relaxed/simple;
	bh=CPcxz9HOGA263+FurzjjA1oseSDbDDF4EiJgjxIwGJA=;
	h=To:Subject:From:Message-Id:Date; b=ONSKMj9KtB3aqEhuPMV4vQ7AXC9FEAwalX7nVG28SZ7Y8LIaa5NodFUhpnY0Wia1SOECw00oUckyiSyd8nlmI7vHCHy222kHs5Hi3Ia24u6PqbLlWHX09KGsp1hB5G+Y/yLCbMy5EdC1nLVRvC+V75g47CxmgsFCOSQgJijvNus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1bLcNkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1bLcNkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1614C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736449553;
	bh=CPcxz9HOGA263+FurzjjA1oseSDbDDF4EiJgjxIwGJA=;
	h=To:Subject:From:Date:From;
	b=c1bLcNkI1G5lWWsu519YD4XBAOwDqrltxf4uvk1t4ikrg30ConL/n9zLiPWVdqq/J
	 2jhx9/mZk2gq1dA1WRZYJyxLaVoZw9/sHJQNcI34h6PpiMKMMXCMvzAcqch+04gMyi
	 zDMB8dvSBHyS+8VhkwVV9eDVIU6rWBEerX4y32Q1NyZqzx2+LqbeiwBOfwpVof4D1P
	 Ds96jIhIP2cNiuB1dzaA/i1Tk2O4Buvso+UfJy+2bhgI0jO5dgoHJ0o0OxLTwRz6EW
	 DCdScbV4cfIRb12lXUOTotDVCrpE6bI7zSBAdEm+DVDGEir/bnp57CG6kOPZW8+ZVW
	 tIjnYahFR5jaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9971AE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644955361.19674.11931555268881962975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40da3b317dbf031c7f3cd26bc0baede51f901ad1d77e9810803db7bb6ffd8a35
Date: Thu, 09 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736449553
