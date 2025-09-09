Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7E01B4236
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757377194; cv=none; b=g6mW+xV3VsSfY/KYSTBZbo/ZJnxI5K5dLFrW7PQowEh2nbFPAH/LXdX83BivhOQQAe6Q0JCuh0PtblAp+AIAuhH0gMDnpNlca/F/c1eFasUGFQxpOD0qCbQLOuygccouvkbBj9dMH/hOfKiAdnUfRq2GhL9GL1z9vsn4tw7kMwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757377194; c=relaxed/simple;
	bh=CNqZAo3Dm/sCu1ejkrewj5RuxhrRUkJh6v0t7nPSfkc=;
	h=To:Subject:From:Message-Id:Date; b=Umnhl4tMEIQ+dOpOYj5qut8PErbigQmCponTlMbKTyDZ4XNyHOByQWxPzWOfbgZeuA5748FzfT25wKOeKezKkpkggECFMLUs+ZUl6nryF9wZSVOZrARS2wPVSezZlYz3umnvGV2C9yI5osraWwu6gDE2BrMO/TQQ0peR2tYcxj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhHwRLab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhHwRLab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9BBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757377193;
	bh=CNqZAo3Dm/sCu1ejkrewj5RuxhrRUkJh6v0t7nPSfkc=;
	h=To:Subject:From:Date:From;
	b=dhHwRLablm9Z/SxA8EMacBFsYl02ZBn9oxhk11SRBunVg1TQ0Cu1N4B+/O6y/QAEh
	 6bHNieyFu73igufV8JNZq1Cz63YgxEwbj0EtKz8ctKbMZMoebfJb3WPtr3aKIit5Iy
	 mZcJ/2qBXVELUUpTLA5DvfdUyXuvS8K8CcLKGVribaKlDIqN99IGBxrZECGwPSn65t
	 Qc9j64TOFe2HNYVOCWYXy4CQgns1Zxir62lXvE0covKNBQy4dPy3UiyGMlkamGEhXn
	 HaWvV/lOXUYqS47PmHM5CDsbFlWayyEQ1xKcJTiYVqoY16fyXHIyYwaDmTka6zh3hr
	 HBe5wCEvpk2lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B1CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737719357.8345.7373296737097209342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965d26b414ba9e4ae66ec1b554bae6b76a55265a5654f0a8231fb881dda12d31
Date: Tue, 09 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757377193
