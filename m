Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6172E16729A
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716825263; cv=none; b=b+6EhpwPwsFF/LAcoBmhCbzvOtHPJYRRK5zhWZbOn+vsEWpQGcIvV8Xuy7cpwG7RxOE756eIYMSAm1t7fR/korYxRRirvmSKP2z94MbPnvvOevW8GZOy6ObT4jDv3G68GrY0YSwrwJ5npVIZQt40irjrGS0rKALo9PjUiyIqW5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716825263; c=relaxed/simple;
	bh=E7MCg9y2a2VAc4mIUYAZjheDBkHvVg1UZUN8ZD8xTU4=;
	h=To:Subject:From:Message-Id:Date; b=D9LT+QJOOn4jUw9PSj1Ye8W46+aqdbXuM6dp7LhILcoUDM6JdlBnWOaLUqt4KWrU+cGWOpPmkL4TAC9ZZ/xJpQCDlqQ6sF3X/XYOtXyv/peXBAHm33nNg2ToaV0QUxpNsp3vy7tZn828OWoB7EWfDf1jfq0L9LZZ4eigUngfMmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEI1WuSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEI1WuSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B0FC4AF07
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716825262;
	bh=E7MCg9y2a2VAc4mIUYAZjheDBkHvVg1UZUN8ZD8xTU4=;
	h=To:Subject:From:Date:From;
	b=WEI1WuSlJ6ujoq8LAHL/bJVL/6QgRC8i4/MHuywPtaBEDhnvZVs+IBZLU0JjLh2Ly
	 XrD53z1RiRfMHcqzCF0ZJxb0wXzVPPhEDaQ+6Ld7iRaTbBk8uFUuhI54sS4ypaucwF
	 fc4BHczp+ifwPhhXuvkRNtoos4gMrxfaCyO/usFATEo/j84mPNRGPDyBiUhvHBn+Ec
	 glmquWZKzz8hBCP1P8aek0PkduK7JigCc4MckCIWpA765bKtwAA7ZoCMRnzKcEozOF
	 MDQlnSoy/Hsn5edM7ckQIHXfqZBV3tygmC72dZMeZnu4O8cT9Y1eX11ZQeA+UP0tAs
	 m7wrXZisRT0dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5BD1C25B7E
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682526286.28268.11770643822456532262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216f1b57a0489b81cd8a4302bc06c33bd3ec44893eb8b70684abdfa11f3c6967
Date: Mon, 27 May 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716825262
