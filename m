Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1694B2CCE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791663034; cv=none; b=N7PV5iW7bQm4vmCViwoeqT6Dwy8yVJinygv1x7aSNYIAHOEI63RvwRh/U+u6Ekts7Xiyt1g+GOL8R0qrm0OsvrcYTGsiNpExIOCz1cp3BeHgXArO289y6o10T4EQwbdLjT/i0UdORqt4MQg79vL3u2ZROgkNVcdDWy1UEfkWpbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791663034; c=relaxed/simple;
	bh=yVnSEFg6ENbA49hEdJg0bqjPFFAjNXm0b6+pjPGGEuw=;
	h=To:Subject:From:Message-Id:Date; b=on79c78t2BM8Au5tNySEm2VzkS4av4jDHqxvjZxtzs5pd5nfD9sGEsN8jTfNHQwf6JyKbNzg7oZl9OOOKvAN8yzI9bmBzyzHGg5OKymtVKMzhmGwr6tM/xbpGezIypYENCTInBEFkzW3dkgI5X8tYly76vmuWkuWIBd+x+5xWdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+1mb9MU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+1mb9MU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BFCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791663033;
	bh=yVnSEFg6ENbA49hEdJg0bqjPFFAjNXm0b6+pjPGGEuw=;
	h=To:Subject:From:Date:From;
	b=e+1mb9MUP8EsZfwfrVR0pQAXjR3yieTyXWKwFfgojWCncoARQpXD1a84L2CEt0G8z
	 GYrsqkdwS10tLH1VgzKWLocEPV5b1myIUe//oCNHVHnQs2s5uPRZPtiZaWEVK+3rBw
	 fxxoERIOsmeTdQOc498TEljXpY6aKPvIXMmoG4X2Syb54wL+MpeX5K/hCWWxZ7OWYF
	 2pQBZxyOqNikzvW2O/Tn0dPWbhsK0285zPRus+Ri76aEV/fGGjFtyr0SaR/yLTAJ4V
	 YzkWN2y9ZUw02h5k7VkmtSJ/05aEmL5pFo4h5o/A2AL4rFi+6bXyFcSapQmCPSvozR
	 u9v357zcmyblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B320DCA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166303369.8568.606901209143560745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e367dcba173b75fbc80aee5430d93e4a901f36f62e846c44e1757fca16966a27
Date: Sat, 10 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791663033
