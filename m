Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325068C0E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746670197; cv=none; b=a/Cp3xoIydtaIfbo+rZaLgC70hCTiQW0WMBbR/iYmFMfIhP/bkqXhD5pjWYkqUxO7Fg6oIRjqKtnO7UeRnMfK/Ll23SSLwTE1tw7xYh7ZWfQlIV3Y6r6H2q+u5qTp29JSKOY1nlK5t4e/3XY2kusdMP22XYymibKa3tf+qLf78Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746670197; c=relaxed/simple;
	bh=PPo1RYGzahZ0S/KFgZxuK962LZuBhUTSJSHYfbTpNwg=;
	h=To:Subject:From:Message-Id:Date; b=jtva2sBb8NCNgFG2bY+FSyQvI3Cw09adbOcV2emqpc0b2YmngJtd1ADNHMy9RZVkZUP8BOhQzLKDHAhI9v2eCk0OO4PCIGdrBB4dKYuX0SvRDuoY8qdkRvgGBMo6JaCwh479k/3G7SNHs4I+0tOrKi2xbQqLAQGy6eeR2gQh9/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+Jd4w/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+Jd4w/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07FDC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746670193;
	bh=PPo1RYGzahZ0S/KFgZxuK962LZuBhUTSJSHYfbTpNwg=;
	h=To:Subject:From:Date:From;
	b=l+Jd4w/R+2h4fV9Hv+tYpTf0wsO9kxv5YSgTMg2nw8tm304e6LBuQaqlRQ4bYB9+M
	 ru1VZgHr4n9e8Xa5N3oh+Nv4dPo+aKt66wRvIjCDJC/r/uukRA6jozVlFBgKX8ExDT
	 yHz8UM9k+BqIG0p5C1XnIhPf55fxqTu5hBK7y4CHIKJZin5awHioGYi2zXa708QXoN
	 3irLK9lyBhDKWXhfPIp1P2CmemgnDDMy3+5yFKR63cfszD2EU2lLfXsulZLG/QEBwf
	 E5q0ThAdHs/6OfxFXDvjWbAdOFZlIQnMdEejSbKMOwBC3w5oBNr1LkvRB5zoJQVGRH
	 LkeEUE9swMTzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA99C3ABC3
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667019357.26876.15374431511901112327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37abf8da9c95e01543a18d50cfbc9c1625463eb9e376dfd88b47cf4f29ca2d3
Date: Thu, 08 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746670193
