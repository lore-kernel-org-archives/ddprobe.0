Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054D1E522
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755320995; cv=none; b=RBQcbSTSUCWgUuKtxwVgLOOOFbEClCJiuF8wBCI6F6gBqWckhWa0kqHqzz7S7BuWf3twWudFiZthKdRnbn5zLU7Vi/Rf3vMJHuZGtKTYCtgZ3mc0UkIkvyZjU+zXM4RlraKvHSudJmvxPi9QUbpS/2qkzup45cDavLsMHeERdx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755320995; c=relaxed/simple;
	bh=ATgT2Q/NXb8RUIFS+iV+B8vBzRFFIo3Y44Ddv9rf2Lo=;
	h=To:Subject:From:Message-Id:Date; b=p6E6K3qu5h2C/VwuFnsKWIskbHYSCr8ayzZYXHPt8NzpjhqI82xvYHV3s6fP44n6+3zTxypuUecKHnviUUe9O6rjNrXOZWErxrnXjJocz3uODIuAfUnwjC2uCaf3NXDdHJW3pmhuRAUSSOf2O1GQUFdO2ufVGg8YJ1oWI9Mb7Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tao+/Re3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tao+/Re3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755320993;
	bh=ATgT2Q/NXb8RUIFS+iV+B8vBzRFFIo3Y44Ddv9rf2Lo=;
	h=To:Subject:From:Date:From;
	b=tao+/Re3MZRXHIXpGYtUVmCrBnPfvyQLb9Aqd39QpR6vHDu1ZAAcVUsftMPbGiNap
	 6IqY9dSrhtYNzlkgyjo8ryRFU1S7atv9tSEMI1eJJ+hy3qVZzZwpEAeytHrU8l4oXa
	 YxcivJMYoYP9PRCKAXHFcqw0YrWMCHq8YmNA9qBRVQ18o4ofcJoycq93D9JmW4SOnJ
	 ca3EH9wHuMcWH/2jzdHGcgBVC6tbMGoEiGVVKGjI8KRQQn5mhvKsG5SsXnVu48bWxG
	 SDqxUO9nMjSUD0K3guUdtuUGHUE4XDwVPO9rRvEY0rDr8Q1G80LGI4mRKu409jS26C
	 mhB5QHlDvwhhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94336C87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532099357.2417.16822814409830375330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c26f736dccd1d7f62156f4501f85846ccb88fa74c56ce5c96da8079e84afe4
Date: Sat, 16 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755320993
