Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3672D2263A
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727633754; cv=none; b=r7agNhnlzCWEWV6nvfv6Nz3duDX2GtwsRKrefjUPIS1WZk2UBynLk/mUTlr5svPO7Qoknc8pjpJPV+5pkcMGQeFyE5mldH1XPIDyfqWnWjspnKGypuxxUoMmCm5Q9vtxn6wuRMV/uc0FfC68Pzipu3MpCEUGDn2j25YM4bokxQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727633754; c=relaxed/simple;
	bh=CJdwPzvp0Rfn55ZBj4EawWGbytXzts49QtPXOyCnPzw=;
	h=To:Subject:From:Message-Id:Date; b=E6DQVYegZEwyrCRKmdJ9Amw6ifXnKFQfE5WYyQ0Vpz1tf2IiNLmGBhBohGFUEjRbA3/ba8XM2/tnF6zvs6oXDwzkOqb6jBoTuIN2Srvw1dYJ1HPJut4wgl8twA4DpZRhidQ22iw7u6JV+qKOdWs2i2l8qB/FmTN4HqvSEfL9qFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZGfS1Yd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZGfS1Yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AE6C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727633753;
	bh=CJdwPzvp0Rfn55ZBj4EawWGbytXzts49QtPXOyCnPzw=;
	h=To:Subject:From:Date:From;
	b=TZGfS1Yd52KonXrutLsUOg2F0s9iSj0n4xTQYUJzT9hhr/L2AI0HNuSEw9wni5MoM
	 x64FZQXS/wetlYHOrxQZgl5kU2zroRNk+9L6F++nZVJbn52wd/XhzYV3QQdxO7jV3J
	 avlvzkzlcVgGl5P0o+4ULE7Rvzm5BBC+knnnhY2s+VpwWKjuXirchj39NYRpljYFyO
	 ifpaQT8dvSiZF3QCkH2QaQANGKF5ZcQgWBbsSW2/pE1wZM9wthe64kwLUM6nm2awng
	 zAsiO/5HsGd9n0/w+BKNOMnhYvEQaSHTeRzoVLnqkrh13cNhdVMnvB5kebmhU94ACl
	 XoIRydkvxRKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97607CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763375360.26293.4346061882275413589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc042a730c74c33974dc18297a19c1bf930401e864a0ee6931d85933d45ed2d
Date: Sun, 29 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727633753
