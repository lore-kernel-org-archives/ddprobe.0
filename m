Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452664052D9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785452434; cv=none; b=oZfbvEjAVNBn/RNxG4AWPS6D9HVTMOPBH9Dgy60QBxMuigktG+GRi+KBpGM3sGVZsFCWWC/FxJpX/V0ouaKG3rSDp7ZMak6Oi4dPnZ9n11boTPwy+p/+mWHNgBjC0nYYOVik+FlHmyVdU1OoazqPszy64BW7EwcYYwybgHsj83E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785452434; c=relaxed/simple;
	bh=Lk5YsxSRlII1pSEFvbcAUtv8xsvuM1zUavcTmpL2/XI=;
	h=To:Subject:From:Message-Id:Date; b=IXlcyleMH3Nntzrdxnna/4pUCeGPTwDisl/FWgun+VMer8BellF0OG42t95jKnQzUV4TNxYThvHD4KCZ6P/Ox/sg1UqrFdLAbYt5HfUSmjf7yCau03hd8WGg6xifgqSv8fXd3wi+/TiUPrwa64aVly1Xw/gaG54VXlk3aK4TIIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/7mGBHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/7mGBHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF170C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785452433;
	bh=Lk5YsxSRlII1pSEFvbcAUtv8xsvuM1zUavcTmpL2/XI=;
	h=To:Subject:From:Date:From;
	b=s/7mGBHuevd3y2Hv4tobhwPeqei/fe69Wsa+42k9N5pMP1YAYOcJICK4trf72bJ9C
	 hN+inZSHa5RLCa5LtE02ger2cWKo9ciqQtCE18j8bCXEblrNvMIiwUlccCRyEA9CCF
	 +DMa1nGtEujvnrzDzXCDH+ib5YNWRISAFyjohjh3uit/4lSAFQSBXKw9marwuturz2
	 UT39pNxf0yDN4+J1B96SOiL7SV0gxv1F+Td+m5K5nLmHURM6/jyj0DEaZqLUqtGqdj
	 0QQQsseFoJIHMSV/9ZRmr8m26oWx/RcjxfqJJfPZ5i4V/Ps0CmvSUig8vODFqaDRJY
	 y2UZ97tYUMguA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96C4C55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545243368.12289.9980304616073639100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccaacc32253fa9049bde25077be16609997aed23a5c475fc1f07e5056ea7194
Date: Thu, 30 Jul 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785452433
