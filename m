Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52949246799
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756966194; cv=none; b=ikVQcFcHZf7425fND03dQQM6QKSBotH+QGAV1j/vBKIGXE1cDPHsc0VFdF0u8lRAvm9SnthY26n3rXn+uL/nTTQ61CEJ6tFkSJ0fdTUqz4iw7MrDSt1xHJ6YHe859AwJo/3B1fEYJAJp0oxo24JZ3xVK0ElUfivCDEQEcBSzQZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756966194; c=relaxed/simple;
	bh=ObU7zcZk+LCzVqlqsYMubr3o3wTSBDE1yhRh/gOpKiU=;
	h=To:Subject:From:Message-Id:Date; b=VSU0R6tmbNC5WSlz1EZhh58MJAaCtSwffkA/NN0IJ/RAE1jKz2sZCfItobOGoU+41eVexseT4ecah45Rm03xicvS96TNY04RQTZXQxJY7XDvi2SAe4XyNqstCJfhj6pz1+Bk4l2gOJ6+03igm8dBtcTyR2UkO6Z32jSsJeYYAQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoUgzBMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoUgzBMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04A4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756966193;
	bh=ObU7zcZk+LCzVqlqsYMubr3o3wTSBDE1yhRh/gOpKiU=;
	h=To:Subject:From:Date:From;
	b=FoUgzBMsd73Xq69SVf0lNfDjN0ANDEM3Q4BOZ0q/ecxXBIfqQdKt6rNU8AoJh9UGr
	 p9mUeJuOodJfEhikJa7BIIDK02XguyFjnr6MxnDfnaQcy2HN91gJia6/6FZeoiC6nM
	 wP1w/1KIqrGrkIDh1w7yVNv4y5xw4rfZJFcEmvLVOM4ztO8EjBqklk7ssKA8XrAzlg
	 G+Lcud65By/U8YVYubVOwSAW9b9PTIUWkQGTRZB1EcFG3yPx7Lg/txAF6YlYeZpHJQ
	 L01p003an2q9/S/0lfKu9j0ymYdfnzzCEAheS49Xsc39qci6rG0diFNaS6YbzCc+VY
	 vrDKIrsVKDz5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A1CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696619357.15219.6856464718048193611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2266257240db8d880e3f284882e8e115bce6eb655d697ab69e8bcdc3d8e0f619
Date: Thu, 04 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756966193
