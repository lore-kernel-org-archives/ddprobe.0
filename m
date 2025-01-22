Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4715C1B6CE0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737527754; cv=none; b=D6GSFDFJBIDt2PqqxHDs4c/fwXPFMX1sNS5Zb+M1iS0MtfHCvb61TWyW5ItN5ADH19B1zN27BXEphREQ+XE0H1aXVqcKT25TIRLF/Kz3CMRaCLAg097P7uXBTuFVR4sEiXqpfN67K3fJiaYfl6BSwQNikftcBU+gHpM6WckTOvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737527754; c=relaxed/simple;
	bh=ZoNfI3nJQcFFDOxt7Sb89tnP1Tg6p9SxyPJOQJGYNFc=;
	h=To:Subject:From:Message-Id:Date; b=A1EWp+1Yoaz0qOHVMiazKKgvvSgmzef7tevUHNINI9uddJ5Z9NZx2WBxEA43i/CWD+yNDkGzzqD7ybTgjpvC1RXqiIHUVXnfumLlsNr3TH9f6ysgNHP+jWYBhJmj3c1xEwqUsv7V+9h5gXecCtnVjoScJyJ2CcW/UQ5qgFx5yN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RO8sZFUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RO8sZFUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C856C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737527753;
	bh=ZoNfI3nJQcFFDOxt7Sb89tnP1Tg6p9SxyPJOQJGYNFc=;
	h=To:Subject:From:Date:From;
	b=RO8sZFUzQvXNd7qppAh+vkqaDNuk94tryQVFVCkeNJGgKhcT9UJxgpCR+ZY3MwUc5
	 T42iUjvG4t2AGxPxNH9dJy8S3VAg6yd+7iuwPsak42JWXagZG0dbZM8nGwObLWIYka
	 MX3xakbBxtqYdoOvLpZrgGRiFNYK/C8yMx/BCTd+TRdQ9kbZ5PKLRgEa9D/dw3fG6g
	 16rei6DCRUfevHDZYt/jPwaGgQtpybSX0DxN6iWR3LO6DBtrm0WZmFaVaIfcHhRwv+
	 v2T9UZzURwNa9EAvNWpkiNLlgvXu/CruHSMNLFHsO1QsbvuuaHxe/fnTWGhIUhgkiO
	 uSHIcFU4Y61mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90663C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173752775358.2732.3958860034962527048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45bf0a2d38d5ba45a897c062d18296c5ae69f7ddbb5903efe97df4403815a38
Date: Wed, 22 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737527753
