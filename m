Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF53274B5F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775256334; cv=none; b=XKk2tvmZ7OIEJljR7Jud8L+VZKqTKdGhDlAU5J/JQrnjxIxB/WG971Q5SileC3jPcnJt6HiqgavKBslv/SRCk1WjIGByZzc4Fdl8gm41MJkzf4UL/CcdZFP7FOReF5WSoK8WxQSKgB5B9CiolQZ6Qrp20+vWgeD01lJ6P567jNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775256334; c=relaxed/simple;
	bh=AFvDLPX4OEjbQXX7bZQod+zxwEiFL/Ztu/rLPmEFNcQ=;
	h=To:Subject:From:Message-Id:Date; b=Wr+iMUM5XovOzoew7ljg29KrjUn7+Upsw7uUL+ED1XVF3Cm26OP5Sr3uJ4sCvkOIIbou8yTpuZcDQchZZD7j9uEdtlrLhq7ca0lRT03oY+f6aJhmTYIv0inCvGH/pRCHdNDyuRG2yJyWiPu1Zb4KpiWy1/bvUGqajY31Ab4wiJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUpxPZCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUpxPZCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57CBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775256333;
	bh=AFvDLPX4OEjbQXX7bZQod+zxwEiFL/Ztu/rLPmEFNcQ=;
	h=To:Subject:From:Date:From;
	b=BUpxPZCRG5l/bOZSpB3i5yAVjkWEbViMM6HEddx4k6IzUdXsAGu5MNVhbiWsII4B/
	 jZLZkc6++L3lWAkBGXjyEaqNUTa2recjM1R1rvuI0PTk75Gxhw6yXKFTPCae8Mw/uA
	 QTa1VBUxEMxx4ul1gYGzOXrT9Uy3mIMh19yVAIPLYEI6wh4jAR/oprTjIsyoXvp0B9
	 M80/W3FmuiKBKF7KcAGjt/hBcqj2u8wmpAn20EYC3aUHdHqqoHhCQKZqItEakaj+QS
	 paOOhYDa2m1+XiguzCWHHdGoO03ASPr1/Yxl2RrxaRR/3iCnkRrqOEQE5/tuMinDPo
	 X/SHRoLWueGrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA615E88D71
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525633368.6815.17491937452422748563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85c671e4523905b06212e25cf96d94d15daf12f6620992b48efb4d7efe9982f
Date: Fri, 03 Apr 2026 22:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775256333
