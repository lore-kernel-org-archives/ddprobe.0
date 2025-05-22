Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4024010A3E
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747877994; cv=none; b=tVsjjAcBO/GY3tNERBpvM3BhlPbU+1XueodkYgPF4LBX2PrwuCs0zoyF58yFsSMqieYs/mhZ19bH5S1wZBMo+jpEbDlls0XIxZaiz7ImI6mC9PoRGCDhWFRJ7atIMWFkHDqWHUqmr366akcAERS4+wyLhp8kwaTJfLn0LubDTN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747877994; c=relaxed/simple;
	bh=1WR9W8geiXbOrZWHASlw9FzBd5ypUVsp+59EDSzD3sA=;
	h=To:Subject:From:Message-Id:Date; b=Bp6jAQkt1fr1xSjldMr2XrAbK+Q3D6H6E5ztnguRpXzbzwzE3PoNcNOAwhHbEak8g5r9nCS+3RvM1SQV+e4iEVinz0bppvHyboKsppVeLXGY4tRA6drb9OGepfn7m3c1NBxVvUaoemUgL5k+FGe37I9Y4akL1rWzeduna8z5ijs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpgAdwKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpgAdwKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2226C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747877993;
	bh=1WR9W8geiXbOrZWHASlw9FzBd5ypUVsp+59EDSzD3sA=;
	h=To:Subject:From:Date:From;
	b=GpgAdwKx51+eg7dlRjvWz4ZnAX4wByOgOq8kIIDiLsKMuABWU/LMMH+2MkvwxI/ay
	 bNyUMIqouG0DWErjSlVTkmjAjjDnjl6W+rcVTdaL3iSz4PA1EvZB045qFFpC96Hudm
	 eJ7waurkmyXtBeKV1Z9zfk794TGD7PaIcDczB5uVWVMyneET2jJ2Y/kOGD/7JNVtJy
	 KX6p537S0NnhMymYsv5dFhxOsWCrfjIYauzhaswVNbSJX5LGCrN5PIqH/zUld1I148
	 L9dg/DXSTKwiXRiBhvz4jUZEqXe7N5g3a5b2yj7DIhUF7pRT6qQ3XJykSEu+1RSIXu
	 9MAlSycBjeu4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7FC54ED0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787799358.4982.4640777159949486603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2cdb2b988b7fb3f2a16549234027c7e444d35718aaae50c74cf2b195819e88
Date: Thu, 22 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747877993
