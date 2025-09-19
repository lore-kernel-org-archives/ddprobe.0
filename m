Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94D1E5B7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758250194; cv=none; b=ll3uECtoVbDgN4Xs1yraZXuGL6RWlXSYGHZXfQkowyTWmvFcJAWlSfJcjeMFnXdtUA2ptZpL71PPl+p2+g2t9ZY1Iu8NUPkaEZJAyVp+56jYcvbgDeSodLWK8Jw1zdwUjan7E2vAuFhyHqIUJsUGzVTZjUdm3nZ0TKGdcXkwQio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758250194; c=relaxed/simple;
	bh=FgFGE+XOFadXXCGqFTJdiExwWNZ55VdGU7DcD7P7sL0=;
	h=To:Subject:From:Message-Id:Date; b=iNvgosDtb5EVBUi+rkOdzUE9ktD7qZUHpwRHFzJgr/5IWbosea4A7lFISRivutec73nPmmbyPlGw6z3zL89LTK7WaF2HUDrvdjWpk8dMA3KW9izyrbeAgDoqYX2fbWRrTKE/XDu0+WWt2uWvNSUhHaKhMTpNJnkiQdBHL4b9PIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTvehCSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTvehCSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758250193;
	bh=FgFGE+XOFadXXCGqFTJdiExwWNZ55VdGU7DcD7P7sL0=;
	h=To:Subject:From:Date:From;
	b=FTvehCSxZVUQE7fp6pOjMKlzuCBfh+aD5WTPSNLlcik+gwmjvwG5wHguqiXeGktb1
	 09YWzA0mf6o7Ms8itYorMHESTbL2HcuC9XnbORAAYMO+osdP1KSeH7ezDMIIhYb/P9
	 AxhQiycQc53rP70C59kAEGX2mxStkh7hum7NAZ/QUlrrQa15BcIuf0+tic6+RA0UsL
	 SDb1nkY3oN2yy9gwUc38f9o6gMNZrS04tCEWMdmBoNfGDZiiiWrAGg3XGOUiXZKFLt
	 qZzjcuend5JSe+6JFrzuL+6tAM8Ak3KgBmAhPuHrmKouB5c4u+tl+T2PgER2wY/fYq
	 r49P9kbfVH02w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F511CAC597
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825019357.16951.5849327169302045114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb84baf59e016ef6648e34f8e03d0b6a71bfefc1649022834b954a0d96a25be6
Date: Fri, 19 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758250193
