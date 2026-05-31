Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4192D1DE4EF
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780203874; cv=none; b=tfiwr+0nwABUfrwxBh9VHmpu9+pKAV0/Yw1KRtIq5JIQdkDwIO/XOVrI/MPPQPzPH2v53var71RIxcrsCEB7TXvXagD5ysxEtDvxQrkvabJKsgV/1cbSEbgpc3NzQUsDARpH/g5HL5zAnnhNX8dyL02gYyplwM5N3w9xsG3pyaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780203874; c=relaxed/simple;
	bh=2TzNDKd91M80L8z2RWKYWlQ8sIspmhU9/ZrW+Dxbt3A=;
	h=To:Subject:From:Message-Id:Date; b=IzQItr9Nn/3whokUnTK88bTwbGoafq2E3ZetrGbEc5tBZVhoqHiaX5tGgYOeA/WyflIVWhJ09jE+mEXJxXSZj3XazIdwJFFKjM8qRX82ViA5Ct7B+RRrLEFOYc1mIScLf9ACiG9DpOALxjTX2qs7bdsckCAFIvXrmgzmcU4Y2js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLAP2e1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLAP2e1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C909DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780203873;
	bh=2TzNDKd91M80L8z2RWKYWlQ8sIspmhU9/ZrW+Dxbt3A=;
	h=To:Subject:From:Date:From;
	b=gLAP2e1ijjluLXjHjQIxg68i6p4ddDux8eyKWZLIeMfM3YrJkqNvzn//fXAAnVgiA
	 YSGGZKawWLEv3wJusYWj7/hFJuz2joxEzjHx80s3vU2C+8xQzPRqq9yYMGEdVK2tod
	 foAZGPtdGWdLhaWe/ca5u7WNopIG/LiHLjpcCkE8ZnyVGWKNjMKn6/7PEtK2vcGQqn
	 6oX8p6erF7YMxLkLhK6kEyQKu8neEK3UlOBvIk+2nCgg0ja9wAsHCHZasA+NXIPhdl
	 cIHmyd7tTrM4KMgj43qVBNTlGLUC7H0kUmQ0ehW0dOUfT4xAviC+MMEATFW/03+cUu
	 5PwAdK7JQk3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB56CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020387370.26206.4058355908444922865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a704b4be844cc0bf3ad5c03b0606146cc7c942fd60d7ca0208b003295df1b4f
Date: Sun, 31 May 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780203873
