Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6932DA76A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762826394; cv=none; b=jE0VCTSad2b/E5Upms0PmBhOXVPjpjoJpJqH3Mib7QxNVvQcIsihJn0AxSckQx8O3Nxm/WX2Iow8jAA9j2ij4AofVpKpdwKfGyd/qWjSaC1mQjjlCrAuzgtStckRfPCPEPxA3nCRZSVmVeIbaOfq7IxiTzB/DtmSmBEKDwo1o5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762826394; c=relaxed/simple;
	bh=ATUD69CGa2VGeA4uXOyZVstv/tZaBCwfq3785PiOKbs=;
	h=To:Subject:From:Message-Id:Date; b=Niw8yqhrbgIJDotPrto2ELYU7bVvYZj42K6ePEQO5/7XBj5VaEzF2iyWgU5PkK4zu/quJ8oFBzteKnyYml3f5XAloL9g0aZgU4Ls0GgnoFfDVTyzUW/48lDTAnut5aHWaRgATy6PyxeI9KzcxHE4ai3SZygPuqqwrdsnoj6Wr0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B91f+LxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B91f+LxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28FCC116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762826393;
	bh=ATUD69CGa2VGeA4uXOyZVstv/tZaBCwfq3785PiOKbs=;
	h=To:Subject:From:Date:From;
	b=B91f+LxJ9cMVj7XoFRQ9h9t3tJuxP7PJ0/xKQL2qPRinotODyHRQQBbgfrFMjmQ4V
	 Yt3mHiyYFIhdI2HvharMaQFBTDdiCByej1bWfnzMYB8yqZSaXiEl1jPLkvQvnyrMGN
	 3gJ9dKwBFS+33kGYUt3lUn83LcM/ZFgX1yfFBhICtwzLp2JnNKYJhzVN0NwqBNayXa
	 EC+sYA6QyoYIE9CbWyyA5odM16v39NiOxKuJVfbD56dYXSWIW+RzbLcL1Sr3r+f4VE
	 GtGiv5ogYmsFmJew3mtu6iWgsoCWvYef8hVIbB/rmhVJtVcoW9cFGKlE7ejYy07IRO
	 DMVJkSz6CM5Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A81CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282639358.29195.13567346746570514878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9248f5ddd55376ea768eef02838529a51475dc087b4a3170b971e0dc441952
Date: Tue, 11 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762826393
