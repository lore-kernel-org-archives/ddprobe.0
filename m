Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406896026A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722033354; cv=none; b=eUSvEfCxI7E/rhzLrRyNtTSPi97aCMRV3GQAbffeELS5YMhYQxemHz/pZibEvtZM6lqx0h42lC0E0rry6PG9R5RIjIyKdj45NJqN/QXbx1X2+ZyS/fgVxdcnfEpVCUKtTBKz/Z0+N8NtQPHWz96IMdd9AWMhoRjoHifL+eb7BXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722033354; c=relaxed/simple;
	bh=Pkc4gZAKnhFCQushUVbG0wPUHFYnOYUC0wiNGHMkNYw=;
	h=To:Subject:From:Message-Id:Date; b=JBEzC2qSPuUTXY2uAHvO9IL9ItwyoTF4aHdiozPwk8p7gZQvWAyxMKHBj728K+k1rYpo+Lw46bzT+F5p61XCQ2rD5ILKSn3maXAtrnlNipXmAaAuvdemlXD2eg+364e9H/uCr7ppjfn26IQ39RWr/ZbJI6urJHLxUCV6b2CLbWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epkCm2Gw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epkCm2Gw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1E5C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722033353;
	bh=Pkc4gZAKnhFCQushUVbG0wPUHFYnOYUC0wiNGHMkNYw=;
	h=To:Subject:From:Date:From;
	b=epkCm2GwfVSpUGUtuGA6vxZ2kIcycSjximS7QYshano99iLH6CnmwyIzX1oHe+BGr
	 3C9DgvNLmE3MsK88vHvjgl8uiYreLGdWP59lOP3ngPlOP51vyLvYc8+/tkxjqldoW1
	 OAbgG1mgM5keSadrDnz7S0o4AcDvdBNkz1Nqck5lTg1K/J8B98I0CKSugl+0fH0KoM
	 ciOdygu7YRqBluqOA7yRkQWBXTW0klpMYYdahogLcnQDFkJ4drf9V9tiY+PqbKgLn8
	 G0GQmNoB+Gmeg00ms8ZBJd+KXvvWOW79vD05cKGvuMffoC0iTxQTxL3LRw2ArGFNls
	 +4i+8D3QL9OgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9817CC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172203335358.29205.1049599214675765200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608acfe5a34e3c36066640ef7479bb55d71d8c9568f843c177e4360133c54422
Date: Fri, 26 Jul 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722033353
