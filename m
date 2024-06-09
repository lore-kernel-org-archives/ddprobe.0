Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700EF20323
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717940243; cv=none; b=pXHL4WH33nm2fIkB6b8HE2LWBuVF19aPjKpQlEx+hc/JI90k1LGuqosqFs/4ZfpDRSFSGdD51/eR2IwggyyTUkjHPjK3wgMggU5DKi8j2W2TxFcZ1Ba3UNfMGlUa0l6jXw6S5sxbsho0A/vygSIBDInoLL99q5gbAus2YJTbqg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717940243; c=relaxed/simple;
	bh=59v2jOvbk5R3eM89pURtYAMyhmHt8iII1+4c6jfUORw=;
	h=To:Subject:From:Message-Id:Date; b=MZs0kDBoxxP0WOeex2CzHGlz7EN9oRaH9askLavVj/89WfPS1UgJSHe4H0dWyB6/wakk5RscimYzPaQio4Dx1cIp4bX4QRA5qJpHOI9Z08TdDGZEfVOCw28g8VVxV1t/1HYmccIC1Kdsglm5Lhh6P1Xxj5vqY/EFetfgbD7mkbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hj+lc7JM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hj+lc7JM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA438C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717940242;
	bh=59v2jOvbk5R3eM89pURtYAMyhmHt8iII1+4c6jfUORw=;
	h=To:Subject:From:Date:From;
	b=hj+lc7JMqdPz7dYNSZMKtJzZibBKE2/9lWhkZxAKxE2o43SNFxNagL7+kkT2w4PzF
	 Shluvp4t8JMVHFbS7nobaQtMa4/2WCDBeWPkBd0hD06zyLSYb2vLSm0MJVVj+8X5YM
	 gM71Eh1XOupNM0+kLkHauw8vFwzCOGZwmd80wC9p0V8S/T+OsUZUOmIAsQ5uhD9b3X
	 ep/vig/6qUEizTvG4CNdqdSl8pqxtuI40xA/bWqslBGVq0y4d+cYu+sxTTlyXjNmcF
	 LL57ZEhEHydhgykzGWcVljo4tsT7AX5mopkzPY1vU6hjO3mWdqq/kgkB71Ro/DtImy
	 zo86AMtF31KUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D64C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794024277.2358.15858821475994366366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef48c60d328032d69f79183ddc85877bc12f29cccdb2a0e6310e13074b09e89
Date: Sun, 09 Jun 2024 13:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717940242
