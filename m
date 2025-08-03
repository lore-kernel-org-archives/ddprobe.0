Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB182E3705
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754187594; cv=none; b=lrc9/boJLJFh+9ATXjbCRMfpciIBEPvHTMJJ1rymeEsyPvEKv3e9fCtmAl+ShZHQlt3IDKSCmepJUl+wCl2co9ea1WW9TogOdsdpCOOgK/9rIihuPw3oTAq4CH2LEN7Ai1EF/FmxxKS12VnoNAdgTUzEn/Gzh5E7r1hMD/k56M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754187594; c=relaxed/simple;
	bh=ZF7iJR7AhhgtVJvdiiCYoasyxqKASKckT0RdZDdHhnk=;
	h=To:Subject:From:Message-Id:Date; b=bmv9N4bF1PkLh1W+Tdt7TcUXK/hrXmu/iKu+zGeDn0jhQZm/MkEZIafePm8Mm61TY34MZfVYWpH5LM0WRoe8UlTXcjGzYl2RkTCRHxZtHIEA1LfzLQxlXLq8TKm8JCIvFIfU4eiN+l1Gqdsg6lJbmkcMx9bSbRIVqJpfAzYIjkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBvBuMKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBvBuMKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E7C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754187593;
	bh=ZF7iJR7AhhgtVJvdiiCYoasyxqKASKckT0RdZDdHhnk=;
	h=To:Subject:From:Date:From;
	b=fBvBuMKeZFLsXxnOFi+WYLBiURPlzdISAhfRZvZMpa02uqps0bW2hAlCekHhODIA8
	 TvgLDLd9slJitZboWXZd2jj+7HiD+h/zqqGeZoiyKZhnlsRsp+hFHCzhH4pHEDkwey
	 +1xv0jGcs5mGkfAITrL8skXpcbgyco97O0IqUAkJ3RuPBnhdUxGb0r2JkvRfo0Yvdm
	 ANDLig0WG0u11dGvplW35cC0Fs5txXuWR14VvJRQq4uO9jEdV9USe3y3gZe/1OADNR
	 f/XFUDe7F81xJ+bH80mYfHJBuSndk1Lk1zG/Tt0gDMpSzV/rdQlx6KkfFSefJRF3iL
	 j6AlA0n/PU56Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CDC87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418759357.27428.16167740619347272571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ec53e27f856ddef1c009cb8e7051818e35f578438a67a6b4dbef6554470a4a
Date: Sun, 03 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754187593
