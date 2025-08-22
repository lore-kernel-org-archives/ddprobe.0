Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B167305E03
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755871194; cv=none; b=orNzG5MQrIbazB2MHsuXpNlZbVdIiSiynKTKzBJ7yqmBHXJwkWFtuZIjrDLVwa4iJVnz/eNuCNmziYTrq9XB577grrBrwnIp8xb5AJ6W5O5oOtQv5TDdeURiM2Dal+uvvC3ewYkeGP1BCTQD/PObn1YSrTrRm7jpjEZKm/u4eGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755871194; c=relaxed/simple;
	bh=T0IZ0aFfNY17ZLZVUwxQyjpO0/UuxBDH9hHnl1SpZaA=;
	h=To:Subject:From:Message-Id:Date; b=U7dptpt/huWjH7lFOgCaQ0ZnoRUw3S3C7bRkElDJZizT/1o8nX6F696FKXlrOPkWmGEY2dK+yK+EYUB0sh66eefbiYCpazga3KwdJfvKo3bjvndaORRxguGBDlKSqLDJASom7BhgT+p05YkOhiVB8a29DXb6Ma1/URNVCDCFhM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8jIJWTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8jIJWTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB9C113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755871193;
	bh=T0IZ0aFfNY17ZLZVUwxQyjpO0/UuxBDH9hHnl1SpZaA=;
	h=To:Subject:From:Date:From;
	b=g8jIJWTcJj6nDpCeFNNuQ3yGjAhfRaMgJy3JAcqOpIJP6m+ogMHXgmki5RDQweVKT
	 BwdwbrdnT1Iua8j5aP/8aBZFTa0CReQbWiYrQiYZYWUbdYs11g/183Y+O8+3HFvoi7
	 K8LOPpTyYXlSFl0ZEAkxla+pCF12+RDGlmJCJPzSokFVwpUDBg2Kh4lDhrIHBunNcJ
	 wDpcxDJ3h3vd6Kk+l5QHzQ9MEUtymiMQHwiiT26dSsJtqs5/Uz9XMZ2YMYl6TOZ6ze
	 pdHSpnIaGEOAypbIIO46n2eKnAIy/BbVovVDKo1KMppk2jzg3NFO1PAwRsSIN9LgX8
	 ecJ9VXpD3N38A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12ACA0EFF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587119357.26065.17765483626929017906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a1a94ed6ac7362da5607d1663cd81db92d1e5bb05b5b70714abac0e883770d
Date: Fri, 22 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755871193
