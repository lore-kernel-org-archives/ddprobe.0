Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5B528643D
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757759394; cv=none; b=H6avD71YKggmpD/P+UZvAxuYT8FnUKMCOTjU+M2y0fpr04pFPgq4YDvA0IHI7fdqap4eMNJ0LQuALfffEByoKdaXNbrgn1ftLGg3Yiaac748Mpeot47bpE3ImOhv/ILE33aYybCiBk/7y3jtL+6F9PDLmAKo+2OoNCoCsO4lKZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757759394; c=relaxed/simple;
	bh=xsJ4MmQGvw/96XDAYbfRjU3NFz9nkhGiKojhHPLZKkY=;
	h=To:Subject:From:Message-Id:Date; b=ljM2+ZhSCvqrvL1EyIQlYGTyhIwrBMl0G6ljTIGvjPe/tuXg9gOcEvcE9WroqtKoI/kzsTPxmvp7iM7AhWyFcvb1OZwhXeZvvYZlD3qCs01+v22yY2t6gJxU5MeRZGBKohsbFBcCmlMWJvlIG3E84Q+ZfeP8Ref3F1RbivQeLPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NghSDXuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NghSDXuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23CFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757759393;
	bh=xsJ4MmQGvw/96XDAYbfRjU3NFz9nkhGiKojhHPLZKkY=;
	h=To:Subject:From:Date:From;
	b=NghSDXuGVSSmhy544TzyeIrmP8qIE15P0ESMg36UvlYdy+R99AZQzmeppl673mVbn
	 vb/nQDciflEeXNtQaPDQRmWAxKF3jWWLCaVHXghP455ptRV3d289DZu5EPe2pIVsZP
	 eWRAh4xI5YTONuU3wqOIurlvR29OS2toh9+pWRtiyyoJ+kDKKanol+d4uDFY8lIYpT
	 gQ9lxuFtUP39HYGgP0y9AUcjG0+cmJMXWHqcemAlShHSO39EPTXJaaz/yT9biNnRkW
	 +vu1rVWtr5tYk5dYVkE+Hh8BtF5dPsR2go6tCgapXUrpWUENk75ONGvlRtYmIjiRim
	 fccVjC2bbmJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F949CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775939358.10649.17981641485919505436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411860d8e73befdb99da3861d815ad0cfd4df69b2951c5172fc23b3ad406bacf
Date: Sat, 13 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757759393
