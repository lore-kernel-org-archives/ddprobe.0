Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8313FE655
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777539454; cv=none; b=lyBer6LD2X6RB0exGwuZGnx+3NDtSnI84DnyPBS8n1sOceS9hRq3mefaDR1r555xBIwEA2NLIlirpY/P28F/x/uG+d7rYiQnIqpponYTg3pLjn/OlO2dGbH1AidBD8oHckoBLICsLvHMXrYtK210LON7ah3TvRyd6PyhcHzO+ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777539454; c=relaxed/simple;
	bh=YOfHaQ6KtIaenlOPRSZcTciO7d9j3dgLMo0VrWzWemU=;
	h=To:Subject:From:Message-Id:Date; b=EYNyRw9QVd06TQb3rcIBN4CTMZumEZGKndZI/MixCvWj+yF0Q28J7lrWNmijDStvfgt/KhHMHVBw8G2q00r0ZCOpTUXwYpQAzF4pLZmF+RIB8Oc/J1sgWe4nXJM3bT5SnRalq6qZj7ieGS+YXlDgY/5vM1rFo8Q1TBM6xaaFAUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNkrwW8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNkrwW8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78FEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777539453;
	bh=YOfHaQ6KtIaenlOPRSZcTciO7d9j3dgLMo0VrWzWemU=;
	h=To:Subject:From:Date:From;
	b=cNkrwW8hdLTTH2j0K7bL3erCwlgANxnkxwMRbfvc8QQZLZgoj0DmoStZlYPbfnEEW
	 nyBkpg4FLVPL7zJ/j5oNtLQyNL5fgeo+l6C9VrztICJslRtIaSIrBOlGl66VFGVhsP
	 prhuU+5qq9ypZr4EKkStvI7w9+UhKsagNKm01pXUIX7Rx9/6v9PE2X+M/43KrYeh7i
	 vRXSO3DFnkYijQXX5UbybzYcaB85aP2YLUoi6HDOxZgqfGVucdTmvAaVhhE8uwPQp2
	 pIn56pihT0fvzhz6l2ece0fQ418BncjjmhhqbQdzfb3RINkWhskJPuyzdUiKaVBbyN
	 csPLtfHgwd9tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDBFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753945368.25851.9018061421714555213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4c21abcaad6a92f4c8f030d44655f665aa7b51c6d595a2e4dc39c608921c87
Date: Thu, 30 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777539453
