Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271BB4A01
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758436194; cv=none; b=Mzhs7XAhBHEjUenP5UgHGLCfYpIxalMSXmWQerfVadGyYrfUo0i6DQ7iP6/hjvPRERiq3og2dJP7lKh3sakntHe4/tKpu5AO8ZZaBeUJKQNO2pRS9N7alwSK9RK0veE+C2md0mEyA5ygJJ0gbx6TGvWHZLwRcMCUIC3HByc4GyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758436194; c=relaxed/simple;
	bh=9uScT349qpbq0/nGiF0popPCQje7RqewmCgIHnZcrX8=;
	h=To:Subject:From:Message-Id:Date; b=h6HN7FP5f/TYxcdRFx5nmEg3zkXm7FrvktO0lsufVNnWdaIy//dPvFbaVsaHoMvQygQPrAK3P7PufTt7EeUdmojFR5ddmTiZHJgVo/S0vRmLH8ifBxHGQbgLSI2os159rl0hgPGwf2aAggcINcm4OJNLP1Gq5vooV96lXpNLqFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkWe87h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkWe87h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FD9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758436193;
	bh=9uScT349qpbq0/nGiF0popPCQje7RqewmCgIHnZcrX8=;
	h=To:Subject:From:Date:From;
	b=QkWe87h4tW1UmjNWzmD0fYGmwNcIYj1QPzSk/+eLRtTmSuxpXccdtqlNbiH2xL98R
	 SUtD5yIM1PAteTFcwEwnQ0WoZFFkwpLrXukmM1rMB0MR+UaODIcXYv5qYMS7jUgudU
	 yYbb1JEPvlWhkjzqqXTjQDrJ72Cx38Bjm15gqj9X8ee4/FnaBrLALm5hZiUUr4SV/5
	 B+3mcAm772hXlg3Gzhye+wNKCG5VCWrC5LYJa0KDeIAhMckgGwqy2pA/xYHgROZU3P
	 BK3umOE717UwuxDwc72AO+gfQ1pcTNPR0az4mOCtiD11y/kre3MhfLE1HZJqjUjJLW
	 T/fZH52lCijhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C7CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843619358.13379.678692996619190551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f415b7bdbc617c5e6a0adf387088136d24c961133ec9dce6769cfb6b0849772
Date: Sun, 21 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758436193
