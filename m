Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F092475E3
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773798294; cv=none; b=oEd51oK/CHwqjaogh2d6ys69WNbwlv+z5l5tY0BpWp+1se62qzQlttVN26x6nPD7tHwJXkC5Da8IGkMFq3LfgglKRXeFedUxXu8yayjn2U5jhdaZijRf8wXIzp/DryJgXkHu2N3bNWAxWvnPuIPSZD0qc0So0ASIJRqyeLpPYUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773798294; c=relaxed/simple;
	bh=P/XN0IvATcf1Z9i2v4StSVmdGUmgQoKu217dMMOivXU=;
	h=To:Subject:From:Message-Id:Date; b=RbhnaE3WdlKnFV/P6MAYuE7A4vhw3SelZ5w62KhNHYdXbMC3WpRg5TyPT2cHlcWzGmOcwm2DUHRq7ruAMYvRwdkQ2PqBPooFc4O5agiORvf2Z7c6lsae6OkNLiJutET67f5uthd+V6Qrgo+bM9iFZDQtkTa7t6+dnipH8Z9dSs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZrPRasJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZrPRasJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA931C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773798293;
	bh=P/XN0IvATcf1Z9i2v4StSVmdGUmgQoKu217dMMOivXU=;
	h=To:Subject:From:Date:From;
	b=GZrPRasJPGg9/sn2rESB/4tn8RBSE+Q13+fXxf+GK/Wf+z6R6BIJleF9c+b4LXFz8
	 qByHUAoPfrbu5Fy84cFKUhQeW+tytPNTMNt/FviF2xbMna0f7Wyy4FtMudRNDTAHo0
	 N8akq1lQTWymI1H9pGLlhrxeUzDrUg50ofypfV+0LazwnMHywstvx6jtQFZuApMSxI
	 FPi6eU8mEaHHef9jVlU94VUjdQYy+Lw9D3aPRTr7mq+/rHHfikdR83mgRRPc8MLO4+
	 WkFZPa4Prqd4PYC5Jg82pcI9Q9rbJs1dDXuxC8aQTAgoqBaPH8sEQmoslQvTi+FRk6
	 roRHlaAw/y0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9628DFEDA17
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379829358.19846.4849123173401856844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffec9291444fbb19020e89702ca1641ad120236ceb4703fefe992a2aee8f7a76
Date: Wed, 18 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773798293
