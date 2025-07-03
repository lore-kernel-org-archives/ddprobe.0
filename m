Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2272DE706
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751501994; cv=none; b=Qz6aUggaHK8PLIjTjSmuCgyG09HQl5PL+OI1wrFTVYWFhCcssf7CoWqt06tMctZeJj3nKCRK7GKR4BKbykpgsAlfnWbXQqlRDhPa6H1pq9uWI9LDlrWaRMChABm8H0ChcUd5NhVjLvgH0S+/rf6JGeRL4a+AP821i/QDrzH0H0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751501994; c=relaxed/simple;
	bh=Pa3uUHLgV/ztI15JWVwjyMI5m0RhsZm/1um1KWEfPRw=;
	h=To:Subject:From:Message-Id:Date; b=D09xfqyYP1dcmfiSTrd9PcYkc357Sc1IbXO1HgUbODAhYVI9zmqyjpvZKmwNnrwYNSw2dst+4ssjFkvlfKfZ3xxDP7V0Dxav9gRypihSfMk6tDQL1waTETOd6yRA/zm7obNKz1V1qW4UelQHiG4nl6vOciEL24ykzFJo15lD1+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyYBXh9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyYBXh9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751501993;
	bh=Pa3uUHLgV/ztI15JWVwjyMI5m0RhsZm/1um1KWEfPRw=;
	h=To:Subject:From:Date:From;
	b=oyYBXh9wSj3ei6DeZ5LJQk/EwM84pzADlaASCnxdtS2fJwWGFCdiGe1v9AVCnovVL
	 CNCoseSlw3VFSAIql98ImoXqEu5Z57kQMAcS/0ok4BLcmmtoPV2Wqg8CHeXBYswI79
	 8u3I038IzlWkXR1yrIVVjLl126u1JKJOp4MQxHqpTpArSepEr9ZB80l+dRB/+UYms1
	 PezKxjOqfI/c/2XiBSFC0AHyKwmohSHTjQoDa7A6NTEERQEmIzZPvWpK8DdCAN/38S
	 gA6025xla/5tAFsGLLWCYVm3e/e+zcm+/2bUAhtELqG3Pqz61htpnh8mTXUhFY4rP3
	 eKvOvy0AY5EKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9219CC8303C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150199357.24481.17519004632737381002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8b37b76cb82284745cd9ae62b3590d16ce0fb745e2d6487dfec72a69d587e1
Date: Thu, 03 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751501993
