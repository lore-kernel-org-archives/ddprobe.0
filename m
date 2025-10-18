Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9C73BB5A
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760778594; cv=none; b=XmQXzHKqdwr5oEwJVlvpQ8YjyiYsa8c38dYK1nLF+gfOh3fFVvMdRJvunr17nuQvkpfWc0XKBn10rfWcHm5wHTh5Yq5YJeja2IkBN6my6W66beXKg9z0604lYMLJMV80f22DfGj0S54AJ0OXm5BX5h2+QV7pWplaA9CHT1tBHqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760778594; c=relaxed/simple;
	bh=3vyOz1wP5J1CtEoSwS8IZLDNhOj+QAYDB2h1VXmddeA=;
	h=To:Subject:From:Message-Id:Date; b=hkSwMHd7z1tiALqP0D3vs0uuP52PGu1vyHaszBzUlLsGNtsrSYcgzCmqYwxfoI4WQxOeV24pbp5R9QU/DWA1B792j7dH/Y1ZwkGRth4HaPjxnP+YJ7JJXrzwyBHmNGE9RnxlnfG5CiHVqNJ98aVEyKa7Otfbwv0BV1dZI+LnIHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1DVuJf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1DVuJf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A11C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760778593;
	bh=3vyOz1wP5J1CtEoSwS8IZLDNhOj+QAYDB2h1VXmddeA=;
	h=To:Subject:From:Date:From;
	b=b1DVuJf+3eP/i3TcbjLb+uAvGQH3FCkQRo+iO3TjdQOaFZXa+GtuoK1sGI/+Za3Vy
	 7NGe3eggIvO664psYZen/TljDQmcc/4wiiw3VkLX+x05NWillTJzalTaWKsEeT3oIU
	 F8InnPeJnlpD1XXkP3lVcmG4hbaKCK4cFGrlwgn3HamnUF77OrSa1ikh2xQ9aqQMFG
	 UqSlEvBsTCOxrbKNOKQrTw1mKcHvHcOvLiM0gdqV+P9ABoTu3v4ZolOfxrc71RflNE
	 2tNE4bjrtWp/KtQ/X6i1qGvoWwQnELMzmL0HIOZKs0XS/m1eJRcIAduCi6DmNHlwas
	 DSYitZVbUvd+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95492CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077859358.22983.3657597893392092968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4db1ddb4df5663414c67a107e709b18eeb9c0d9a33f1db36e078741a29870d
Date: Sat, 18 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760778593
