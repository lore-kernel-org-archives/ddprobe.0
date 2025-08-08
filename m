Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234497FD
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754612394; cv=none; b=g/Fa698c3paYC3RL5qE5sAuIHi6QxkqBIQuOODo1iVLgMfpU6OOh9+4vsA9gJi6xIH0YRMpvXdvMvWT8ZrU+DpX0+9/4Qo9p248D8cVGKFNByFIFK6wS6rOqzuqMNCWJj4kuWefxhXdm3glM74Z2MFXZwchW0/yFWWSZfR7ahgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754612394; c=relaxed/simple;
	bh=CseA6g2SVH1OU72Tgn0LYy3n0cswfCvXJXHYEpXU9rs=;
	h=To:Subject:From:Message-Id:Date; b=MA+BYieclojJeT02dtzSr9oVeOMz4C8yldzKRXxuSZg3UMa5EuBFc4crL6ojbGiHugr6xnUxTExRO5irf2OpW3gChi9xDVTMeqA986TDIb+k03hnTc/DGA2qjHETrtsd/lCEgE8O+A3bEZ6vP/tlhJtQUj7dnaUB/Mh3R5MMDws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQkcrWXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQkcrWXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73B9C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754612393;
	bh=CseA6g2SVH1OU72Tgn0LYy3n0cswfCvXJXHYEpXU9rs=;
	h=To:Subject:From:Date:From;
	b=AQkcrWXCakpxhiI8tj7SDc4W+LviVamSLCIUxwZFvCD7XcF6yFunZEeXXa+4HxTyA
	 ns0u1roMdgpVB4LnkNSYTspF4XG8HTdOvxg7FYyaOX2Mkn+bLjqIoSi1Ya009aWaaO
	 ECyaHOhhoMIhftP0Gsa3B/UJbjaYe/TMj2infuNz1/tRJyWGZSpZhhomTUj1H9e0lC
	 7Zr9Tbi9AyTEO4/5m6nYfczi90frFlZnG5rADYaoT2wIEMWgQNzCFUkaGGB0+UFaZU
	 QTlUO1gxtGAkvwYFg3FlCu9oHMAabHSdHUq0glJFSuUB+/MBC1xgD4Ry5v62+PjYKH
	 YhhGUc+yXnXLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F32C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461239358.22771.4461453726111782479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41cf4e7823ba04e0700b1d213abf128cd39f534fd3b4a8cabe03964a9601297
Date: Fri, 08 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754612393
