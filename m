Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2670078F36
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752337194; cv=none; b=tw0t4zjLO1svzkZyhAFD11gUMLaQl31HFoqgQR+noI5uhsr3eS+pKzFvXaAtKbuxeUwn6veQ5GkvoNXBTIEg5WfG4F34duM/TkFvguXGA+4ZVQZsmwclsgoXTFO5O5zpV1+ruZ6RY0pG0LXFxL8SuxSzK6VaKMcdA7tdk5ZiXgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752337194; c=relaxed/simple;
	bh=QWYqOKlDdltAkG+3hsH4vzvQ/O3K8mfW2YUsCVBfMys=;
	h=To:Subject:From:Message-Id:Date; b=S5YA6mwkB8pmf0ll4cSv4OEtUgFT5oNRglWNGD7zPsEPNRPmpL2iWUhUkZoalCBTjaYOk7TPlUfUpoGVPoa7qWA5IT99FMkATiky+rdb2oLoGS7Am5rXe4zuHChCSBKcrbBtHEM+k9Do8rZkEbWsaJo367kdRnOpvUd+0mFfAhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/Br6OIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/Br6OIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A714EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752337193;
	bh=QWYqOKlDdltAkG+3hsH4vzvQ/O3K8mfW2YUsCVBfMys=;
	h=To:Subject:From:Date:From;
	b=J/Br6OIVfurXZytuwZP4IGLZ/eZm4RTITz6PRHG14cYPwwyxmGD4PKkzoA+1GAEJr
	 t3u1s7xwyJb1UM+L/tCjbpSLQRB7cmTG44IJX1g7Os2zLW3oqkgfRTJj0FROVBUAiI
	 Si0Q6iHpJN3+VaHyAkSGHn9okvka/sG9LG0L636xJ6mbkKmy7Pzupzyho96JnZv55K
	 z71nut9dNt3M8IjGv/JOLkD6YJZHBdIo1on27EDnjw7XBP9YW3LaYEKnqbNEbECkb6
	 QPgNGlVyFbEz83oxlBUigzAQtOxssGSujuMlY2ZVDOF7H9KFAKd91Ec8FviWBuTXTq
	 93Bi+w7PYLDQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9257EC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233719357.13412.6482315206906887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcda5baea28ac1f8be0e149792a1de4f388952251aa09b0d92346986e451a9c0
Date: Sat, 12 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752337193
