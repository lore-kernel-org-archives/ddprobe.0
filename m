Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E470F23EA8A
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764442374; cv=none; b=uELR/7YEFGEIvEi70Gzv2UBRxKVzU2mYt+Y8NxoIss7Zs7ltnIURcvCnFMYUMsErpIKb6fJhqw0stutVqxl4WyiYb5Gp/9KNxWzFbNBcFuPTvo7MrXY4n0OAqglG+RX1j7utUdHEGEC+goBn/b0gxkKgIGbUSKTnctOiSIhLWh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764442374; c=relaxed/simple;
	bh=fFUNF7qrxXEkzVHrxk5aYuKLqSxoORg0fAcYe0y6MHI=;
	h=To:Subject:From:Message-Id:Date; b=GQbgf2g7YmQ7mObI4QxmLs9V95vB0dqrfevhdYghVI1kNZs2/LZlr6tK7p6katAsdeHrz55nrpnOqfmCCxDsFybbn57nkhdLdkDE98SyPEeHHUIKUMfiljJ8w3dhXO4M2bpDYLI2FW//jVgAspU8OdpNQ5ZOY0HHfhgvuq/VO/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHWHj0S1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHWHj0S1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764442373;
	bh=fFUNF7qrxXEkzVHrxk5aYuKLqSxoORg0fAcYe0y6MHI=;
	h=To:Subject:From:Date:From;
	b=YHWHj0S1VVdJQt/57tWdBFnRK4H8N6CmJDzD3LrVwZeqAUyP00MKYzM8Zgy6dQMx1
	 1svkEwTTXcbzkIjTm5pQANpSypMLR/LVlNDXCQKPmbEJwvkjAKx4BbtoIArA0zglRt
	 TTZQxGzk1YRQkapWaTSt5+CRzDoMlOnfh1AOyw3O+PgJP39BXZLtm+r0XZX0zmeR4h
	 6mL2ACj+Ao9lsfaRtHra0diqH8yow/3bCdcveaVjDnwFVZuuqcjEBxyJMr4jUWbEbc
	 SBmjPzFQ01jkw41VoF4eznb+vJFQd0H/0Fvy/HWagCixPT/u9pOLTf+UDn+/nqIINw
	 AG/jMN55cIxPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AD6D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444237359.6048.12377905396314064479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002f5efe5c0c0d86d6ef54c9f9ed365f012fe3e5a8680fa082cc1f433036c32e
Date: Sat, 29 Nov 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764442373
