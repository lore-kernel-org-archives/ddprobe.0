Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DE629ACC0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767620034; cv=none; b=SMoKDd9RMA5z1xhZSrTzRJmJ049j1Z8EX9HE4uhnykM3JCoiYjV+IXWIGsxBki9CQh4YfPdMd0ZqMTQ+JGRy1Al9IlLvQ/wGgEdmbVXwx4yp6tfDIAVkKdg5eMddBFmK0Di7izVe6oSqoLBR2YZjPeOgVOkVWAbTy25DIK/55d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767620034; c=relaxed/simple;
	bh=N9EIfm/EAllXsROKr9Pc74GJdp0MbsxC+QjjHqy+Qqg=;
	h=To:Subject:From:Message-Id:Date; b=QmM57rDehuHZ/61jUg1EVE3kb0KuCxnuXS2JXq9uSiu3K9AnUbtCGyDzLHXvGKOfOav7h2sTrViQFPcaSfo5F3nJXDrh9kWZUniBhyY2qrx7GWWYBle67IBGx9dNaA5a4cCsFi7ArwX5H+uyPYPX+BU0Iv/KOCFDVYWgiJdBMKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpVjeBcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpVjeBcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA9C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767620033;
	bh=N9EIfm/EAllXsROKr9Pc74GJdp0MbsxC+QjjHqy+Qqg=;
	h=To:Subject:From:Date:From;
	b=QpVjeBcPhC6Re5yousC6e1QDrLvE7nzXsHgDaQu5peHcV9BN0v7RC+0HxJ3TZd5lu
	 xiG8XLJel45l71VloBIHsCc1sGnWMrXKS6Rgg5XsoQzFtl23R3U7WetXEunlKCDKcQ
	 EV2+ssAozU2nuKt5YLP+n47bLl6wtEeX9TOm7VXpTYlqO2L2JgBxj9yW6HhoAN5Hg/
	 Pn2ypwhLAP8Ud3twezSWglGx8ldMAGE1ovk+fteErNz6ch4a/vT8i5p8rXTaxR1zlV
	 fcAPL0YwyBBb0TQD2U2QSL4ntQqkChKTwT55yphLuDkNEAIm8OSwgxAg1Yuy2TTXag
	 kqu979lAlpSpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2E6C79F8E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762003362.2758.14630312577061093424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daedccb5008935fc9b8fb0975cf7c2199c97f6c1a6dde3f16acb595d9bcf2a94
Date: Mon, 05 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767620033
