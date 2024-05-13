Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C38CA927
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715561543; cv=none; b=F0zt9B//MugNSW22HGHi387t6vQVuWnwrrhdE8I1IDbtoQomMJTInHIxLVZq0eFPmFpaxLHb1SoFV/5AojyWB5oVCk92G4mkFbI7FfLUfKCJJw+DlQoNW5SGkDwDEvFQuM+Y+CU3G+Pl9bSXwQwARbI+fSC27el/4a4nUpk7Yuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715561543; c=relaxed/simple;
	bh=XLY1T+SqPDQGvKrvBn+DU2/8DfQLo8bgnkDZw/T1tf4=;
	h=To:Subject:From:Message-Id:Date; b=LznWcs2uiQ5axYgnYktms3CgY0kuARdKFNqbe3JkAN3NoB05SOCjzSS6v86vR+F9QkASjScsx8weZylA9zmwWzdD4sWMSFnWGEDWIr4Y58zFS+/KHm0D1Ht5xqny4bIVbRNjqzVNxrtd7lqnFQaAE6Pkm3Ps5qEN3PehoSKbZP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ky9wStOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ky9wStOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3258C116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715561542;
	bh=XLY1T+SqPDQGvKrvBn+DU2/8DfQLo8bgnkDZw/T1tf4=;
	h=To:Subject:From:Date:From;
	b=Ky9wStOyEXWRxPZP9Jb0lu75p4KzJ5T8/BniNgtTQ/HOqaRPezHDmT/xWYbyrPsja
	 el2syQB9Q05P5r1lVWnEsfKJ0Swl7M0Ajvgtm2Kv+ZN0uNuniP5m/ORpgDOn+DACbj
	 E/CN7mcnYajmNFM7VFpL1QiBneS5/fFEQA5iqyRmBkZzM1MrMtjH1gB//SHPb7r7En
	 w2fcpsiisrAKAQbu5p03kPebN17Da0R6Xs0oojf+DHnILjC/sPDea5Y8PadsBpG7GU
	 AKqTEJielLZod0maza5ki3Zc3HhkaY4mw8d8hL+zfIVI/YVxwzBBARjcYY2ZiHcxe8
	 rSUujX3jvcEhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3516C25B4F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171556154276.12442.12065203483966528614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60f6a15c4b772ba46b65c7d42bf484e7c2c5cc4e4250d2bbe9335251987d289
Date: Mon, 13 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715561542
