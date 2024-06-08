Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757BD25761
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717838843; cv=none; b=A4THkH+oX4CThmKQPT3Uq3NQ6iGsyawhRIqLcdLop+4bZHkCRVpWG6YldkYmaym4Dg0aY0+S8ujKIRwAWhrXC/rc3juJxwfx0YIwbloyY8GndC2z1cdwJlVMO6w+oFruztv5IQzBsTk7iasmI2ujoJQdAwM52WwEO0SsOa734Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717838843; c=relaxed/simple;
	bh=UHMGvTEK6BTDEgjzDmM/ZfF7UJHPs3bBmNZS+zihsl0=;
	h=To:Subject:From:Message-Id:Date; b=N1T5cVW/u6m0S5UMJDAOmAsRtHCRIqa/VbbCynoin21FMwUT1kgVQyiaI7wyvQkxqtGO8e/zPrrhWnpUk2rbByFcChGjqkS7a6mFq2VGDXj+3YYURT7oOE+jBEhogeAdBnlx+qb4wOwjkGwqsmkjcDGSR+FDwvpsUQNQlibnYto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nk37Xxp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk37Xxp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0554FC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717838843;
	bh=UHMGvTEK6BTDEgjzDmM/ZfF7UJHPs3bBmNZS+zihsl0=;
	h=To:Subject:From:Date:From;
	b=nk37Xxp36EKCEmbCK3ayE+UjwbN7rIaoinXD0WR7XF7mTicAogWVzJz75gj6X40Gf
	 j4I5hIgL40eU2mSfPkwIIlAwVi3w82J+et74I0KF2nBfQ1d/TVT7roR/K0hBR9KnrK
	 9q3XcmhyrFr0XQ/sBrlmI6BORihye55hITh6pWqpxPSY68dBWN+rz0reit39bz1Rt2
	 ox4lantRULUpe6v1tGt1jIOqRw+RZ22FoeTrZQuFnGps9piKW2G+UGJ+YuoHyKQ1LR
	 xJK6tqsAS+SsvpDGkmTuJZL9rDEtKkHQm8Xy4HF6uU8mHL/RhlORPGD9i/CWDHyzq0
	 4Yx608/8iqNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD115C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783884283.2773.1280925882060086632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c01c3291d6a25a34d8cb41f1ef1897643ac3d038451b8f7554441d1580ed2c
Date: Sat, 08 Jun 2024 09:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717838842
