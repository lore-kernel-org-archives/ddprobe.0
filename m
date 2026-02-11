Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EA22C21C3
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770784494; cv=none; b=YSUfW5t0AxPb0I7DPCDFHYCBvO3Raf18kd0GGZR6y3kGWKPKWoox/+TB9ZDn83rOqPL/efMuT7+K1Z1is11XiXhnOS0KxroznQkZp/41l5G0ep/LtliWwsr9UBlH8bElhpqVnEGfPzFtNqzBDZJI4BIM33dxFjQVVoJI0Pk0qMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770784494; c=relaxed/simple;
	bh=2vmwvrkckvUGoJEz3CkJYYFZ0prnBfchV8eYsRO0pl0=;
	h=To:Subject:From:Message-Id:Date; b=XxkLJYK7rlSj5OiByPNVI0so1+KjNIM+FH5p5cNAKcejhnmP0mFRQGWpFxbBQ9WhTDS4Cr91/PhgI5vFlkDNda15RouULLHb31TE2L0tgMV2DNTTx8jtzYVxJpFMn1jza+5Ye87+97ZyPzHBdjebFEpFmhTa0V4cCkDOcF7QHVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPI0BdCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPI0BdCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB97BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770784493;
	bh=2vmwvrkckvUGoJEz3CkJYYFZ0prnBfchV8eYsRO0pl0=;
	h=To:Subject:From:Date:From;
	b=UPI0BdCczzSK7L9ZwaNOeE562K+zE3IL3a8eGouqjUoiXYmyh10XwEuLXgcwu6jfG
	 OMUHhvl+73lEeyE8Vg9jUXTkf20YK+Fqi2j076bkfW+UlA6+aiHZVMg3WPqJHZpD/Q
	 0vO5IBAhTLkOfJ7hGzaTYXdnrd4fSlkCXDq1jZp6JE1eUH2EsbMGfztVeMz5EMR+kg
	 RYUCK7xiJHu06hiAus/qV8VayJe37pXQh655g/Duv/mTlTzyHL18/SanXIltyyyzXc
	 aMmadQV+7PQ4EoaGLH8VHEvFwZ0h4HxdnyVGw2DBux0K8Rn+7zLnX7bKJVeGMudybp
	 H5AzECU9K2/nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97916EB5965
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078449361.18058.13365245357248937841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2741af71e8ae1eefde4d4fc34cb974d73f487e60cfc359c35d70fc5fa687fa5
Date: Wed, 11 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770784493
