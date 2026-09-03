Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D914B203D
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788444635; cv=none; b=MkJq90eTgVPaKo5R6EIJf3+8mm5vW8sB9XNt0sx/pk4zlUYLHKEuwya+dicp/UBWewLpwtcakDBuxbezj7IU6mI3E2MFK2PDnhCQEILom/D5qzYriwMsNUcZxNNR3066lrLHX3gTC1b9b/aaHmTvb6GupWxb8BzE9kzap8mDIX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788444635; c=relaxed/simple;
	bh=9MVbyrg+3nD/Hz3QHITDLMf+zMB5wXYGbSIVcbIa2L4=;
	h=To:Subject:From:Message-Id:Date; b=DhN3Vne/89ZVR0CH+M/OaGpr3qfk7QTKejWHg3I/bedcScPHFwZ72NTtLqBvGE14cYMnCkB/3Sitsjo8Cd6hBTi/Xi6fdIoNt5iT/HSk0AplGAz/otR7EKEX5af4jV4H7M2bbiOtFSuDvU5g1JGdptGOVsC5/mB3kZrgO5/IYeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3nmvZ1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3nmvZ1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2016C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788444633;
	bh=9MVbyrg+3nD/Hz3QHITDLMf+zMB5wXYGbSIVcbIa2L4=;
	h=To:Subject:From:Date:From;
	b=O3nmvZ1GHrpX6AxSI+6zHSwcq5kyB3Juh92JxyvO6AOOxH9EwRvcYC1YuXXKjNCTe
	 oniVHXd+4IOWzWTCQlLV9jrb0HaergmN60ELoTtozjXVVXfvIEP1vA5MLX6g6hiPLV
	 10dXaaNttgwJpa8vMF3cyiNi6rYDkz3WuQOpxlO9hCqFrNtP+3s/Ny9meyPEm+1bFB
	 RU0b+wXnejCK+JhTzr6n6M5h/oLgonWkqaMD96TzjG8L8aho1EMKWWAk+2ALmXt9KE
	 yDssKqPhbpLAohLOL61NEiHu6QsxloHmslamKJDvhs6dzxEaMl1vjVe6TBx5+DTmRN
	 8CTfc7CGK1teA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE25FC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844463370.11481.547777906767597243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd6df0c6e851b36146d30c5f8398b65da5c19349e557b974f57aeb4efa3d179
Date: Thu, 03 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788444633
