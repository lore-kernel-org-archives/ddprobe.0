Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195F81D5CFB
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772964894; cv=none; b=D396IPHWYC5JCg11omzdc23DPYNmFUy5jUeMvruLjTvKjm1VE3/xlXbj1ZiLvpHZ6te+8HJ2B23yUvSuUJChs05Q6oGNWQh+YQDKaBXULnmatBUYJbwoste472M8MObbxw8+i8bsVZtFhJusJkyz76DqgBxv7zCV+VVb4K5dUNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772964894; c=relaxed/simple;
	bh=X3tX+1mSx04P6G5JL7dTRun6LNQpVfsnFXsk7BqIMGg=;
	h=To:Subject:From:Message-Id:Date; b=epH5KS16HUAieIEkROK72wuUdJar1RI3/MQAVux0IERkwnWaSY3F6fGcEaMjzACMaRPQZtXRJFGh8XV8ieEcXcVHa3dVZtMSDGjX+Ia4qfQV+NeN45ddDnHETK2j/n9KGBxxr9g1UxSxNQoiHbqkrB9z6he7yA9tzerfh0rHwqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4aiyl1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4aiyl1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C7AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772964893;
	bh=X3tX+1mSx04P6G5JL7dTRun6LNQpVfsnFXsk7BqIMGg=;
	h=To:Subject:From:Date:From;
	b=d4aiyl1Rl28nowbcZ5KYXpUtVRkFBkfCOorFedslc+FOtWpgqYsnOd4Db3eJOVDFp
	 zZxyr8uvKrRzDY1DyoPATMum+C/3WhIM8UYHS4hLOk7rRPy9f4z074sFDrG5gM8/Uz
	 6NXnqel6nB74WaixBMtL1Jv1C4Yk+YCqIDO2zfGhnmzw0EZP7w1SNXaCwRgUmlo4pY
	 HpZVn2UukNoF53BFhslyoO7ZossDRerfpA8iuNMFtfr57xuK+2BsGgRGvcYUsgyTCi
	 rSsIsk+DukHQPhQcjk9RVQUmKvTXlfqW+yyaTPQEEh4MGoPhY58KNziruiwUIf0g6Y
	 h38AnK7OEfhsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A2DF55102
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296489357.14807.8258272658274386810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f825c702b916e892a32d8d180e0a81a82330492d56a95c907fdd32d6ad68bc6
Date: Sun, 08 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772964893
