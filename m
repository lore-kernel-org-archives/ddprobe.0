Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E733220F2A
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789731636; cv=none; b=R6JnqIMOLWl48jpHKtZaAVnL+gQ0uk9aJ2NvFMm8fRJGrYLxSJDe7CxPAMqdFlK7qiZxjlBPYsh0qkZ95d87tj3AfnGpzPAMMbcVGLRBwfWQzgIyOFwQl74Dq6lBmW++T7b4KaIbHY7CBtrSEftKyEjF/vgB9brgz9BTH/xCs6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789731636; c=relaxed/simple;
	bh=AcG8UIciDXY94kX4PNmjY+HEezln3a8Rg0eRGNygbMs=;
	h=To:Subject:From:Message-Id:Date; b=U9EzwGLvf9VhwW0UYSUma5LVxxutDwsXWAkhAqq7eUv9OPt/Qef+QZ5KignySxrS1hZ37e4TVio6SB1qNx9vd0YKxdlchn3Err+NYdYgm/ccY7u+ci6jD6QA0jEJEwEQXy6COA/4dqu9xkjprZlJ9nhUvt6NPrHR1rUVWLG+kmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teHW1PR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teHW1PR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7EFC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789731633;
	bh=AcG8UIciDXY94kX4PNmjY+HEezln3a8Rg0eRGNygbMs=;
	h=To:Subject:From:Date:From;
	b=teHW1PR6EXyplxciB9nL9zfIc/JLft3S3yLZdQfgpkR3bLMCCcochSpQNV74o2UQb
	 /3/bLE5BF8giPHhDYfxFwOGK8wT+WKdEEIs7kkrxWb2/ATmOIf6XYu5rHLJJ7v34sl
	 K1WrmqT2XV63MzntbGHdSnLWM9pdvKEqEyWVJKZuJ3sJZKNq5p56c3cC7cCgCATt4/
	 ZHGcoTmQBa4d+1c8QddrexaWoEZzLwKdKucBXD7q5d3MWJJBAYIt2KHApTEpv/qW97
	 qFeu5BRgoSTXtT0TBd6r2SE2SgPETJjMBn7NXotEeJPAVEwNgmxr7ryhckmXF99eZ1
	 LE9wKhtFBNCYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CA8C982DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973163373.747.1225735790482857193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec352a5a32fa3e87c85de34cab92958c20471d9f97051bae6d8f9b68c0f4bb9
Date: Fri, 18 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789731633
