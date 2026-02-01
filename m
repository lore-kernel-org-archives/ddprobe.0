Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421A51ACED5
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769959434; cv=none; b=KMEAcgrW4lRSsDpvXljNcX9xu97zNp+mYVQzrAT3baDn/H+psD00PaHojAkTu2LT1fvQEM8bVD1mEqP7b96RIiaD3dESqRaKhoLTOJi0v7/fg/xpGKtb5MD90BgA6xFdsD4ZpS8mGduyqyWi+B+ZC/iEb4aRbcC5xz9Ntk+ApnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769959434; c=relaxed/simple;
	bh=o5TVAOGfZZu17NADaxNCuFtC0EywU4bXQ75Hqppj3mc=;
	h=To:Subject:From:Message-Id:Date; b=SeelbIWxWFDnrsedOFSwaT4nG18WBmUKwys3dvUd0Caxo588lDueKUB4N25vP4xhCMcPUTjLkPVNakyTitJJ7DgXPEmi52p10pbq6vzEDlAGjEyH4W2rY9h5qP0KLPUbrapnKEFqXfS4/m2vQeZho0v9OUKM7DwgoD7xlIDftO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNwBxP/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNwBxP/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2968C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769959433;
	bh=o5TVAOGfZZu17NADaxNCuFtC0EywU4bXQ75Hqppj3mc=;
	h=To:Subject:From:Date:From;
	b=nNwBxP/Cyx7BIuAl6bU0JSppYfu4PZ9UkSJV3Atv44h0ev+7PcRS+jIzeiY3m5q5W
	 BfoVHj1jAbBNeAEVg+qTHeie0ZnOd0yZVovJiCqjBLJp1WIEubuM+eXqnggbjZHyJ4
	 40OqF8UuY/kPVt56Fci3rcepoPY6T0k6m55ECu59Yhjk0UQM/glLkVX+aTw4PYw3PO
	 b3D/HYmQfQiT+53bbzgtqP8kemqnCOeNCU4haEVJ36CwkHBlrF79mXFW5cK+cG9Mb8
	 e9aEtYPUwMZmeoHfOhrW9BA3ZP2xI6Y2xYvL0Jn5xVLzILnjLoxoyjy3gepjj/pFJn
	 X4RC2BIQyIocA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE03E65293
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995943360.8490.17518730218077344536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c160ecd0aaebf3cef9f5d8d63f52fffbaaefbefb955028bd7ef6ecc08a448e6
Date: Sun, 01 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769959433
