Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421821411DE
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742759995; cv=none; b=j3vQIbXRBdglxDfjerZSQDcib/yssVoChqQCwBZrGStybMZzrpvtC8CxsY/4WSUIw76SN/IL2/02Vv7vNUq95ztpWi5puk+g7M3r+CPvWQWEedInkc2bK2D7UvV9j5tt+j39OXLxHAdjRZn7Y2d/jeJS61YGGxf8m6wLKLMLkzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742759995; c=relaxed/simple;
	bh=WURXbK/IsdWfw90MLAo529AtB+2vpPSAfQhQ5sWdIT0=;
	h=To:Subject:From:Message-Id:Date; b=kVn4J/Sh4RwtxvnH0VVrAbPjm8CT6IOHGcz2Jlq6+Rq1rsfDeNWkz0zWZ2Z5orjpQhkE8k+NFauTBlXrzb3lhOuD+JLV8XrzyMIoQwM97lpsh+dAFQG0dBMhFfCYRGTzQCR+z8UM10geU/OfFynCcbLBK5I/GdbI6U40OdhM4V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sjq4vW/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sjq4vW/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA959C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742759993;
	bh=WURXbK/IsdWfw90MLAo529AtB+2vpPSAfQhQ5sWdIT0=;
	h=To:Subject:From:Date:From;
	b=Sjq4vW/ERkvy8jPKu/4a7IVnKspgtz5lyhWthu91QJ+fYnS5McqCmi2MVbfV3m0El
	 9KRygMN7Ysip4+/Z3XxpieyiMuaKLfjb4aR09VUAf1QKQcPuCVrazk4XO9wd5dGfMY
	 gYx84nuQ3zw/QmTN3KDsS+CUswyPWHeIuqDOhtNFQU4mOeAmPnRrOJeKGs5PKdrgMB
	 6h/grK8k7deZnUDC92yB+FIYxSyRgA46rnrdbKA2GPLmsX0G1EWUobCkHWgV5LMPRn
	 XApxuSuRBkPbD22KwJEj4FKRAAjgl9gtBg3arhvkGKX+U8twMgX9h5zuooXBzNIFDA
	 a/2x/owgISHGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19CBC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275999365.2833.7427764565109171516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a0e181e9aaa2d40c26c99fbea6d03674a65156e5e592ef247d49f8078da297
Date: Sun, 23 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742759993
