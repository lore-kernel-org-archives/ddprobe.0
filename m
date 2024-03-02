Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BCA11712
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709370497; cv=none; b=Vex+IGFs88Daeq/lF0QV6FMDPTGwr8s9HDqOBpTG7lndxnHmGn2904B/udsqB0NdYncZlbUYwHPbTtNzVqY0NhRVfuYdNTMRh0blqG9yJzkHbsWIUsUl8pxhfY4iAZqmA0UFMwhN9g9Qk7NB68Un4hgmdP8H8hbrcqSDN3/AijE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709370497; c=relaxed/simple;
	bh=KIsxbJNTJlfLJVA7PtYnlldP9hMy0Q8vFTgIvhdLsm8=;
	h=To:Subject:From:Message-Id:Date; b=XLwOhpcsRWoWklm8ONYhS5HBX33Cew9leDEFxqEdwaeQPTEl22Od9K8MTWvEA0oxOMSHlNLf5xoZOwi5IEIqddInBSjtWPCvhlTS4jDGESrLeLj84d1VmyEgYCzd7fw56mBNXZmBqwAHyMKKlf7LSMgkP9dxG9S6zHGtWpIDoXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1hUyzQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1hUyzQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AF9C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709370496;
	bh=KIsxbJNTJlfLJVA7PtYnlldP9hMy0Q8vFTgIvhdLsm8=;
	h=To:Subject:From:Date:From;
	b=L1hUyzQXU3+BztYaOLKAvhMIH4NaQJDeMXAtrrokDSN8VdqyjOlL4KjOwABLhnhY5
	 kfGJ/Px0Kigd6lafpvio4ntKL9PZoPBPyEffKbt3maqht5yi6jRVVo6KoribQ8Mecj
	 vkInU/7Yc+/T0oKJuSp8I5rYNlC9ISSwz5nr7GtNOlZTeIAt4bQ6Df0h2QQ8By7i3u
	 wFN+8HyrIxf9W1KXEoxFd2nN2VA1NzEmY5Itl6SR37oXD3yNJhC521INYjZX9xhM2U
	 i5wSFUYsEL/ISUmFcVLFbKchfYoOHxqlXkjhNZFCTq7lyvyb5Kj/L2ofuuRe8t49FN
	 YdWJSwHRFVvvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D539C5478C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170937049637.30382.10922177618257958061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f09fcbfb488521ec8fa4e5d37131e28741a97f0323b7c8a620e3f82842c42f
Date: Sat, 02 Mar 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709370496
