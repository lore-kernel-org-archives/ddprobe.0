Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7F259C94
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748344794; cv=none; b=blWO7Rksp0Ip+TroPD4oe2XyxZWUQrG9Ty7n3NckKut2Wl6kP9KkL4x7wPPYHAhK6iuTtliGFtYD1peWeeuLCKsCo3TsRXTl5x3WORPRWCyByvP35s16ieYKVZ97G90C6DiNG1TOJy9fmiNEgLONg2fSqLN+uOkjsUrCkTWi0PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748344794; c=relaxed/simple;
	bh=wqTgMIG9afqiJWt9EzN+584cVMgFY4iv+1PS/JAG0Po=;
	h=To:Subject:From:Message-Id:Date; b=Rjxjvy5/7c5BNNdqihMerf66dsAl0NOrHyXMv9g9Nj4NdiLx9pOnWUiRUMaLQTWOX0mNi0e4lWuzw8z+A7vyGz31S7AxOrU5/dvnAzOjlqOQu30cn9gu3NN4Hk21cl5xawQ1p5rZXEPwQdMNlY0DQ0n7JUXdjfeOtLDfvz79/As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spNqih8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spNqih8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4552C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748344793;
	bh=wqTgMIG9afqiJWt9EzN+584cVMgFY4iv+1PS/JAG0Po=;
	h=To:Subject:From:Date:From;
	b=spNqih8U5J77fYPgduakUGA1ZwfKzXf/X0HRIeOJzp0Ke91zc8YxdO0Y0QJIqL7F2
	 aqxF5gpTFmwNG4QV1u3q1po1Iquij0HiH5ocCNLwcpcq1s/zBb64KTh2gdv+s24X+q
	 xhUA3w8ezkppXZyzQ5CLWZ63pTqmGoQ6gxUEu1L4ya803OnX3Y6rYiaUqY+oP2AP1g
	 K6gbe3Ut8n7stBeH5lrKSH2DTu7QNRd735QRJxF5XJohGn+vMwz+3Iig8MSDy909xU
	 jgqXUY/aJWE9wSfYxIKJJdc8XQ4s7yuVbXpPUzTbs/i69fwcfxy6yKeUktpzB6bYmL
	 jm1fJDn1JptMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F4C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834479357.14133.14101304922602448889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d568f7d77690c52e6b2cd2a27f7abe7eb9ab7d3dcb964713257f4f3e85fc80
Date: Tue, 27 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748344793
