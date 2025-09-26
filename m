Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D0623B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758856794; cv=none; b=TjgGeiGQh+1fO+KnRrmUb8kd4n7UhqxIfQbd7oHbkbJY4Dd5kUh1eXp+uA9lsUbgxHjg3iCFQLVt5yh74fCegOzXwdvr3JE137oHMzh7tBmlJn9xQ2Tgde2YuLO52op+pYq5tplLr+w4z6yxQ5DF+uq/gBUYk4eD5TYySY1Eb9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758856794; c=relaxed/simple;
	bh=nqkwZvIZQUTaUogqueHtkrJhE6QWAl9lmMZMHKF+XbY=;
	h=To:Subject:From:Message-Id:Date; b=ShjxX377iHZcGuppoTWpuvOWax6LmVGOSuO4eIFOlefKsEDWke54zvi7VVrclkHorYcG1mRb42+Q7/Bi8ZrZh+EKMxXATqYzOf0rT9MktoEi0m1EwAGMsnohR9nLs7hh3XMeSiW1NCE4G6Uc/fo+TH1w/v9oAfDRQJm4Aaiw++8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWXGtIJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWXGtIJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A0EC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758856793;
	bh=nqkwZvIZQUTaUogqueHtkrJhE6QWAl9lmMZMHKF+XbY=;
	h=To:Subject:From:Date:From;
	b=dWXGtIJwy+EwPcQ4ZRN3Y6MvyqSgARm4310CeNj525lYczHEIc2SUj10wprPh0P6I
	 IXrUXaD4LmXvFHPcvhj2/XvXQf//xx3aDUs4k6kvqRAHv5ZFORQ9wiqpF74Z2DViMl
	 uytIVhzXCFfDd/V1hPkEkXwiqRzdX448oXBATfCT/Rcpi429RGS+m1TxDili6XnKHG
	 3Yzid9TJhu9enWImsvT80zfNMgx5zT9IMZbqxNSE1yftT8E9Kx1q7jUZyXtcLb8vvF
	 mgxPHzwj4btZAo78JRblLmhrdO0joP32XvjCTUuZ+B/EZCDgB1s/C8NmgTH+JqDyaI
	 ajSH/autI7C7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F159CAC5B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885679357.32205.11178950329597509131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645d9e5f993337c5e19543a3c230f761c073bae1222b29a5744dba9fcb7f1fdf
Date: Fri, 26 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758856793
