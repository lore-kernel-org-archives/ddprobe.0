Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1620119F137
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753674594; cv=none; b=TC9Gi3QEsDryR6syxKn43MVj9yFPgRS3+b6UYC1mvJUA+KAFbG/AU3vMdq6F1CGs+/ljN8Yt+FX+28YNPbhwTTZuZ4ZLp/eJmHvA1qEtii7eVmMiuRe8b7KA1E8zfXhfisZ51ZOztvPSIJhRf+fdPgj2LOYfTfWkf5xGEoRmUec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753674594; c=relaxed/simple;
	bh=sZT2fNZDaj6x0MELgJYJ2n4WOK7gaqG+aaDz0fm8BXw=;
	h=To:Subject:From:Message-Id:Date; b=CeTF1Q0Ml+O0SdsCnCFrfJeBQ/EeyHoPp9tVD/XFK5L04DeGZhH48faI9wP5Q2TJxlMMEySi6FpMsbYlSSFWcJ3jXR6k3Ul6zckcF/pm2sezaYBnJjJU0nJDbRLyb/xRD9x4rEvhclfK4AFJNEX38mmyw13SzkzpQn/xHomCVJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTw6icny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTw6icny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0312C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753674593;
	bh=sZT2fNZDaj6x0MELgJYJ2n4WOK7gaqG+aaDz0fm8BXw=;
	h=To:Subject:From:Date:From;
	b=HTw6icnymN91aZbO2NA8P9YELsYhtzBcRneYgdMNLKj5+DWlTPw/4LuM34ynxR/jV
	 J9MUZl94auIyrK4fKdcJMzAAja9TKSGV4aGUVkw/ZvDM6Br/ZcpZ/DlOPVOzVuKmYI
	 RHH3Z9WcVnEhPTqBVvfT0CUlYT/jzknIxun+17u1RvaEaAT2ksWIiFwb0Zaek/Wj+u
	 Hzhf9OKmjolWxjzHNUgzL7awvbRYa4s+9qRPtvd7DoIJCJg5iQYPRZM+DWPrNSpLAV
	 JhgkmKrn2tcpFBWRYcsNPt8yYzki+3x4lF9LFzwsa8UmsDrBLFj0D/2SJNOLxTKzRj
	 HNi4lbGNUtAkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EBC87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367459357.17542.7635153004900048294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb87487516c95cd65b4c72fce1b5b03eb87f3ad83daa5fe7652b9e4aba5d7390
Date: Mon, 28 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753674593
