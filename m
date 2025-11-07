Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C3414A60C
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762489194; cv=none; b=iSjJN3l8Y3ns7DtoeqjPftPoaMKZnq+3QgZpnHGM6Cp8h78G79pKMmgF049ig4SDubyLpGoRFgOF4U/KLyEvPn7BZObsJy3Zn+cY/vTVOfsfRV6nq1/+MGlTZHl1OZJNEuPOUyT0I5DBpiEJCsYxy3NB3BX9ZaDijx8XWOJ93zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762489194; c=relaxed/simple;
	bh=dmABnEAvArKDXJWVzHgRNHLsZUAnHT9Slk4inadPpDU=;
	h=To:Subject:From:Message-Id:Date; b=tYsJdIZnVGe1AuXhrM+AObCrm9bI3uMf720ZW9cJN4ysxlVD51/FzA3gaLEd8vhcgiWWFr7MRdqkK5bguPNsG6aqBGXJHYmUky6FamXxdsxDlgJLWljzbgZRXlJ4EpDk5JMQRrWXP2eD1Rfd+Utg0ZEXP9nFifsSwwt9oqVmc0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2pTHK9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2pTHK9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8B8C116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762489193;
	bh=dmABnEAvArKDXJWVzHgRNHLsZUAnHT9Slk4inadPpDU=;
	h=To:Subject:From:Date:From;
	b=k2pTHK9KFFz2ZfEKtA6ED6WBD9xgayZPokai/eMPqlDC1J3u91QLDG+RXkGH6uX3w
	 JLteCV+rzF/bYzJgoZRazXNCsYZkXDgKFBQvOdGC6OizJVrNCzxmUdSaXxmSI938MI
	 XV1vWDOQqUKGn1Cqg0/s47PDep3OOY/IuldPfmaJd1SijBv1h3BXOghcWPu7NjjH24
	 TpBcO12Zyzrdc5J2EC8MoFiSbh/xbT7xAK0ZJBq6CsVPrAJ69w75xjLC9nTGFqOuDT
	 +/Isg4UfjjZdz/HamXvwN12VpW3ltCLMD42PDhJowvA/vzypQtZn+AXfJd44QNi/0E
	 6KF2VU6HYkBhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91258CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248919358.4059.16873242901870606420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c227a29310cac7b18367c9f01f04941a9e1e741e3738c06fb1c2edf5defe46
Date: Fri, 07 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762489193
