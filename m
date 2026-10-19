Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B933FCB11
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792380034; cv=none; b=YcvR8AM/v3jCgdMCFg7oACWz6XN6w6EVoFuTSuM1kQNkDI1qzd8stuwvFvkcshHshQACmC3GVgoxEjz1GkxMhcHQKuTWCtXvmDL53DOArukG6OY5s9sv2h3MLYlLL2PvpBrbdhipw/BIQR08POq+bTnADneYo6PS84Gb6RoHaKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792380034; c=relaxed/simple;
	bh=ixtu3WI1c28Zbb9eXjrvFUuGMZGkyYtnkcQdIJsNb6Y=;
	h=To:Subject:From:Message-Id:Date; b=amPDn6QzxrJGMH0ocXEc1LRI8qQgq2DmvgAAhleeaJtOlMAuZiCnLl8wWeYb0fklTRe4+CKQ7V8xgWkXwxERKgpA7rlWubnTp/BZYAQ5zAVurBfIu6isxGyc0cWut5ZrskhGapLuydOFHI3UD73QtJi1OWpORrPk/YPYflbrkXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjePEd/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjePEd/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF84CC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792380033;
	bh=ixtu3WI1c28Zbb9eXjrvFUuGMZGkyYtnkcQdIJsNb6Y=;
	h=To:Subject:From:Date:From;
	b=LjePEd/8tkLjj+QkwVC4euzuLMF9qGSunu+C2kZqvvnx/xKrg3Z6D5l8g2LwMFvlW
	 yHa44XYBdwwJ8kMs2RaZl3vnT+dYtPwlNw82mh4YgKxhqIYzbbUIoc02vxockU1SpU
	 p+FbT2K+JxbRZ55PP+kEHbIt6b+2ce47n+lT526y7XCcj1N88eMrI9Z8pfnn2cZAv3
	 Re3i/r6mlSTE102u1kYB4c0QUdmJEZfCY2kJSkAtc4Q+diDiTKxIEZM7DKDiEVTJvv
	 FsSaX8Y1fjvWgSLoesATAZ0X8KMWxv0GfL5uhvX955E16CqgS5b+K4m+ZlsLTyl07Q
	 l21GgdoZzbvtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA969CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238003369.19784.2260804224823807839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72566197a780560900e8ac2b8529f311fe1a407ab1f4d0a949598af431b17eef
Date: Mon, 19 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792380033
