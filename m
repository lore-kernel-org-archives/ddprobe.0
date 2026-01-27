Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA4B2673AA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769499233; cv=none; b=EONm+P9UPl93o/xzsnJCbbyg8llBiNWP7gsvKLuzw9qFHzMTm+SLMChsRXQbDWn3P3HYAg0qZN4Y8Y07IWPUBn/PxG2Lgy3O/ipVi1jDe1GjHaCEJ4rL3ES/4Q2GhI42NOwEGJMkmppQ8Y1xx6lZBbcDOMsX+dab7HB7yuktj78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769499233; c=relaxed/simple;
	bh=CugJDaJsLzluU8ASldw8xJmRbUNG1qsd6A2unqLTwoI=;
	h=To:Subject:From:Message-Id:Date; b=VyxXYB9y+1B0zDsr3koOaYuc5S6bBMyST4L3L+8VSbLN9yueVno8s4cppiMwomCDfNMovXHoccnK1xYDgIu24jpr3C94o6vI06xwcCqLf0Bg8MFbZHeHrXQE0M7ciZDyhtU6o8RPeKmNzIExwz33sqsTvR9rJ3s0DBjk8uMsIi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnO56Ori; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnO56Ori"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A016EC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769499233;
	bh=CugJDaJsLzluU8ASldw8xJmRbUNG1qsd6A2unqLTwoI=;
	h=To:Subject:From:Date:From;
	b=lnO56OriQucFnwxB7uf3BIOrNmgJi3grpdAK5Ek12/CbD8ECIeieSGNRVk2R93qKu
	 kggyNQziebt/AGmhgwunWfOvfiDWBsyc9TncKkPcTNJoMP3B3JMwDqfi5/o+g0kuRK
	 4hxn41/MhGL6e0ITV9RTShyxGFWERI85lpJur4rDPQfi55ev+4f8CGoKesL5ocremf
	 P9D/6ln+Xv/BkxjZXbEtxtFzf+6Td7De32bZOwGqL+mg8z6dgSH/hxbyuz/h0tsL8z
	 TrZ19SGyHPfoiK00cL6QzyQMbLzYuRTishn2r8GD/dGna6VCXl2XHlsnW0iNxamNU4
	 5y+RPX9mfMioQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB61D25959
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949923357.4385.3098202331314377626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec37caf48d4f9d574db238d900f9323973258950c336963fdaf4b42f135647d
Date: Tue, 27 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769499233
