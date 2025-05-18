Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297CB2746C
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747584594; cv=none; b=GcznEFEPy8qiC/a62ITGcGDiT5oNtS01TuWijfj/e/W24w9vqK8hiSTdNJIwT9r+on5qnm9naGxiJaC+/37194n1G87e24qcteQbGiDEIlcEnLkB7inJwj8U8VSTps9v+I57gosIW9StbrC8BOsI6ibmXlc/slGSHZrPBJLIZHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747584594; c=relaxed/simple;
	bh=TiPiBrmU+N9vzqiM+yxCVytivsrfUEj19MSKNufazhk=;
	h=To:Subject:From:Message-Id:Date; b=BQr62Ef4F8QXLCS4tHZH6WftUcy3KLXZ8BMVkcCKj7Son7ol2Qh0TliPNpdc6Bn7wCkKS19bT+J+Jo8mfahTMNgMHjdrZE2BX11YLIUIBHJHkd4QEJEZvglkxM2FjZWdqQVlX62zB9gi/Ff7iFJ8KOxFaF7Hk0cqVdusBJiZzsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+0b277f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+0b277f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BDFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747584593;
	bh=TiPiBrmU+N9vzqiM+yxCVytivsrfUEj19MSKNufazhk=;
	h=To:Subject:From:Date:From;
	b=l+0b277flyYCSaTqogpQo/aFQAjkn2Zp5kDfbhrDRuFThYvfwbQ/sgJL6GjiLmp+O
	 z+9y/mP+mnorgUojJt9M1tV89nHFMhUmMVk8ebQ/5zdaKzDLNa2qdv6JEl3rCdq4aC
	 LknyLv0LGqIvunawYFh2fGW4kXvQ7E520g/riHolwfwGVe+KdtYfmIwt4PgWEzC+x7
	 A2SgkhcGFEq9KPMJ0QoTr4BC3qIHWsP9Df6cbW5BYGXca2z7Bja/7xAmIJrSJ9Hohk
	 u1vpbKNQ3qZWW6+mB1DyoImH1IBJ+v8WwnwKCj+D0HHaIiQQn7R3k1Q4pMtIE+H12M
	 fX8+vV1wTbzXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10DC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758459357.17787.11293462458054545440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477fde2e6fa6c05179b303ebb71bf20297fdf16bb4e6548907e45b0666f36569
Date: Sun, 18 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747584593
