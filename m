Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE2C446073
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788769834; cv=none; b=bQT341U9yMPR4PC1EUAgtcttlxJLnUfMU0iKEaCZdGaq0fcwCSYMCjq7OK4vylIaD4gxBkiXqE+P16Tn9yE8aV24D9Ja6k4Z50DabgQNW8advUJygNjOH3xF4K5nt7jwF+CJqKZeoJCV/EVg5XtPlX5KF79NNP6AJLz+YsecS2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788769834; c=relaxed/simple;
	bh=+afn7SSVAOnko9MhG8YM7QDBpXqFFAwqTVCXKZqRV5o=;
	h=To:Subject:From:Message-Id:Date; b=E4B1mm9tGr1BQoaszHVDpj69I7fZ24m2R2fLoWR0BNqle2HS0OmDGZGF7jr/fjHGFLLL0ySS+CJMN06WSXPRqxzIwqX2SRifAGlLO4IKlTHUVo2/Cqg283HqZlz/q6Yq5UbRoxc8YfLl6QsKYXfpVSeXpEhQ2q5jA+1uRhvdso4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAalI0V5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAalI0V5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F2EC2BCFD
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788769833;
	bh=+afn7SSVAOnko9MhG8YM7QDBpXqFFAwqTVCXKZqRV5o=;
	h=To:Subject:From:Date:From;
	b=qAalI0V5AzXj8n+Sf5Is6OGD0MNHBj4x2OkiF1pmKgCL9FHSrruZ/C3D6lLJSHoZN
	 Q4o508iJ/hEJdwvHsXuYAP0pv5euvNzPWmqzTTTZknJmq91YlDguTYDTIUt6Sy5uu3
	 ZM9a+MWq0PGVk0i2PyEqgL91n6sH+C+8eDTdj7BFD/e+7YHnHt0mQj0XP0S7/t9tdc
	 2LrlHnHbKB6Gu/j1PkyJyxvut8jGOW3oenspj7Qma0m+UTI8LYc/9hCWNtJs4w/bkj
	 FojWhFl6jN9zzwHO9Y+5FS5nKCbkULs1M7SfEV/+D0jIyuoVZxW9xyg7tOwyF6t8zR
	 Z6yJjGlpXBSCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F0BC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876983371.17048.7653612737005267279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a60703d3aa1d8e69f18d4b5ff6df57e92837083932206bf5a50654605da1d1
Date: Mon, 07 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788769833
