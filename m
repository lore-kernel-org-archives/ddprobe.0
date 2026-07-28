Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4789F1FC8
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785202234; cv=none; b=OVoSsYFQ20QWwPrfvkGKnif3LWt8rY4VQpR5Lxa2XIcMkPwOBgIOUV4kjvXyxWSsd93rO1Zbuk5R7f5PH/MIVERXFEqX/ofFCAM9wJLURzjWQtQqMDI9aMK0RQRCQh3dZHdi17I9Yz/hXfS4SqH8IJdIYiwUFmrRzjarDJrryFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785202234; c=relaxed/simple;
	bh=rz4vZ+LJF13DtTZqQPLY8kukpZ+uhVovO85EQdIe/u8=;
	h=To:Subject:From:Message-Id:Date; b=m6jCSOfIOIh2kJioeW2drG9Na+GfSFmdBnUCQRgFqhXpcb9U2GOGjxXSm3VkEJ7RYTfVxt4XakIQzO0ZIJEdzYip7Q9HxUYG0VeQpVGb+WHqMJrR03euD4Uwlkd5uqswCu3f0qpW8QVYEg+7gBbgb7TbqYCd2Dh/Sqh3dT9fPc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4Ie61Hm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4Ie61Hm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D2CC19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785202233;
	bh=rz4vZ+LJF13DtTZqQPLY8kukpZ+uhVovO85EQdIe/u8=;
	h=To:Subject:From:Date:From;
	b=U4Ie61HmifybRpXsJu7igfOBkl3dfXr7iKCVPtKsk3mnuwP0BomKxm6gpTlLRcOmj
	 Y36rcyS7o6LQx25RCGewx/zazq0kDf146MH9HGf3uFdJqlYrRW3a9gg4WqYakCv196
	 TnKULXOKo7mwqx+AFyTo1BOvMgwtfpSFG21YT8csNQVD8366X2YfTtfiIw9Jn9Mn0d
	 661MtawfM2wUIZ/sqDqXnoS709CWaScQz7rJ5nQJ7MMzN+8A9BqROa618HYXscGs4v
	 u29QW0rOBPr1kKytnk2pTTd0+39oqJdWFcx3nIU4N5X2TLk8gAxa8qexm27dumyRa2
	 TocNKNv4g4OsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9A1C53209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520223368.4087.16141447655614707754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a36f5502fd2697036370c27ac6cea69ae5e91ebd0b77967dec48d6502ee3c3b
Date: Tue, 28 Jul 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785202233
