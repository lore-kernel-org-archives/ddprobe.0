Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4DD3EB815
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791854434; cv=none; b=SU5EV6vy1Rc2WgaUauNyNd9rQEOk7SHrcJLxlZE157PLmC5dE5ir4+Bfe3NQlo1hSzGBR1mQYjVs1Y7QTUw4KTS4KkJt7aNZjtPzU3vWV5EvlvFgkuGCgkdVdH8tXWErDLDeFb7OgXyocG7i/S/4wcWAV5FhPlD9Xs02lrqOWlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791854434; c=relaxed/simple;
	bh=V+UZ7eqa+Si10vvKU5VZ6LQGfKIYsFfUV37mpaD0Fvo=;
	h=To:Subject:From:Message-Id:Date; b=H2IMDwxBI4tcw+7dp7iFb8tP/M/wd3q1QSlstOAYFWe+tj1X7QQbB7EAnMrLKs7hMZNMDdh3HzlmT/3SBAT9yZLNRSgX5j6l+87/JgRF5h/55WMgeD194RmyVdg75KDz0HTTdQoPRoeNnOqfgn1tpiO8tpYZ946plowcKBKvgmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqGvckfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqGvckfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15A9C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791854433;
	bh=V+UZ7eqa+Si10vvKU5VZ6LQGfKIYsFfUV37mpaD0Fvo=;
	h=To:Subject:From:Date:From;
	b=BqGvckfS47joXd3M6U+UwaAM3kCAz1l56I8SQ3hh8t02CuJc31feKDgIS35ovPQTt
	 RlZVL5lryF6mj27Ez7MlaZJS5diStX+R8W/HwZPlpDrPZChaWmawy0PaFRuooZfH5s
	 PGga/lPJ8LydufsBLYJmR7RN3q+YAgkr7xoz3a6Q/8DJoQ3dglH/75DmtvHkuSFt+V
	 dR9u1iBglunnNhN4Hoc9xqPUpcbc3R79bAhNsyL2u5HdmHYvciEa7drxmJMy7/0wBN
	 ZwbLnb7oa/FtR8YhR3jLEA0v3mWcstQUqYcuxlb7RKIxLkK+M/TC30y7CA05dWzaiz
	 xuX9VNQebpsIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5E3CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185443368.13697.6781039794286813373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c49df75aae2eeefb1dd365dfc93a88d83be3667757bacc0b3d2d8b00e745f7
Date: Tue, 13 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791854433
