Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B99528EA56
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756918194; cv=none; b=WR5LUsyTszs9V/ubYImfbkETNtCvfY6RGup5cdpueq7zBPWGPJNBrcRROXN5DPBOeU/s9zm3lHZEH04azViiQsDYs+g9wwDMvgTJ3EXnjYyAPo3lDUhzNQw2hH7UhCcahnvHO89+l7rbfq7Nt+6ahYPAw/qUjHL3hQo0KBLHFX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756918194; c=relaxed/simple;
	bh=JC101pxH2ntrp5GmVowBM0L33wyHS7HnU7bXKUuiQXk=;
	h=To:Subject:From:Message-Id:Date; b=XXR2pRxUKo4oBSBsrU0AjRxHOsVgUFFCCW/ioS56/UOMFK0FKKlKclhHYVT2yFfAhiYdiVH+ggpnTAgjwaLf1d1zrfM2YR+Lu86uXnbwOwZD6T44z29i/6y+S3+a+BwQaqlTfPRS6bZX9MImyO0hRvQunVii6t2TLq7YXlzjcBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LODhl+cD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LODhl+cD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A615DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756918193;
	bh=JC101pxH2ntrp5GmVowBM0L33wyHS7HnU7bXKUuiQXk=;
	h=To:Subject:From:Date:From;
	b=LODhl+cDGkIXvzpZyLNUde+t7mPdGxsjGTuRTA/VK4AsoSu89JwOxhmBbgnh5deuW
	 i49gYZvorUGhozxj4avo31VYB5hAt5cTAIEDrXEya4nNsPAQoM+ErbUVp7QUDqUXT0
	 rrBB6jkvfvhLqKRphCQsReEg6Wq8UuRhl7mjyqFMW/2TcaJboV5Mwd8KoCIDZEryTX
	 iCqYqaOwjKJFzC4uDIHH9r7YqNVmQ5nQICIbgXdIL2A9pFs962wuc8SeYu7ePtYqym
	 SSkA9rblq5KxO8yVV3F8Xi8yiZsKZ37CCKz5sAQfOlYen5QMhjBBOI3rZ7hr8eDIZk
	 C4Uh278Jvj/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90043CA1011
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691819358.11549.15536046258620548357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a92b39b72b04ce37e60118286cbef2f2aa1f8737583bf95700e877540c4071
Date: Wed, 03 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756918193
