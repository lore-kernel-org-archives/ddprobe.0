Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F348D1AF0CE
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731700554; cv=none; b=poJ11XqU5BatjsjG6bc+v5a2bRpNHO6bWcUsyn1kwrpgh6qQ6jvGoKrBvGryW8Y3oEDBUaBHxtFkPtBplUIua5wZIdguFqD+M9SwuebaUbn+z9UO4EW0TwW9sGK01NbhrXpUTvUSpXhtBSmFcw+qM2hmYGIrKymkjgNdoHz/MsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731700554; c=relaxed/simple;
	bh=M3ie0CeJ2iK59FBlN/uuR4ZNnyAvzfDIA7HLfva/qig=;
	h=To:Subject:From:Message-Id:Date; b=Tzz/m/ZDwfVa1+AybbLmSm9L1Fl5xNBUFDLAc4Dk2A5iM//ivPvOGU7hXz6PehhwIGKO9ow1KOyurxmPiV96z8NVmz78o/DxGcy57Le5jC0WdP+ajxhMyzPzgv+KpjhtsDlw4/Kn3XrIyihkk0y+Ao4mqyeduyeqeTo36jQeyfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9dkKBRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9dkKBRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C26C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731700553;
	bh=M3ie0CeJ2iK59FBlN/uuR4ZNnyAvzfDIA7HLfva/qig=;
	h=To:Subject:From:Date:From;
	b=W9dkKBRJIJebjUK03lBLRwRu0yjTGFxin/v6FIO6u5O6mGy8C5XpnqG0eJEo1awbc
	 vlfpscBBxDDgAuRqfoq8TPN2XcX9DRPt96kBLqwWbZZcMZV1oJDk9O26PMpAEELCe5
	 f8dN+MDMugx3DOvgCkl78Q11/4xzVB0hH87grMdreFF+C7KJ2odpN9JDY3u4WER2xf
	 lfGh9TpsraFPV3VSuFGwSaiEQNE8rS20/OR90uXjuAMXJB50CH7ocrRy3B8LcyVfeQ
	 o7b+GXAV7US05ezt2dpBG21JnKS6C09tlarRE/p0FCBndXAvVTsYyC1YOF2aM+M+Ie
	 eko6WXahccXTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DBD68BCD
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173170055359.29609.7148293165442793464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1d65173a0cf7cb6ae67b5f3a8f5890a5bea133d837e4d7caca02144ec9bcc6
Date: Fri, 15 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731700553
