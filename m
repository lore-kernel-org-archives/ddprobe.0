Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0312C33E367
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763033394; cv=none; b=hwB+lV/ZS9tiYxZkWRoJoOi2GD/TUvFxOLitvX6h9B5ZKJNLGLeoT+t9HWeXWQoFcjhl0JDniBYxhXEexxO5mEnzksfSIQ2NtSltqyNuDR7paImk2jmyk6noXP7bJ0D08Sc9Ux7n8WUd6K6XkU5FRsY4HdR9523hVgzs20JGfA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763033394; c=relaxed/simple;
	bh=RDnno0BkULmKLhPtxRpbbsIHxCsZ5YnniI10/MqJMV4=;
	h=To:Subject:From:Message-Id:Date; b=BhLOvmfeLIYNe+AZOzT1qUsDmk9AeXB7q2eJRuQBdLjVs0sBs7maDbcN0k0oU5LF25N9S7Cv6nCXdywZIvgzxAQ7MNuU/mzrVXO4nBnXboc3MHpeixiQ6ivI9EsSsfi3KJay/CJHH8zFxRg7t4grwbEja8nb/P/06lupit5BUTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0KDvb7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0KDvb7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD65C19424
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763033393;
	bh=RDnno0BkULmKLhPtxRpbbsIHxCsZ5YnniI10/MqJMV4=;
	h=To:Subject:From:Date:From;
	b=e0KDvb7OYz5d4NpqgWl34B583wTO3rPEwaDdRm6foPg4yROZZXqwT/Xlvjt0qFieb
	 H3A3nK3tKO8RAB1kgKE6GB1frByUThO/8dqOjXahHk7Uuo8EJJqjp4ywi/3L8ltzDI
	 xqosKiPDPu7sdZY7xOdpKTICdtRIJZ07QMY/4nzqTVkWia4quYuPifyxFzskLpgm9V
	 Lk9JoDwpGNOEY35dkDWdSw401w+rr+b+L4ZVdE+IrAwmxmuI4fEwY0UI8LQ0yxMpGT
	 0tMBZTHqYoGlTDdv3yaU3GLLqsefMfvfZxU21KNyZ1m8+W5wxlZj/kEKRwW02vcoPU
	 qODDf9qPw3Jeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021ECD5BCB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303339358.31312.4141995153910879915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cce21a700927f0b00ef4e3d34857ce80a98c55134df6834c903f8d6bd723e1
Date: Thu, 13 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763033393
