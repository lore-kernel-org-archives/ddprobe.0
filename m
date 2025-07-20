Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203B1199385
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753002594; cv=none; b=sHB21Z/Ru5dNRg5uEWxV8dQb7d2nSJnRSiDFKgN96fmItWQUN2vlAa/u6iw0OTpv+tpGTkUutq1wskteOMwXlKVRfeJwYgMceIt1VUlRCNvIawWkH85+FNPd1kZQbKL2KOj23zv0/Xd1jbQhYqHXZPJ4RfuWQ8I/c0kusaRqZ2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753002594; c=relaxed/simple;
	bh=LWFcmKxp6+7vh4fW+tL4UtjgVQevgiNQkO/s7/RF2OE=;
	h=To:Subject:From:Message-Id:Date; b=o6wQT1yollgf/xD3Oix3mJwuD5DvM/hq3+YoFa74l7uP6MH2GR68G72KKerLhkrvSYgip0L98rVkxMad2ktQi047DiiAN5Ng4vB/zo0wfscUE6MuejAL7MV90m0qscmPC7FgwrE7FvcFNoF0Lu7wEF1SIWTkuAU/fJ2iRDRjuB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPCw3j9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPCw3j9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753002593;
	bh=LWFcmKxp6+7vh4fW+tL4UtjgVQevgiNQkO/s7/RF2OE=;
	h=To:Subject:From:Date:From;
	b=FPCw3j9qkcVxnpbXN/bppCoO/+CYePAhjTu/LTX8GZzHlHxl634timnrFti8BuShN
	 6E975ArQrAVmJO9yxfTBqrB5PrQ/kCZtFve8JY+Bfs02+Iukcw7/zvE9i9OsQMy0/Z
	 n+p1/sU5z8LWvNUOkcJsEgkYEySyq7eixpqdEP/8U8fG4dhSf4KwROZygF3ce1GX7c
	 bWRh6T+5zhdkiBQ87PgXUkR/hGp3N7AL/ARiY3x1HcG+f8XlDyuL8iKXSmJ1dS85/y
	 oAJEIcXNNjOHf91lFw9XdlCpiiYPEBxkaYxj1dDVFTcFrMdHPtiLXhC+w/nBXrwX0K
	 DAX5T0hqHBcbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024BC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300259358.17582.1193856587317142344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a1ed36b28caa61e891b96b12baf23b8e27d83212b1a07fe3e0976d1a753b75
Date: Sun, 20 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753002593
