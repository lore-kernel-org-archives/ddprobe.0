Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C21633
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716692063; cv=none; b=IvWsrkVYv0lqF+FbFIobZhquxcEx5K1klYKIkM/W5KrqAHqyJ7w2Dp0OTkXp54E305Bo1KjDe8lnaTD/xVG5Zbc8aFY0Ir194YVc5cp1eaKDQRW5dtdS+TjRhfy6QQWRFtXe5FwaDkzhtOObuF3vDx9F6yYuvKCoUShiQr6uWpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716692063; c=relaxed/simple;
	bh=0104A2bX5UPub/1dAQ+qAwNQXjstScc3Z2B1p+j8eeE=;
	h=To:Subject:From:Message-Id:Date; b=AgZUG3T3/c6gPeKACLGnsviHZlCd+TbqnpwQGqD7Ly/RkFfHb0g8B0bGgDE1UGlXvNUUmH/xrP0PIoC36Q2dHxqcdazhzqrh8KplLVXtL2gWrpZhnDJQhKDUA4wQ8a4bU4xdKrTXoH0PQauV+H0Sn4XxGkzPp6YRoIpP2VoA0po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXpTZCrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXpTZCrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0162C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716692062;
	bh=0104A2bX5UPub/1dAQ+qAwNQXjstScc3Z2B1p+j8eeE=;
	h=To:Subject:From:Date:From;
	b=CXpTZCrQyuCSgkWSTyuQyvxpwdx8ZT/Hp0mwJdl38PaBT0NBKxLK0mz5iiNF0uhBD
	 X8VNGujGWSpVTiQkar7aTm6ylD9N5X5We+yD/V2nyuDq0fFNeBIPqft103RRBFjL+4
	 Fkb7+sfXMI/eDI57duNlH6j2H9jsRv5uhodgnL0hZ2+6XV4v4r8TJxgCHkrW5dchPf
	 nKY6tsRPjBpMHmCb/PB9AsQO3XBaTmyPSwN2GQ33K6CEY/7YQj/tVn9pMkDuw3PgiC
	 bMMysAuYF0xB0xXZlFieP1BYaWf6oMN8HebWh7pmkM5joXB1TsNkxEqm894GplODoE
	 kqycuVC3wf+6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5922C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669206280.5373.16904274035770579262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f112b0fa9f875174e4bd6c0bd68edb2d375a86546e123e65a9ccb49a64163d7
Date: Sun, 26 May 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716692062
