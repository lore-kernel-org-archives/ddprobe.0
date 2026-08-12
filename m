Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1AD7E0FF
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786513234; cv=none; b=axBXl6I49v0VGer1BmcKpQE3GODuQ7CgALv8f0t3M7XVPTxaqq5P4ROoQpDtzFMSePQ83GGIugIM8zfywyymwRoYlE+PU4DEyIrFWPzjHJ0nPdS+7jlgz7hRNgkF90uOSkHSWyUlkFi4xtN3gQkrLKGf1cAzECHMjAMZLpajzGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786513234; c=relaxed/simple;
	bh=MMDkxePWUMocdMFyMEtDWOX9e0Tpfm9BWuBhV0oxoV4=;
	h=To:Subject:From:Message-Id:Date; b=h+dGxfOwDm6LoREiuamYdzbA4jgEGCtgm0LLTNTyRJuz4fFE6Fiu2S52onY9zbiSFAoxLcxJnTCpxP4Bkpr5VD5qUo0jcNwJLJvOQgXK2Sa0N+u9BMkNRc8+h/M+5xufCySZUw3fu85Gnmcr7yA90eTIXi6A7AvPj/jQQpmCInc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7px0LQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7px0LQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62A8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786513233;
	bh=MMDkxePWUMocdMFyMEtDWOX9e0Tpfm9BWuBhV0oxoV4=;
	h=To:Subject:From:Date:From;
	b=g7px0LQjhMVNtp602hlASCd1lRAKPMyQqoacEkm3oR3YxGrwyDMxxwbUmV5lVIX55
	 CM9yy4s6SA9WkWmOjSlg984C9kQhJmVs6QpZIBvvPbymwuilMEzUXX6fzsud/AwFcT
	 LJ0tKHntmsaVVqBNmjWha5RGpmbj7o5C7yJ5899r+ObrbHLYP7cE+QFZImg6WA/qRd
	 n+FfBI2wvR0G9CVixgb/uOQP7TeoyJudoaaNmSZsC0wvLYbnjmJn39wpECaEAZGrfJ
	 w2zdKkRujk3RCp+D2gtezPUddLHbpF0gNnlOTfgDL5dxoAGeNtNJRv1xSFRybB84zC
	 R1Jfnf+SpbfFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA993C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651323369.19232.16677094297680158880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345137dd19b1371194806f9f88c906c2dea78fbef4fe68318ec216ea8a3afb36
Date: Wed, 12 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786513233
