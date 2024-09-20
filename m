Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED7C13B2B0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726839954; cv=none; b=Tjc6FjmoPB+EoqrFSw1LzlfjPHR7Kdwz4mO9ekyjleextwzV7QhSMSrbpt7XSqEWUOxVklaZxi+qDtX7YvIPlMt1sLw1j2QQCeBiLBwckENcsDEJZYCj5oRFr4hWJDZZVC03l2G5oDgx0lV5Xuy4Zir9X9Y5XC5yPvJtzhNIIVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726839954; c=relaxed/simple;
	bh=DA94OPYQX06E/qTF1jqbTuOyqJOkbebg2oIOGiAYdgQ=;
	h=To:Subject:From:Message-Id:Date; b=QZRnO3G7IBOc2h2uR9xPpGHijdjGCrLqkKy2fXmh80QKReX4k7gawoXJnp9WZVzwxZOwUHENZtEuhHH7GI/SueZdbid8fqrddkeRrYnp3O02FAEbnBLFq92TwslAcgyiSiEJSOloXxHRNSx3eagguJQ92K3a1vhH2BT8P5Mty3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1oLKYob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1oLKYob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFF4C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726839953;
	bh=DA94OPYQX06E/qTF1jqbTuOyqJOkbebg2oIOGiAYdgQ=;
	h=To:Subject:From:Date:From;
	b=E1oLKYob3aSEHK1hgQchc5WTo1wPQ/DhO2x3tDcYJdaDf0DPA8A/Qsuy9+aVE5PEw
	 9STlKm6y9kZPRNzllQNry3G/e4hLk1WCPf0gxrkpweHmphaQtVEfkjZErZ5LOL5nZk
	 C/e0g6Cvsi98704mp+EyvvOtaFO1tiM5G6kV4ktfa2tXkxg+V3n7YLh12L/UEVuC3N
	 VL02IMtfLj5tmB9pD5Z4kwmfAfHdn03QSCWU/j6yhO4c/zeESlpEKCiBTj8C+sogsD
	 O9kwFlotVfdR0gEvOldJxuAxkkosulfStfrzOSvtAeSwx989eAnOsr6VmbQTb6eUjE
	 6p5dGzNft4Ycw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99613C78845
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683995361.7190.9928909346253144371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cedf1059f02e7eb590b1318eb840a99abaf36e03d1b3cf52fadc42c9d63bd3e
Date: Fri, 20 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726839953
