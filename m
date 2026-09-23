Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD37378D8B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790177434; cv=none; b=q9BXNzTNxEo3/VVvp73pSNFLoVjVdPKvqD7g4BKCm/pPXR15r+ckY3HmT8wlIaQkVdg0HknoUuBvKl0mOfb+Kx0T7g2V87PKNmwHgUQlEE9p1i8plDwkVcbrCMLJw9xw1paoKYrDtHydH9j7v1w/1zkawgBuM1OSWG0jDwWaLbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790177434; c=relaxed/simple;
	bh=CJg8roOARZR8FJ7E8doxmlfWmJBTfqYeDaEY70onNoE=;
	h=To:Subject:From:Message-Id:Date; b=Wp9fEvpj1cTRzTYneyLUHLnHp0FapMCchWHf8JabRvZ7+HeJk3OXbCX0W4QxXjZ1zj5Ku3Hg5WJs8S9LEzFR5Mn9habHiP1foJuW4qKcSG0WgysCYri7elxGiEnpB8ZZChfOKA5QhLy6L2th4BoCntcYrMAv+KJS0wZrpFvPwSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5eJWgyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5eJWgyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB964C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790177433;
	bh=CJg8roOARZR8FJ7E8doxmlfWmJBTfqYeDaEY70onNoE=;
	h=To:Subject:From:Date:From;
	b=Y5eJWgyCluAu9ZAgMsjOSS5dzSlgMnhISCda/K0EAVDPR0I1xeMceIKvBHjg0Y/v2
	 ckwtzL6jCDoqnYMZV844BF/m4KP2SYQb15Jnla16r1OhqgFsVWt1UbA+4kQZSlP9nx
	 vt2lU9WjCAvndidNREP2HZHrAb6FevVGOE8SttRk8LxokuTLWdPap3las8Y2ZayAZy
	 u90+PB4Ttm9TwlN9ZtYriskYL2GovyGVP5pKztCjOU9BNuo+a0FcfNAmXDDkYhxl8T
	 09D2clTLX3hNpjvfBAghEh7GuM4uLIEvBvoeEsFWMQIfSldQk2u85aaaatZSDudpFj
	 xNjd+rq2E3s4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DFAC9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017743374.4064.7394724813619209767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644161d2f910e1835a730d2e9afe21a8c6401a732346a0c6a344209961ff4b3d
Date: Wed, 23 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790177433
