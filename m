Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162F9173
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735517154; cv=none; b=WD21WDJAu/ioMO0qEBLq2gCTeopfKgg0WNemfjBmoekdF6VaWj5d3jGC2fSfIGFrfvFUmcp8ZBQHyUwSsOnYy2pMRu79BzVbcsMK6XkJH2+bASkQnd0Aw7FEXfKPRY2/Q18mcph8pqstuQmkva6kzRmLZT5CNdPpQkvVc+LXx/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735517154; c=relaxed/simple;
	bh=Ks1uIr25IVm0Mkvib+8kSE4RbkpYpvAFc+zbykq9Zfo=;
	h=To:Subject:From:Message-Id:Date; b=TRzoYJedfcHjNfNqh/uY5S+c5/yJy+e4Gwphioj23289rooPGerS2CUZ0sKQ9Sp6Oxi65FDogLPjoz9YFrAZx8vOmjNJiM9H1PoG34fNdMAGAHUJGFtRe2GQKtFbAX+Dj8mGvEAN/FOAYlWCdBdQf+tUZtz6QnNdt83H6ePwR64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVTi0r9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVTi0r9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6240C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735517153;
	bh=Ks1uIr25IVm0Mkvib+8kSE4RbkpYpvAFc+zbykq9Zfo=;
	h=To:Subject:From:Date:From;
	b=XVTi0r9KGUtx0Tm84wtEY4JHg44it7lLxZqJOAdM2JKHaPlszcgY6T3DvqPqZ9KoP
	 tI9b84UlHqlh4Fl2SfRy7DLVJsd1FLZpIxMAov1s9lhEmnT9jBCGCdRY2ymOkcQzMz
	 BlSk1V0gRK9wi9K2wzTnlv/xGhpsieHnNz+C+71LXUSqAh8GUq1m3imm/VwXUAG/qf
	 NzY6IxMgv0u7B1zcWBe5rDXkP0WyCuMVmmFEdqtcndHpEbYYiwObujRH0Ncd5MwEYs
	 pDZI4DXgP0mLWQB2MrQc/Hz2OHMKnmvZrFQHEUXN0yf+SSaXWrkHe5GJMWxizaoE02
	 kQdS0o0UAyuBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1438E7718B
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173551715359.26845.4101492164101616230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8474e2b15b17c694059725fd3f1f0f3afb3d11c59b7038252ca5d6e168c4b7a
Date: Mon, 30 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735517153
