Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC163C1087
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787458834; cv=none; b=CSFdHpBQKdxkhI7D7u2Hjd0h8feJf1BGED/NZGePzNJilS441iuhPBi54S3iTJxo3oYcubR8pruDGM2+njSDUi6GYlq8Wm9pQxAbkBtX6WOay56qsz7j2Dpm2slwX0hdS3mZS5dgaPHtVcwchBtsenYKNAkmETvkB4ED9ydYPXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787458834; c=relaxed/simple;
	bh=tDD4mbSrrkVdwwB502RuX+EaEXs0/J9eNXuFchIY9/w=;
	h=To:Subject:From:Message-Id:Date; b=aDix8CHwMQ8JDRoGaoalGsY8ccYd/Z3bqqgHp6dqqiXqh8bBEfv5AJO3IbrpR+wx6JHFJEPKEq0b/O4BuZ7qFya2NR9Ei/QYldEyAZJc7kOEL/5oCz8mPVS3b+f3DZROq3EQEDyZLSN/tKTfJE7yLahG1Cc3u8zn/xLpxYX4rws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q608wmEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q608wmEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECF75C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787458834;
	bh=tDD4mbSrrkVdwwB502RuX+EaEXs0/J9eNXuFchIY9/w=;
	h=To:Subject:From:Date:From;
	b=q608wmEzBzW/Gt92wsJIHyawx91XqpX75ZU5/fDDO7ebh767Pp1e6oegUrNZeMWYC
	 Oi8M54tFWDbBnRjtYbFaBLWZG/bj/0qC4nKy3L/2rS6Pugwh87lfz37E3H21cgSs4b
	 OWdFtexQeuDuMnHeBkdF4N6C9DDOkI05r3zr+TOGr0ppwYpDC25PSpW55GJRKEc0al
	 zO3uGU2o7Mq4WcY9VHJYnEB2v/laX2e0VT6mi3bfOwIbJLmKNv2tWaS3sGGjV46q6Y
	 Ybxd8pSMEFy70jrDt4phabKmQDRJO+XE4CU5XxUByP1hu1nSmHlGZx6UCysUuQqBSo
	 owdiY3fmM+4Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6B2C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745883373.22450.16272537533411093293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989462227d63fbc3f79bb6fe9c3bf72bf69fcb1e34a4b03e75aec885e616f980
Date: Sun, 23 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787458833
