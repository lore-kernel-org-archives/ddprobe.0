Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BE940DFC2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778167654; cv=none; b=qwJpCpXs88JqdRK2NkWarVzuw3kwWQAZiwwZsgXhrjBiLVaScFyvCLKasYMeI/zdNQeew6FAcHomWmH2QTUJvdgcul6aRD2VMv7xpdiVA4ezb5AAg16CAXrTkYiIBO1SlLg55W1a8eowfHisWZK5QCbp9vWu4yQy3RMpvvt7zGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778167654; c=relaxed/simple;
	bh=jmI3JN+QHiwpG4dxcUrk/l9YXZtSV1n/34aJ6t7g/bg=;
	h=To:Subject:From:Message-Id:Date; b=gtxofy97dxM/wtdpXW3YndbkO19CPtOllawikEnbtBHSXMUvYCESJMpRUr8J1SM2TzUMAkk2UUmEdh2r1JLDsyBent3ps+3eBr8pF7FJMX2Ga7DIWFwdiabh3QnCuLz9aClkUuoRmMM0vwDGStr3pRVKJ1FdJnyL9CTaJGK1aXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mo5fmqGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mo5fmqGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6E1C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778167653;
	bh=jmI3JN+QHiwpG4dxcUrk/l9YXZtSV1n/34aJ6t7g/bg=;
	h=To:Subject:From:Date:From;
	b=mo5fmqGBvHA9QfCCbRhKYNoxWXI7oN9uputem7CVbcNkJcjgSbLRjwwZpgHjuwHyN
	 80p8WjSTlkp8C+ma0HIBL66DIEIWAvdiNqYEpr9xQYtK58Zm8HA+tiKu3mbHkygTsZ
	 eLxETFYikTu5DaNwYL9xLDDSHTvirKAH0RDwxU8xQWUDrmZ0JyU/7ryXDlxmrSwjIW
	 2nfRGb/sHnsKKlO83LV+cAqg+dmVLeEWt0tQAVV+fEANJ7Z1Xm5vVnC3fElpGQPB1K
	 DpInVF/m8k+DfIwkqjiVZ36g+rlhDl8WYHNU4iqZTS+YGxnV8fB3MrY1j9MCESCM9e
	 U68QdYPKDyzXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66B4CD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816765373.8609.4054343049772093959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f8df6dda4fda948d5ac64ade2089b722cfc52c267ba2e4de68095fd03415e2
Date: Thu, 07 May 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778167653
