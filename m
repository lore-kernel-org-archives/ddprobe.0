Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCACE79DD
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711946296; cv=none; b=cU4iX5ylUnqWhj7Hgh7pQ8KHSAyY/Ube/ufJFM8JIhhBDJZ7ocGhyJspFNVhnBE04gmW/ASq2UVUWy8e+OLkf1Fq5B52I+90FYl0T0g68wg0i6RQK/3ydKApHDV1frfKTqkU9m+DogTwr6BBpIDnziXhGQCUGF+QyJmMc1BICRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711946296; c=relaxed/simple;
	bh=sTyhIUNnaDIqfv/97eqyRX4PexppsLVHrzwiF8RjU0I=;
	h=To:Subject:From:Message-Id:Date; b=Uzna464Q2WzWvMF6W6MGnYRFJ4uVbfIsGnIFGys83qFLz9DkNPdWoIpNRO3oIDiX1XOmD8nduh9RzaU/+PiIJUp9k6qd8ptGFRmqqwVpUI3WhFPTvTZX60iqauKEmi88CtEdtDe7LQq+y2evt01DbucP16f13Y9vQWUiYdkxVOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aobGLa/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aobGLa/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5A4C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711946296;
	bh=sTyhIUNnaDIqfv/97eqyRX4PexppsLVHrzwiF8RjU0I=;
	h=To:Subject:From:Date:From;
	b=aobGLa/rTIONaqeCL5ZZHp7WBj/e7dGHY1XG2CSo7GxprfUQLf2ti7W4jeSLj0I9n
	 Js67Ef/yjiIiItImyh5wVW6sgefV1p7t9b37EZxs5Tr8tltFIlTNMyWDKf1a9lDdrx
	 Lx2Y6TwXKCrjMZDZls/3yPJgs4B3Ef1Yb5IOte1AAuEXhuRZYDR3LtlWylINjlbzbg
	 UeN9HgvgvN+CTQkH3usDNnHwmnURx9xgnr1twxm1k0Ja218thiyxudIa6kkplZkLF+
	 7ivBLmsi/wW5F25PsZUg27wwFEfoPcXhUfb33Ko+fLmZZfUf19+7crRGYHn2VsppHi
	 Fb1DxRUZ2MYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C12FCD1283
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171194629637.16541.8753192091730159627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55d997d182011c0fda18d97e186d967bf4f5227efb72195b5373a8539b912db
Date: Mon, 01 Apr 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711946296
