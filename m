Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4476266EFC
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750689594; cv=none; b=AcpF4llmQxHIErjPbVEOZAR+IAt8rVXb+t0ddZ+6LBbxWsKf3qO1ZJNTLQ3Lmn7q8N1LtOYJ+/idG2Mf4FJdBceQIWnS9v7q23/VNVknIGlOBcVYHwzi93HqnninMfFXeZesXzL3JyC7MNSRfxoPHxCmi9lB6mTIW4R4Lurbpcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750689594; c=relaxed/simple;
	bh=XF02/wUkZ048F82v+HH7euwpDKj80fXWYVOwlA7a6Yk=;
	h=To:Subject:From:Message-Id:Date; b=U/UUxgkxyKnWCpWNM4+ak/5wtzPxlDHxTA6eeXLhQ3It7UoZLF+CySO1sbfpgOfjHjeFP19UH6pqxiyOXoDVj8q/6XF3hPIE5jObPrtBpq0CAk0exAoUDlksvl2sswsxChyq0N3L9k5N+5Uzd4uv0XWBzHJxanVHqpDHxzRL8T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM9IkQwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM9IkQwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B11C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750689593;
	bh=XF02/wUkZ048F82v+HH7euwpDKj80fXWYVOwlA7a6Yk=;
	h=To:Subject:From:Date:From;
	b=RM9IkQwxkRCYkYbgRiR5hy4sTnqG3VPgmsUcTg1QXr7A/ob3bGV9mXdh3V5tkaLN7
	 PoFfEp06ZOxaNg1Zu0EO/kAOgbyTKDlKOAxKxVrERnlWHvNl/kLeQduGTLlK9QNnI1
	 f5l5D3VVUhQV293cFRcVzLbNsE10J56fm0oSdTALP1vhgzybSEK6BTDiLK7p1Wis2X
	 bE1ME/LFNMlURJ75A7Xg4dA2qrPIi5faXs/Pxp2sHD3EdgYIzOfNu6dji9+6CPpz+v
	 8jVPChDmZxxlu/jfr23yvUz9IVfwBOXQGc3nZhb9MDFOoxQ/adho86piL5bnY38tTq
	 8ML+Qux4Hk2QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F48FC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068959357.6908.16196950262263675441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a265e411ebe154d2b64bff383a36c80b6213b5a6d2f2a9003adbee62c15cc1f
Date: Mon, 23 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750689593
