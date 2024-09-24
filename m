Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D1845023
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727151954; cv=none; b=V+EKzUCUoisQ785O/5/mz7MLlQJblFGOB0LLtwBj4YtSHpQRN6MLac2uRRZoslwMdXMDILnqYqsMZakvq68x9kWVCdmbCkVKk8zIkDRuWdAV8VlFcIetR/9c/FkN2E0cOzbsoyIpQrjj6RmzAs3ipUcHQX5drhe3B47wDuMZLWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727151954; c=relaxed/simple;
	bh=dikX+PC0cuGLugN+h3NuyJCDjCT5Rpr6RqZqtAWeg7g=;
	h=To:Subject:From:Message-Id:Date; b=h967HQ6crs75FUKbEM1U0ZVK7gSMSNLYNDyy8FYh2Tsos9M1op8ZzczO7/NkZE2CuXWBJfYwMiAjQ0nqr5DP0C2PL+XXys04T6+CrPZRRQzpdDFy7Oe31LX4EtoXF66ESDiJshKOWzCg/YHzs7BbbFqntaYNSzu9VI9rnHQumU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkBsZ4YX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkBsZ4YX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFA1C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727151953;
	bh=dikX+PC0cuGLugN+h3NuyJCDjCT5Rpr6RqZqtAWeg7g=;
	h=To:Subject:From:Date:From;
	b=CkBsZ4YXhWsPDoAi+WPTA9tlAd/YIPR2nPnQHnWucF7KhQGM4L/DXV7U1jE6gOJU3
	 5/nN6/0JM5r/Ci7GVhiClhgNohe+ORhYOofjUW4WCSUxjohTEdxQqZOYyzG7zC1mqn
	 WgSrRfI4+FIUN0rvymQdqVIrGjnZpUrnaKaarpl11KRv4nPIMyFzHdFTEFGN6pjoN4
	 jVdv2bwrDn9HoT1kdDuZTRUZt8dgg9wf8bMUNca5TS0dhTOTZIFyi4728V0MbVQvUz
	 f4xjxpqOcTk/RizGzUCgOxVC1oY+4e+cZD7/olZk14dtj0aWTV1/mrz6NfmlnqSfWV
	 1EtCf/e1rNflQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DD1CF9C72
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715195359.4336.5380278245635310119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e162dbd090b356c9f14f827b29568796f4e0791fd713b0de18ddd88e55444fe
Date: Tue, 24 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727151953
