Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D9C2AE77
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756589394; cv=none; b=u9Yf81RnswiTPCBf0c72R936p9JmKCuvAqex3R6QGzVxaLHySoSTqW1PP7MJ93JahNW3dOOAyiyGWtsOZfhcZJnwrF0KLPveyxdRrmAuxf0RmcCkJCZxB9VtE3Rwr1EaMw93nwwIg6/PAxTQAAFnhW5AtixFg90n3ABHou5enIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756589394; c=relaxed/simple;
	bh=LxiqTW9OvH/n/3E2r/niMjDcGtUBeT6J+Vt+Q/gJFyU=;
	h=To:Subject:From:Message-Id:Date; b=foa6DuT6uUKY0EYLRTSaQR/V7L5TjaLSjG+AMhHAtu52BGQHPFdSSAFhv0siF0vc+AZpuCsPBKCZpcAB/7qnWnTRY/NLjo0BBIPmM0BGwxHXJ52WdBiwFce+yt2T3VhxdhIQjGbriqUQEsUU7jBzsbQOFeQ6ulkvbeH6KM3LhDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZWyBGy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZWyBGy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F780C4CEF6
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756589393;
	bh=LxiqTW9OvH/n/3E2r/niMjDcGtUBeT6J+Vt+Q/gJFyU=;
	h=To:Subject:From:Date:From;
	b=LZWyBGy7/nlwHB4zLa/am/EDJ4qLhib/JagiABikvieBsHN72Rz4QkkukjNs3nuej
	 ENn1hKTmLE+B5GrkL4AtZdx/5XNHkcCjz5o8BYwU7EbPCgy7ZAcvPpEwk6D7u9rgXQ
	 8Yvy/XT568RKqYcuQeUkT9zLC+Efe3+/CBz6XHTddYlbmMgsGKUTYbJ7TkLg8NLjL3
	 8tpe6y/jmfmsCJtrtknN610lPx3YwAmlOslVaK6J3QRktPuOWw4xc9yzXX4umHzy/0
	 z6Lsh3ZjawsfIQeYhgiaaVTHXb+m6GhV+mAc66NJYN8QECYb/0gRnrQANnsf9VrcI/
	 7onodMoEKCY4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F114CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658939357.14752.15872527551331291780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b673bc735c69ada0cce6d637a7db84ad8bc1313efee7a84d0209ccf0d155878
Date: Sat, 30 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756589393
