Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B93D84A22
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725473754; cv=none; b=czOMMbj/oKTzl6pe9qBfvBOXP8LzKdgOGZxpovOtaYt5V8mK6XaV1hIbc7QcWzVCq+j3LlrgbQBgCK8wwn8S4lGWxSm7CKdeiUwyniFt33Zx5qmw9oZbgY8NOxsMVgf92mAkajU3qbrfY3UnfLrXGjL+U98YWkdknty8R4aye9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725473754; c=relaxed/simple;
	bh=JI7bJdmMxpXyOyxXwiid8fV2d+xX+XVrVvhIJ5qyjFQ=;
	h=To:Subject:From:Message-Id:Date; b=V//B+juypoH18vKdzVl1LPgb6aXJJY4O3aw9GS81C6QB1FJyx4yv917eaoritHaYToTz1xGNpk2I9vwvw4QHUFVnxWaHVCpSKX9qWAqbmy/pjMcqnjXe2P52s/4qss1S7nbg/dtcypRNuOY7CysEVSHKAnqq9FieBBE6IpOxqNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuGQMAJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuGQMAJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACD7C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725473753;
	bh=JI7bJdmMxpXyOyxXwiid8fV2d+xX+XVrVvhIJ5qyjFQ=;
	h=To:Subject:From:Date:From;
	b=QuGQMAJZnkBeLOZbo/e0Ts3/NkL7jIBWhQ4YeLVzH3y/ZaiY/dQHza6W55UgO3Mcz
	 TxKI1pQUcX0Vsz7SMKMbL2LxF93EUJmxcVsluvqROcNbtTC9CBm98MiWFFmdvMgIN8
	 XrRWVFlYqbnwvPRY3vaJYtz2vzSfXar18x7yy7DingYSsckLbHAC4B9jMbmHF8cLrP
	 Gnc9R4m5WDgnODAejA4LDa+l6i3N6KgpOHI6FMtX3ttZp+t6XkuU5Do1Rk/sEvVL3h
	 TdfcRTJKnSAkSiwaT1KGE7db6KoAfPOcMlr23e+80d7Dipt4DbMY3YvdQn28y3o0Ok
	 9bT6cmsvFWyng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95004CD4847
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172547375359.27859.9468472849849475471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dcc27fc14a6a0c429754023c7657da8edffc865dcdcc67246197fe4038ef1e0
Date: Wed, 04 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725473753
