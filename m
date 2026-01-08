Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072F74DD6DA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767881634; cv=none; b=R1uThdzIGtBDui+rVF2y+idfiEI8SviyX7HSIyxozvUM3mefh24tapXzmgQPCjFEoSkWU2qalTzytFkmM0qFOUCQJrf4MzDDIVUPsIyomIZXh5IBUILvmOa8XecEh604jDrxJCj3H2VBwCjA8AR+2xAeiA0Cfuozqt+QjsNGOAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767881634; c=relaxed/simple;
	bh=eFfV5eSKpSsnxyIO3KXLPlNauZC/CWuGIX5664u7JNo=;
	h=To:Subject:From:Message-Id:Date; b=X51TzROF3eBfb0rT+Ld9UXGvJRuKc+Bs0jZYlG7Y0pCxwo3NqRFFH67aYKA1focc4ajTpJiivWBj6sLHkKOo6jmY21doHOtYW1wUjlaNsRgDPbzg21ibPUQcJubGYV0rcwoJlYY7btl6NcTZtBgOPuCFU1CmczaIr8+AFbP0/zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHy2/Z7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHy2/Z7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D434C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767881633;
	bh=eFfV5eSKpSsnxyIO3KXLPlNauZC/CWuGIX5664u7JNo=;
	h=To:Subject:From:Date:From;
	b=pHy2/Z7AxCy6OI9kP8ieAwOhHOch5uGk8hUBobXjwOs/lYhQoEvGmo8jxPyIAqC5h
	 O86z08JtWP/1kKGwkypubshwPZPPPFd93hVI4NroeB0WLXg9vp0COwOoi2ao+J6lcL
	 4BshJTqq8qDuC/9Uc/SWnEnvst2+YeL093MjLTv0RtWhZ0M3Eoh+1x9xgvDCxKCofR
	 dTodxJoeK/MVnZJc9XB7UtvGCdsQFA9v4LeClNgKv5WX14/L+T+Wa6OBjaniwVGF0j
	 IDz9qir9lBF9O/LdKv0zre0lyGT/D8INXeKKEpqK//3N8o3siP8RYk3wLmQOTdAgUA
	 Wc9Wha5D9U9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F847D185FE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788163358.20521.5949451219520958624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a27ae255b4467988ee9e3834b8f7656ed39a89ecc81f76fa9530335c1ef51a
Date: Thu, 08 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767881633
