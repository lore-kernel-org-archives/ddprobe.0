Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60932417BC9
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787223034; cv=none; b=R9IPX4kAWV300QmkBIpp2gisgISvC3sR1pZX3YqrgEFCiEGAWVlfKpJJ5xmrjUApj5EOq8+PMjI/aqUTb0NwRdCMvWcsUQcfYRgpZYbUYFgvz8nteXOg0MSk3NBjxV9TNTitVPs+JlG1CcTuRrj1cW3MZ5e+JAwvkBQyUlIkoqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787223034; c=relaxed/simple;
	bh=Z9Yxj0NPhKS7NxTaE7u7u03nYHzG6NOAlSAzsljN7NY=;
	h=To:Subject:From:Message-Id:Date; b=AHdUBRRyIlZAf6OOQX/grNgWCZ43kVnreDJtuS2udJjhKjIBnr+UJe4H4MeoX98JJLfVTNAh6bsJFa7kQFP0PD1f2AFu47bX5gFkFgU2VKjOn6bY9YiZhzSeY59PNOUSCPcx0xg+sSXvS9I8mefpnghy8NSaxJItaoTg4yDA89A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/AwyBiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/AwyBiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C2CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787223033;
	bh=Z9Yxj0NPhKS7NxTaE7u7u03nYHzG6NOAlSAzsljN7NY=;
	h=To:Subject:From:Date:From;
	b=n/AwyBiYynPaG2i52MXF9esD7MKsOvOjaBB6UYL2VIKv7SiaoVmA14jXGrhqlJcAc
	 UeAeEQ45BngnXYF7AsRumsyYtAh+jLzZo8RUjD38M/KW0XuL7f4rhEHu2aa6PvU/s9
	 12MwiQbb7y9Xoortf1blokmkjM89zz6VaH9zhrn9yCQnI9y4Vf5DRktqAsWXuPUJyW
	 QQ3BD7mj6WT+iSnfTJSqDbByujoG/te1MKmfRO8krMzDLbqSeJkT7H9/EpAhRtpQVP
	 +qMULG1bE/b77PNY6NhLjv9pflmztWM5J0+/In0NJ98JTTskfbqJK3Tt8xJuVhoA/U
	 Op0Cx+hliLWVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A7C5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722303368.2276.17843247669541210204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6634c538a6024cf72f1be207b2d0daccbe89254ed9412500268046e98e1a4c
Date: Thu, 20 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787223033
