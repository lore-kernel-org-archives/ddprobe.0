Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AD630E84D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750453193; cv=none; b=KtmELfJ7tNZqkpHgbl2NyEN6J9itwXnRv40wMR0TvKDCPON/JBxlFcn6Vw2MuZLMNyYxFEiRa1a3vBQw3j7wy6oX3vEbEQyWLEUuhxH+61jM9Lcf6ZPy8qvOHb7sRkWICT/xgFsHRAVFqqtNtQ5sVoNbrd76DvGAxLIdQFs5k3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750453193; c=relaxed/simple;
	bh=zPg/ut6s5oC9XJ2GSsYA4e8Majtc95A+RUBUa29Tmcg=;
	h=To:Subject:From:Message-Id:Date; b=HnduxK2uLPx3TF7b+5BCGeZzLNdonNNNzSZE4pcVLfbKLSG9rYwDXTCDbXM4+tOUM3KvYqKCHQrMvrZ9cfFlbQTVS+Xtqs/sJLXd1IaHjaoC3m6+mZ9O+NZEdkJgHZnULDS1VXc0Xqz7PEHF1sgYSu9ytxcRNEgdH8Vr/iIcXyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBD4U1sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBD4U1sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5CCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750453193;
	bh=zPg/ut6s5oC9XJ2GSsYA4e8Majtc95A+RUBUa29Tmcg=;
	h=To:Subject:From:Date:From;
	b=nBD4U1sgcj/Ku1LMtcTKM3z+uQnearW/AdDLY+cpUlbp8vPsaNBlu2mX5upwyzR/h
	 7B0i53sBKxbYj/7P9ZaFTC/ne0MHCSOJB88sno96YCgSPTYhqjXcVf4CbxCyeZbAEJ
	 grQ7hAqHD5bVcye5PferxznTSa+J8/c+00IDWCGg0MCDHes+Bu9iusQvzqUE2OV3Yo
	 Le7dALsPv2yDYbhXfVOEcKimEkZC7ZOyJ5VPBFZetzSl1WzGqZk8p/XbjShjJ+UhL3
	 UtY3y2dZOvUsuxz6ADLcNGWqcVMX41uOgenTy0BwyBsW6gyPTAZeFVTylqLF8mTUiS
	 q4m5OZVtDKz4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5BAC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045319357.29138.14545159948293123888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795cb460e5d337d4a983bf1c1e45fa36d304bb4041acdb355fbd9fc2f3333541
Date: Fri, 20 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750453193
