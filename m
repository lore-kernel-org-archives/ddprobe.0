Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224F1217F56
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760212194; cv=none; b=d4itABJ8xiZK9XyjYFrhMWchq8N4GfspcW1KkRkJt4HbBwRgH8Qxry5aUHf5bw8EtWWV/GBOVGBxoaOOxWLMyFAqRZDHU+SUGhn3Ocqro9LX/Q4txN+6reulUaHbMMTgJYzFUemQc4djHLctEJXLe0bb3lmzTWsopXLif1AZ+xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760212194; c=relaxed/simple;
	bh=J+ajTcv7/yOLAfEcCe3VwmoqfPwCVVi3wOCIXRlgAF8=;
	h=To:Subject:From:Message-Id:Date; b=tPLUbxXwDHrauYwChNNSWK8YXt2NWk9oAsvWlQTwBIzZAJISU6P/aha92gOCFYht8velmJaqbasA0FHB2uwmSJzaFqYu9DnAhbSMUzDueoPmwQU02EQabWrdLNZmcCSMZKwoc050VcjJWKeM2zsBYNBjmOAY+YLv0KAzAan9LLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6RkE4gR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6RkE4gR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE6C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760212193;
	bh=J+ajTcv7/yOLAfEcCe3VwmoqfPwCVVi3wOCIXRlgAF8=;
	h=To:Subject:From:Date:From;
	b=p6RkE4gRupUv9zumfGZM4UrcZXJE+qqCUgT8xjxNlQSXqPAMYgccZs5ly+wxI7nvx
	 aArqFrueF7nCibR3CdPSszhvLLhHeoEWYBi8nkGkbBpp9WoPXaNDlOjDKmoIk4Y6eE
	 9/ySiK82AkxA6oGYU6KfL85z5AoZnFRifWVeCQ3Ln8QMKWuJ/Z4eJizx3tgS0Zx3MC
	 EAT9/Vp7Fc14ElhpfENxtIwyJDmvuxE0/R4IfkkMIKibhY/Lz/ZvZENBwi2gL+krNg
	 TPy6gATEJEQzoffPEMUHbxEEf403CQhc0pWW5Xqj4+vpY1yihdHgvthMgB9BBYhHgK
	 rvl4Gi5x57dmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042BCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021219358.6484.15445958333879935938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89730e654ff1dc707c311eab85f6a4cec44794dfba57151ed2793f17e400b16
Date: Sat, 11 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760212193
