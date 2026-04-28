Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD2E1A683B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777335454; cv=none; b=qgUfzsluq32XYY/wHpMa5OGjtQoy62bRHucisDxHf/be9BOAB5FQKMis47Tf5Uzd6vH5pOn7h60nCkroE7IX0YKkOwvFihVkXqudAp+ytzfKdAR0eWY2QMBe5J/mcPnTLE7c7a6QJ2/bG3hENmomTiMVj93Dl+GKzv40by9nHng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777335454; c=relaxed/simple;
	bh=4W5pmw3fzwehFg9JLBQO1YtEz+rp6AkLzNT9OGblPAU=;
	h=To:Subject:From:Message-Id:Date; b=e11UqAbaKzCh2zyUZhgr8ltgN4bSUeN57xDv2/TsSDjAMAIyfjWDophO8jCJSq0fhEk9Mjhk3NQ8yP402jSntC5SPBHJ1e/hgeUCeGawRd3OFpOzFkEelHGu/zo2uV46hbeP/NPtJT+GBXbnryKb5ou8GSM+4MPhPk1EFNGNskU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5Olh3G8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5Olh3G8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B899AC19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777335453;
	bh=4W5pmw3fzwehFg9JLBQO1YtEz+rp6AkLzNT9OGblPAU=;
	h=To:Subject:From:Date:From;
	b=Z5Olh3G84jg0liYLGw7P+Sq8Cab4Jq0I2ixSalQg/8XnBreqPPrYT7yk3L9FqKlOn
	 vPFmlkRTqs/bjeAu0mMOSZFzVcscPpkPYQmt5itYxJvsHSQq0Hc7f4uGa+/tFViZFY
	 fw7esJjAMmbrMRQDZiHDPioa09pqe94Zd/F2uJI2zxfq+pp9L4NY9oymP8KQ+ilWKF
	 B2/ZEuKDheoJ+Xyl+Ud1XruGuoS49RxkwcKH1vOAI5NpN593yx8pVA9u9mLz3wp1aG
	 saCO60mw/eTgfdGu9Sztds5Vde9gFrI8bS//4jwTAj8SqfnGtCHrAJYmcqYms7ErfP
	 azOd1pPrcJX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9482FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733545368.18024.8251854301831748308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320c8b6a6bd217d28df84b7738dac60d1fddeef6c92cf70a48117ac23bf6febb
Date: Tue, 28 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777335453
