Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1169A26CE11
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757476795; cv=none; b=E3Zs6EYLi6Hn/A/XomiQbL7TcJZIeJiv4FsYY++EwSrTJeTneYQi8PNCvF6Krk9Uk4iFBBrHe9SNYZCXWJC9Kr4aqKM2RwlqFM3SQbrvtucIEqJwLbNLrvGV1yy0sHXMmM4kiqFSemcLjV/XLdf4sskHOeDh+CCi5eP5mvgGTMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757476795; c=relaxed/simple;
	bh=3gMcgSQOeDHU3YR6tWaHzyBwv332tp/73tV5+WawZgY=;
	h=To:Subject:From:Message-Id:Date; b=hjmO09Swbic+qgY0PenJGbcM9aBwU/LozvDMu+Y2HVUz2Q85M8G1xJzdXFx3eRGGlWxntWUs2y6vYV42wS53fUnlfxT4rJcwOd9TGdqou0Z/XtqUC//dlR4+QPFUDIAmuPBXfZnT7Zmfp676EAdNyG72Er5QMucZHDoN+BOHEw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHyWoVcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHyWoVcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08DBC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757476793;
	bh=3gMcgSQOeDHU3YR6tWaHzyBwv332tp/73tV5+WawZgY=;
	h=To:Subject:From:Date:From;
	b=WHyWoVcNB5WL66RPpu/pmEfncHAJe2I9s+BCHl8u0nInJOxlT/2Cl1yeS7l8IjTuj
	 J2bPyKBtCn05FRndQkUAyqov9jKXQyufjz211vFp8puJGsS7F+u/9kBImObnSpyW+t
	 bxuEOi6uuyyzJN2nM394wkeLTzJ6HEE7G6etxrFccqcO7TbI5FIt6wLz0LMfJfhGZ0
	 ODzFlM4vrdLcqIrBFVuuw7QwQtry0MrYdQ7RsgbiLtrnNH/hmnG6OrZr6gXTpomEb6
	 RA/SWyiqwIidWqtqil0C/tP7amgW9XK8ociGSmQADlkrwcJy8SezHK3pN8YR1I9mwH
	 vpEkmqJZimn8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E891CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747679357.3880.70446155441586979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3447e33f4e6c5b3fb5b64bbac31d6771c1f1b3bd58865627f1a436d9e090b2
Date: Wed, 10 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757476793
