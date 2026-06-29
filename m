Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AF540D585
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782692314; cv=none; b=XHqmeaj4dsE1O7rSQzrXT+yRYx8oHZEPwnRiaI2XuLLAb9ItHIVbhS/C6rChgcDgFYJ0IGLLp/i+VyhkeUQ23H+i8DxAPxdBFJOXL0jmwN6PcMrONXOZV45c2KY+FLx7nlDxMBuV8SORrUSHyRKIFSUgf6CjF3lm0ESXTSvJm0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782692314; c=relaxed/simple;
	bh=revoz1SlRbzINaItQCKjqK6vfQfhr9poef2+Fi0AQ4g=;
	h=To:Subject:From:Message-Id:Date; b=CIOSkX9wUdSJhrVebLJPByY0KZ3ZQGF85zvrDLLLIKYNtAyxH+AoJi8R5nXYCnouIgmRT+TIDYCSyYPsWTATj9NhzGEv2VB+Q/J6/UxSk53suPo00govJtd4uVlw3VWBoHGLHmMgiUGeWG9Hb4Sl5x6lUHom7Q4OBAG/Xt7ekyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEz6iI6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEz6iI6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB60DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782692313;
	bh=revoz1SlRbzINaItQCKjqK6vfQfhr9poef2+Fi0AQ4g=;
	h=To:Subject:From:Date:From;
	b=vEz6iI6LI5+f5uI85FJ5UBGg+2cmlpD42rb6ZD1L+as/tG9RuAJc0Mlmzu3HfPmXs
	 cl164hBkqMuhoWn/0J6rtfGuuIbnTY8/OckQioVraGaCzwmXVcvoE2GJraa6v1cVXY
	 FmUAi3Zbg0P7hy42A3FDJj6mBAGf6kv+7vUL+uSQEDpNvvY7Uv8zaFrzrw9QzMj3mA
	 uYSn0e7ODy9DCeXjN6P6ddRyaYidgDSOaYWhNhetly6Dq0xeswj4GDRnmqEhk7Wwvv
	 dVT3E+l8XsuELP31/qW45sV6tGWiVnB7re6DhGlg0rG28WqCsIpdtDUf20u76kvBVC
	 TaGJCm2dJ8PZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD024C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269231370.21107.16662465534325636049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd5169b40d5bd0ca705469beb837ebb4e5aa53c8c35de1bebfc66400aae1402
Date: Mon, 29 Jun 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782692313
