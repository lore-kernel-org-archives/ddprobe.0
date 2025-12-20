Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166DF17B418
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766228034; cv=none; b=UijA0OhuKym9BQv3QqDx18UrpUhO6G+V/Qiq3DkVTfg5EM7DLUHHNzpEiQA63epCcHmrVCLXH1YC05xCKEi6LMCODrJlcCP9P6FTmgRbmYXH9cb+MIZMLxrXIgICRqP80zEt+ysxhYgPwp+0UPpacTOtRiwj3o+JW2px8PgszS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766228034; c=relaxed/simple;
	bh=MstYSE2qhwAMgCzA9q1yvh+XcoWYImMWU3/B8SswaiA=;
	h=To:Subject:From:Message-Id:Date; b=q2PmTdgnIScePRZysplu/2LXiVAL01dUGRMhQJG8Yy5o5LKJVtBZ1nqDQK38D6duJgK0dl0Lcd1Zpp1efHlvJznB5yyZLUqvntlkTsjX8SXccFQUO1hAp+Kr2D5CbYMq9lizHzYFaz21DwWO26huTU7l5jFoLAhso6Kg68MRkc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUl0lOWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUl0lOWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B7BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766228033;
	bh=MstYSE2qhwAMgCzA9q1yvh+XcoWYImMWU3/B8SswaiA=;
	h=To:Subject:From:Date:From;
	b=SUl0lOWLgvA5OuLyZXPGyZzMuijfcf5r/b33MGi0e4pN+YEs0pIeQ+WjIVt48q7iu
	 GzMgvd3PuEg3WSSqWUc7VDK1I8NnB1lcB7YM91Rg1KUEkGV08gj1R+8GkC7URfgFCA
	 HBaNqdb0U82JdkhQoG7vKTx4n5IJwC0SN3nhZo8ReGg6u5aU0dmIenSra+wsmButmS
	 Psv9fO+JISmPPb5vyTcpcXIlRvIJSgpCH5nUXAPeyK+tk9eM9hlXo+UTUu43FRt9et
	 dAK3IbDVo0TQejUQL/64fqBXHC9S4WiYltDuyFFS041Xhr4mEgjl/S0Ioi2z1cXiEh
	 IQmc+cq1J4v2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D9E668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622803357.12291.3143862698071691280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe419712651c23da6dfd2ab503f1571a2a956d8d0261821b8a6e2dae7f9a514b
Date: Sat, 20 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766228033
