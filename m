Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9D81C2437
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747104593; cv=none; b=pKr0SOM981atp55EeHnJUWZUr4o2hBm59+Ni5ZG58cSc58OHYvG8vU/ShD547hhmhCyB3uV+LenvKRLJXKD/ztGl5ssVRRyZotOvEbasNBnrXdI4f6f+Xclkf0EOi9uT+06H+MhIT7P8bjzw8NbUqgrq7M9hEoJWfvhm2hCYG8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747104593; c=relaxed/simple;
	bh=G7Gbpc/SEKUYHVt08JkHIabPJimyytqrdNQaz6YuaUM=;
	h=To:Subject:From:Message-Id:Date; b=odTVBjLbfbN+r+R4EVK1vjid8hvuCstiL1+Pre7tUR9eM9f1DgTJQwdkqJHYIxhwa7xY6S2lu23L6jAkLcaL+4w/Fzj7YnVV5UA7bnDXRzFyVoAb0RT6s2GDC5q2snTDGKPA7eujkQcOVq1obUzEtPYti7+CR0FZJLq2sqaSwrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/ZktJvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/ZktJvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C0C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747104593;
	bh=G7Gbpc/SEKUYHVt08JkHIabPJimyytqrdNQaz6YuaUM=;
	h=To:Subject:From:Date:From;
	b=T/ZktJvrR102OjcoptfU3vaIJmHd6CdXxjOL3VqTO0/JHV9rsSc6sDiEBz7+hTbCS
	 /EtcU5vzI9D6Plu53E84kx0gRgJKg2mhAR0BwARKNQVMYf02NHGbMav7oJxr3tHoii
	 X/vXAXhzzzEOw7Hx88W/KXxH3Ivgiu0Bt24Le4tJ/TD4LzZY6c58Bu7XZTAJ0PgW4/
	 T5ZXYpf1j27fY2rgxO0K+7UHyJQBvgdHxxcIjFt4vjtl5hErZJ3WuhdCIcPT79JfLp
	 MJ0lpZbjdidcXO8FGAU8oHlGYWGGMkiX1TkZifhaV+h0Q6ZRReZ7M9aHSRH6weKxno
	 e5OdarAwJYWSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94681C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710459360.541.13554285267320302624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c243be998ba2b3708e6683ddbc2a96788ce97c37f846357b3067e6d8f5c7736
Date: Tue, 13 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747104593
