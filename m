Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F79371880
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776847654; cv=none; b=f4RNt+HBqe5gLtwk8Eixbc5++C1ff6L4BpUxsCaCTfCoTf85zhJ/BrJRcAbFNarfAGJi+XPeO0FZtlwtvxGHAfbcUb+i1SxtiXB8nzEYSmUFw8+kMUVlTpq92c++NlmA7cO6TC7YM3rmEf8ztALMzqhkkPI/J1PwepY8leEizes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776847654; c=relaxed/simple;
	bh=koMcR3z9zsAugV98gC2t8rN0h9F60cq+O8wdnjeI72Y=;
	h=To:Subject:From:Message-Id:Date; b=eoX1GxkUUVzi2OYtN9+jL1ps5iixUsH73jjz27Sk3UJGHWzvVHtIb5bof2KA0jP8Ke+LBspydw1k0K8Hsg2aS8UcbUUHcX0lUdOPqe88fCTri6RkXey58d3qNZvzq9SCvYqi7jKs0eee4Rdr6VBW7a+u3bqdiyFuQ2FSvlT8kqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7MdlCcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7MdlCcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B444CC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776847653;
	bh=koMcR3z9zsAugV98gC2t8rN0h9F60cq+O8wdnjeI72Y=;
	h=To:Subject:From:Date:From;
	b=M7MdlCcnZS5i8aeWLXjYOpR6E1/KXMPpTTLi4q0cTL199v2lF/IPlbmblEXnFmSfr
	 2Q8em4m5WrjcAeCRyzGno3heenxYzlsWalwrU6VHHJvdr72V+j+ffS4IBETg4JsZIq
	 ICG6e/A41Yl0/DgwrtkLMEl8ueTNrOhnmCD8nQg78pQZU0SSJ6PcgVMU2HI1EwZJIc
	 IweW89er7PLzZ5z77FRjYV+cd8Op3q6ZMrqfD9ULLNEY6O+XDFvy0xjyL54Z/jr88M
	 aCU6mwD9xLSiDIzJpZ7gP3lDuNzXwv+bJKHFEpOgrtbEEeVd0194SDnYrFS+/TEUIg
	 p+a7tQzwSe3fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92EDF9B5E0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684765368.22792.2496322319849775591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f901cb36351589c73bfd5452bc527247f1473e025707ee0e9adbb5b1b3a4fd
Date: Wed, 22 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776847653
