Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3C922619
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 15:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729523755; cv=none; b=IG9pFTLebCOaUW1hZkpQaudd4VsPfPr2cZ1J3t560fWk03VekIH4HN9FZSLtDoUkc61I5k9wSyuKjIC3HgMwOQQjnLGrfkQXqeibMdDprK/+nubZp7GqwgskwydSWmLFTGQvuKnNvcBbjRE15Wbx0xyY9sA7Ns0yTxrOQIWk5NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729523755; c=relaxed/simple;
	bh=Nkzqb+z7vFIeMQs0DML3s1omvcj9nvFJUPHWWrYM6js=;
	h=To:Subject:From:Message-Id:Date; b=WxlPHLCYAuI+7zIqqUdoI7IxwP9i5h2Pv95l/ncUIvto3ympT6vhAyBLW5voqsHHbh/UYW82CAyvjrqatJZFoXCyE989agoQmBFI/S3cc4Ab8TV4yGbgruqymnp8z4GM4wUqMeVQ8S8tUkRWWGYYqdFySfD+AUjwroKxsP0U1Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEtyvWPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEtyvWPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E6C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729523754;
	bh=Nkzqb+z7vFIeMQs0DML3s1omvcj9nvFJUPHWWrYM6js=;
	h=To:Subject:From:Date:From;
	b=YEtyvWPTFXSsgyogRHSRPZoCJzdEcAlWB5vO/gdXBa23kEmAaDQsPRs4ZZLjMKOuY
	 eHqqchGoxs8lqmVjRMxNmGcWk8RpYs2xLq2WmjFXxHnr16LGNJY388WihOQW+NydCL
	 nNvGlwxOop0Zg1j+4iZwx5xsk36yfunjwXxngqz9kLVoaVAbcI9hdwiHZGdN8f5Usp
	 bRKF0b4Twsj4RspdN5WS4YrTnRb14xf1oSLXKPaWY2SPaQfmCrk6nzyAiYBapjKa4q
	 ei+d9Wb7mQca6IqouSJKtQAdO7Ty5+2872c33fKVpGgsswlv5ntH3X4lKJNCX1iQnH
	 NvMA3Ui9hIAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F9BD15DA9
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172952375359.24781.10956526750709898254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df634785b31b4d9670ddb8b82b1733af7cf61f6d86e508ead98cf50761f83e2
Date: Mon, 21 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729523753
