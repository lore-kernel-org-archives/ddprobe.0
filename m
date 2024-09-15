Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354D3F9FE
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726395954; cv=none; b=H3qjIEBkLQ5p8w5XLDGh0MLYXUGBS7YY4xjUysTO/463pzII6JX0JYua/8yEqeCK4uliffqU9RM9SG7iwWMp1PJUN+2WcljPIHlQSjIabOYCgkKwOkLo/nP5kO5y2QLGesCcmpst3OslCZrBkEY9hMpJY4mKqf4e7zJqdo+WCHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726395954; c=relaxed/simple;
	bh=BNJGdEzGA2oaCzfomYY2Xzoin1MO2WhW/lFH3siZEt4=;
	h=To:Subject:From:Message-Id:Date; b=cKCgRQWxSyK5fNd3Fxn15HLYX/HQ7mF/avPNVkmhPyZ7TQvT+xyr3DKaWQDwEK5FjP/rekznE6/qyQlfkqOqlXCKspiBaa4lH/1zpPhZqanVo7BPpA4kEEV5Ups08lNLEUGB5ctnKxaOTrqN/KRWxTtIZkLdQQVXhc4d61XgXkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuP7LlDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuP7LlDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38A5C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726395953;
	bh=BNJGdEzGA2oaCzfomYY2Xzoin1MO2WhW/lFH3siZEt4=;
	h=To:Subject:From:Date:From;
	b=HuP7LlDhtC5+vqbKl9vZam2mIJsQ6IjpQyQiASk7bLK/ynRwO+kXgA8MoJU5vPDHN
	 UW9Hbv9W+2cuAkGEME9VaiZEmGu+aMAVpNxbJnelxzJQIWVaE/NgaYrvJRrzyOvFfi
	 MH28iddcGPnUrEOyCZN6YK9vMMZNqLtUAs/VyI5mPdGPF5NnA9dXYxkinuhd00EN6/
	 oWIRAhWvf5ErHp8/VHEc17Xl/qyp9zJBhIn7m6eSjj0wjfAT0fEFVcFegGlQlGR+3J
	 fksaTQjaXZfV7TUgJmUc4zYxzEKVRSoH4l8KeQsmFQD4CMIoprpG5MCmhCnbHvPfYO
	 wkZSKanvz9Y/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF72C35FE4
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172639595362.4106.11386157362953254389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338e7b0ff4c18e79d5368e929092f7fdcc8f83faab756220f33cda58d75090e1
Date: Sun, 15 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726395953
