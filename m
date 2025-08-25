Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A02231A24
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756091394; cv=none; b=TcX8E4mdG0CmIF40xGOSiIvPB8JxCzElL6KaWsIeiSMJRT4iVVhQDDkyfimBokAi5Bbenpp12nqEEmYk9icsHid9fj9Jz6/JT1veZBvyKgRtkQbD38024UlU9f6ruOtK3nelIcE352h7mrUOub8/pTB86pvlFmi58CEmpASyLOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756091394; c=relaxed/simple;
	bh=LVQppD/TYFvMYp9oI9WQz5aegEnhVlErmobrY9PolfI=;
	h=To:Subject:From:Message-Id:Date; b=QKn91jM/qpid4CME59MDdp8j88gfZcNl/e7k+ALCWxUIDf3mqCDhajDW1PkoVchNFtZUYbi6o9GVfDWC0hOH37xxo8kAK5heFl9EMjzGKH95SY9UjyFYvtFUmEcJcIpxrAsVrir5R/9rzvC8wTALjKMS5ToIvgt4p4XK5Kq0f0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQmQx1os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQmQx1os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13DBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756091393;
	bh=LVQppD/TYFvMYp9oI9WQz5aegEnhVlErmobrY9PolfI=;
	h=To:Subject:From:Date:From;
	b=dQmQx1osoV4xQ1/0T2vWyYh7J94uv4sUa36+Rh0LdrjY1MediGqyatVKQwGuxJpXn
	 ZXfsG7fYWM0rVYQete/U36MQG14StbV4kUCmPBcJC0YnDrJUKo8iJ0DlzCmJJFo0ME
	 Rwiy+Fwbjsv0zh/zxFkCLLYDsvwhJjRHqSbaBb0winQVTEe4KFfw2LXYJd10NW/7X6
	 xN0M1uUwMbg+M7J2naxo5cmdhiUzuC07XtMgkfMkYJadCL8YbWFKjk4w5IS1MLqYDO
	 tFmgIY/CCCecGlyqk/V9ekk46upxlOazPSxGDHLObxyJtb2vbcl2eTuwmjE9lDqaaG
	 a5EXXXrNv+cHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E64CCA0EFF
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609139357.31535.9745966349299856364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73154c0c98c64e5fa1fb9089c36457a29b193a1b4ed902b175878dcf1ce38159
Date: Mon, 25 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756091393
