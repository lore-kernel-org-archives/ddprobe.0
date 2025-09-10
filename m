Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2537E31196C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757507995; cv=none; b=tw8WGY6GUULaJ6UbuC495tLL+u38wR87Mu+iv3ddnSzwgz5KbVZ7A0S95hzvI+7ihMQ6bW54vhdXyLC+UL/zpK/ZzwPOkKq8sHwTQpndr+zuJxy9Oz7Dr8OBgrns20Y54GUNILD9MbQyZE3zdHniv2qREw9bCojdqZqC5javGnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757507995; c=relaxed/simple;
	bh=kvHzCqtXMSu0Skxp+0H8/o/I8kbTnkmAhC3E4JX/bEo=;
	h=To:Subject:From:Message-Id:Date; b=izd/3/f+JFsv+ZLafw8jI96GnpsHgdbC+LLx4eXOBrklD/kibNtyy3gRCUboqX6poIagum1ajvp/Ha4p8zRbF7KHKroYkT8bri4oQwcIRY3NCYoAVIpB4w9AMTDm1Xrhq9Veogux/tvS4UMZwt9LSB0Evg3CG0/4AbnaFNgYugw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/T5Tp7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/T5Tp7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3170C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757507993;
	bh=kvHzCqtXMSu0Skxp+0H8/o/I8kbTnkmAhC3E4JX/bEo=;
	h=To:Subject:From:Date:From;
	b=m/T5Tp7kyJUS8ldcSNzsaf8vu637ITlH79A9JGc+NZaeaQIV3YIxGEhUR0zWulhRf
	 A0Mte+Z7WQ8cR+III6axlfjvCw8+5JHMVtwG/hR8+miJZbQt4Hn/eU3wcWA8DoQ1sE
	 Ur15L+JbC/Rgk2KabC3ibqZTqKUbc5PU27p9KOTNmEFYriqUFgtYUGKcL1Q26uTjvM
	 qkcU9Bk5WWk+IwhFD4U6OgR1qmtQLrFAsQ2vvDP9LxOG1fT3OhZp1+6iJYebFsdc0P
	 nbs6sozI3jL2SoFDINHCuHUz/6zfpvLUjtFRJ+cLmBmHImW5lNmZgnGvc+KG7ro+Tu
	 Bvk7XXbe9m0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32ACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750799357.21461.3306730545762136141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db081a2008a1fc5a9977aa023b1edfd4aa420226716f13de6f5edf266539bbb0
Date: Wed, 10 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757507993
