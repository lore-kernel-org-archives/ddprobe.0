Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40552D46C5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753102193; cv=none; b=qxseepmIKh0ga6utXzWiLSOBQTfpbM5Qh4zEHaNBYDgXZxVg9IC6tPi/D0+Y1qSfFZL5kgi9wGB0bJ7nDwOqxk54ZPSCS+IQ6jdQv5WGn7ygsCYzG8OJl4gG2fZBdL2y+5qyTf+wu6DhqhRbsnBs9+lWS1MWY9q52rL2Ech3GUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753102193; c=relaxed/simple;
	bh=cGLgZKq2JfGIJo0NpURsqBHflKrdqVBLbTS6d/xe0uY=;
	h=To:Subject:From:Message-Id:Date; b=iBLB175cXg5fZZ40RwuDTDD67iK3PAR+ql1ZQgusZtjO/RbU+UAfoAWSIATLxyg2fgnXjbR9lnI49nOI3sZFjfvgEuFLVx5hzPtrNS2YlWpWXXD1SqDvuQfcnDh7aSWYdy/FW36ZKSLb5bQMx7VAb7sHPpO0lnOXRXPLH+XdgVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QltKZmqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QltKZmqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F255C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753102193;
	bh=cGLgZKq2JfGIJo0NpURsqBHflKrdqVBLbTS6d/xe0uY=;
	h=To:Subject:From:Date:From;
	b=QltKZmqP/fwt/f4T6vYsUL8g31ksY7UAOLH4xKnnQPrNcf6U0SvAVjqDofSnlRriG
	 D+KiriQR695ZDEHWKJ9Bfna1qImolnexqPjpMfBrsCpgySiMHEl2a0AiOcjwy/SXqE
	 z4FBAEOB2C1I9IoU08ZprFxTYH3PfKu6lq7d53rEUyrW04yVxCLezT0MfB3pTWnNky
	 QgRyONRUgqqtfMynFlrzNwO/7b/i/pgI9F0lqOrDkkF3ZC6p6kmOG5/LjKohRX57Zl
	 qVnoMyaOz2aER0iam339pLekA0QWE8+n3SYeDLGFCGQnAKKaHn0HEFPXJYoo/ZUMle
	 Pc97QqBZAqjcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E9C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310219358.26203.14155333981972416097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73a93d28b085d42147ea95e8c9e8ea302bf7dae0a12a0a771da7986cfea6d17
Date: Mon, 21 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753102193
