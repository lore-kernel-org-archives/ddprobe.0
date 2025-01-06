Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465D717C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736127354; cv=none; b=jU12v6DLeSo+iTlGpPoRWBuItx2EFfd0gNk8Jz/0nQl2C4/FtJ/Rni4WRLpWFRxVwgCaSeIB+tgf3PQeCRtc6je3e98X+RVADtKdPfnp2At7uQRbmegEdH1BKaGZVUXqoHx/KOXkzZDt6DXDUro/IQgsuEPiOqE5dVj1vyCnt1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736127354; c=relaxed/simple;
	bh=LpLTYwYUKTfvj9zp6VqaInwWLVz9VP1CtPExj98/iA4=;
	h=To:Subject:From:Message-Id:Date; b=FJAWZEhzaYxbtVGQbE/nXOfN6b/YMif3hprIdpv/dM5mJ2o+hjHdBt/bjclqU68QBIJWPVEQyZ5Qg3yiEZUQbJ4MlcpOulgkL0qmp9VhtLLPEO7wrg2jaC7wn9WByh4IElZdct4qaCaczbIiRF6nRboPo9QpWVzV+VQdzqD6qFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1bCv0L2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1bCv0L2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AE9C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736127353;
	bh=LpLTYwYUKTfvj9zp6VqaInwWLVz9VP1CtPExj98/iA4=;
	h=To:Subject:From:Date:From;
	b=N1bCv0L22SCswgtibvVcBJ3Zb8ztMqatGK040Twgld5KS5TR83XbNy3Wc3S3usaL/
	 a/whTiI6BHA7gpBkTIv7lXydbh4Uuc+LGQtpE1n5dwxXRZryq2wpVHt3c7G+tH9Puw
	 M98IsaA3kUf9rtVUIihrfFbpSwUzk+nGeNJNvmALBZSF2Sf+6vSuSFCGxAfE1jAAgP
	 pIHdiXgMGXtE2iteQUPKiopZ65jHPZJLu7XFQFZtjFQg3WblLgyiL6myq4T6Ht465b
	 tl1DP6ewfFJBJ1tbGwlDREQ1XFZ1HO8WlwS6D7GVtuoImyFpFQRbJ7f9gEYsYlH1gp
	 zA+7/b25rm+nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B3FE77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612735365.11428.17129792984829369609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cfecea24b6106842abfa88c44edf3ea3c13f6a7e03cb9c87b7ffec8e956016
Date: Mon, 06 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736127353
