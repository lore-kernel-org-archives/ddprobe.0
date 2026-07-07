Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F9127A462
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783392514; cv=none; b=Q5Wpd+Jh5DV2ohksZTwwgCVJNukZIVcyttwUkehNeujxKVv46Xd6OpkO0bb7kfF/l9ZZWdbIQ4CZR34I+CO0ycuFQdvJz31N8v69jXU5CxcTG5KccXqQ4m20+2ABjxuotne1CRdc0Ez2X4mTTiQXVQ0FsrZfRVO69Og5pdRIuzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783392514; c=relaxed/simple;
	bh=qeLoH4g9RHuXXf2thzh9VfcnRDHk0wMd8QZ7NONVlEs=;
	h=To:Subject:From:Message-Id:Date; b=qeQP6v3kqFfoRvLnaRxZJlYuAZxjb6yxsn9RKxOmnCl1mm8gPphx8hgRC0+YOj5wO6KFi9Dd7HrphO4cTN/kLSTB3JnhGlhsnXEDfgX2Ozrf+KKzJr+LXucYz2qa8ek3iDNQi3PdBfEpjqOXC7Ah0aKht0+zPMUZpuJ5oL43FUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYB6jFPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYB6jFPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0999C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783392513;
	bh=qeLoH4g9RHuXXf2thzh9VfcnRDHk0wMd8QZ7NONVlEs=;
	h=To:Subject:From:Date:From;
	b=dYB6jFPMS4xkQ8FHJ/4eXpXGcnBe0X2/iWN7G9jmh2gKCo+Ksfnp7v3wawwUSCI8W
	 +cU9MFH6NkZEt9r7h93FymUnv6Hy4UbgKRIxWowK/42rRve1aNbZNo7hDGABOlWGVW
	 QaYeWAUo3o6JOVvYUrpV0fD3Zi1d58x3/XzVxkvI/Zmyxt/Cg8XORNEi1crmoQENck
	 k3hOM36JL+fvyme4+7WrsX0GmgDH0Z1Pz4NZ74hJ+jJOkQOSBlDfi5iWQ7Y5Zo7Pp1
	 VXbMvUgrNeCepVctq7MN0DL5rLK+wI+pcYzBIIifIbtUyda0zH5C1EHkWponUD2CAk
	 ifJf08TOCkY1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A896DC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339251368.28366.15285902730881521745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f43dd60e614807c12f79c6f9c1dfb83a74b5ec71fe5ef3b0c618c931f783b39
Date: Tue, 07 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783392513
