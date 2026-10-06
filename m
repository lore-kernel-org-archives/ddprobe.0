Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670E219D074
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791257434; cv=none; b=CmJiw0a3+7YNUCihCYLPWpOY1+OZvymzignzMnmVmJr0/P3tgMBXbutftLguLnhbTYDxsqSdOcaHBDld5ciDyrzEnakvlEkwrMRhplKsEjMO1azuNj3NhDzEjmCEGlCYX6RxMef0SzXGa2doCCuOmis7h/KxPyhxWxTIwaPxSN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791257434; c=relaxed/simple;
	bh=qwvTxJBFjdcfcvCgAnPqIpHOnqbfOmgHuUoSBNZIJRU=;
	h=To:Subject:From:Message-Id:Date; b=er7pMLFrRcvWJtRArQtmfUGyVGvgd3TrK/TxF75CXTssZ821OD1Mw9TrShpBFaVd/aXbbMSD07Vh+75blDdxSV+KkI3GR4H4cykDtoMbLHtcoLGhrCZkn9qNKxxsvi7nQ1WrOGdqtDalkfA6Ixvo+iYkKV0HXYGwxGcXZ0gmpcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zd7XLug5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zd7XLug5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60F3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791257433;
	bh=qwvTxJBFjdcfcvCgAnPqIpHOnqbfOmgHuUoSBNZIJRU=;
	h=To:Subject:From:Date:From;
	b=Zd7XLug50N3eMQhob38SHAW4t9xx4awy9/ogXjTuVvVvszeT1gUkayzvPdGcc6rGB
	 3t6VJ75SUlyhP4S2TMJBk9Sr6JKaJijdRSO9OxVT9yfZmmXJ5bRsOOid7TckJSrZrS
	 kke1D8XXmDBv7N8rEZbaTMEBk5h5tRT7REfgTFCxxAaytB5ucfyLkUIWirxmH6t/ex
	 YdToIaPXumhyfHVpjz9H/uMH6/Yi+cRirYQ0mjJgp/5ZcJx8cLPZAwg95XJqqIxsSH
	 KQLIVxcGyR9OeiPjCzpW4mcdkQ/QfLc+sT4eOdGQrqj0woqqEQRhDqLzQbIkquG0/K
	 1rPrY3mmY3wYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE1CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125743368.5977.9861510719282423773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efacfa9dafb8965729417ae40510b3acde413036ad812b3537ff4be57e30969
Date: Tue, 06 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791257433
