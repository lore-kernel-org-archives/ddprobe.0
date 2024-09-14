Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDB52CA9
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726283754; cv=none; b=PL9mbX0OHtqBW4+SP0t61SlONXzXGXYiZ+z2EAaQojTUEz0jbzkoVVIdOhJZywJ+V15UjUuubGetGc9xGnsMcW1M/Vbgd07bNeyS3mJwUN/tpGOk1un7AG/sbS1wUsnSka1R9eBfVV+MuCu0UbsjGrSEIBSsiv3rfhNLn7nVVgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726283754; c=relaxed/simple;
	bh=PWYN16oWGLnW/xzPcLXqrpb8xvADjASsGcgXDk7LbuY=;
	h=To:Subject:From:Message-Id:Date; b=IYd+QolgGbwUrwcj6iK7h7cfiljWIpYoKxeE+npLNhwx2pf6v/fUMFaLo/KF0fB2Y4FOzNbpeuYOp5v1hSUNZN+Y7HDYHwktSMz+sNEpcStgxOKeU0JdL51R9OleAz4ohzKAVN8NBOWlGaCnE+xeoCUQyYHjeO+7D4ic/yy7+o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tambgPp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tambgPp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DD0C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726283753;
	bh=PWYN16oWGLnW/xzPcLXqrpb8xvADjASsGcgXDk7LbuY=;
	h=To:Subject:From:Date:From;
	b=tambgPp5nt7URXySI/b9wzCWzsd9xNjuUn1R5hfvSJxeBM+2V+U0s9xFhKIMC6TfI
	 vBXdNKm2SYz1iosQdf8uZDv96oHa77CA8Ouf1kbWSbyjdrfTiRRlwArfexAHa7bSph
	 u20RrAHL8C/7jMuqzd8QuzOBrgd1Q1dZT+rZ9o8guOjA7ma3K1N7+2ONzOqyKoC1Qv
	 A+s22R5bZgyj98AbbqROM0qasHu8PQkPbnm5iV+l16XT+ruuD76s4c/AOyw+pRJs12
	 RdAqcpWi1dVC/PXvVVSyp6iIp1CPUpx5eX+EREETgk41BO0F+usI7T35p+g8W1Xh3d
	 9WLkHVB3ysF6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C25FC618D
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172628375365.26700.15193766403174752863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6faa7c3bc594ae49111be76cace23a148bbc36d60158756d3621e0c7b91990c5
Date: Sat, 14 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726283753
