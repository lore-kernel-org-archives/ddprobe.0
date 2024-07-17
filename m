Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63652183081
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721252123; cv=none; b=SZBwCBuvzZ+filbpZoHVoFvZjxyeRg4/WFCgtPPQREhewqqVV83qUGvbV/xF3Q7dwrWV6oP/WuzryU8CJFWiJ5v6FzU5e54p1zmV2T1TE+Avd8wk4ju7ykaujfdGTZGzYZ1893G44WlXeWkTS0uIMSGp2+fgKSpJmPEk1Dj6IF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721252123; c=relaxed/simple;
	bh=9YOhoA53GLXCXMmuVdkS+4JKhpNoM57bQGOOOfxRhbs=;
	h=To:Subject:From:Message-Id:Date; b=qV3L17QlRVGcBIkT3/DlQWxsqU5914gHkAnfs/zV8fdmkXA8jDt5RF8kaWkbu4dqH/YiKBi5vTN5Yy2YCsmRmFOO8j2Gs6Bs15q7ps8LxcM6Lf/rPbrQfj345qfgnHWWIvNARjS7O1QmDqRMrhqVnA8oSG/GZdnrYeGeIzBfTxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCxJi29R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCxJi29R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34AAC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721252122;
	bh=9YOhoA53GLXCXMmuVdkS+4JKhpNoM57bQGOOOfxRhbs=;
	h=To:Subject:From:Date:From;
	b=cCxJi29RvbxIig32uGnaqvr8T6tPT+Kph80X4GH4tvxkETCECEfDT/3VdBgNuFAoi
	 KoaaTasu9x70rWhK+cy+AzMeAR4yfEE7J+przhBKpDDNyrivePLNI53dBj7WyTHho/
	 TEmgWmTQi/XTD7X9no6ptY2dCp92MMjzCrM7QybuZBDQ3nbM7YdW/w79v0VNQSujd4
	 z/g/Logr80bSi276kAAm0DzoUVjQp/NDbtPq0+dfQm22Fw8buDmvgqtQ/mtTR28Jzg
	 NKksLMr11ljxfKMj1EbKT1eeZpEJDoC/pPE2Wbv90DzbQHtn3CaytXCpzz5byKyn9o
	 cOsIUNS9w/VjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C48C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172125212278.23037.5340304650671078748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d734c71f800356980926e78406d8fbb8b960916c296295d6894bb2a2601c830b
Date: Wed, 17 Jul 2024 21:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721252122
