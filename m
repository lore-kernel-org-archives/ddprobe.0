Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764FE31AF2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789758634; cv=none; b=c+NLXjOB4Q9zZ2Rb3rLgGzWRCO8usyZ4ZrK/sn970tsSkppds2yLX3TmCUs+1VtQAN5yrBMssYaLR5m/s3wfkWu50eyIku9CDmltD2fRgH/atRvB5ND7aJWSVD3Aozz2qD0APOatQ/Z3zGeNJwKfoBzXX0FP7XcjSTodOjPqrpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789758634; c=relaxed/simple;
	bh=k/TLtPGXNdvHpCLa8hl/7A9OvcilQV1oU+kWFsYoZ00=;
	h=To:Subject:From:Message-Id:Date; b=YohV6yHoWzlMxssFOiFHnNaczAu9JwEjtv/IkWZ/FjsW2NGtwRgnvltq5J0Jr5m+ZUF8CyWxOXgMo66SFXrLJxxNflYzheJH4VaoZEx+69UtW4RMQdb86UD9xUmSs3peOF77rJt5BD7oyY8VoaVPagUIMD0S4ltSw254q0LKQOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmwDbOu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmwDbOu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D286FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789758633;
	bh=k/TLtPGXNdvHpCLa8hl/7A9OvcilQV1oU+kWFsYoZ00=;
	h=To:Subject:From:Date:From;
	b=BmwDbOu7aW4ub/vjoDoO6c1tTw2Jneno5gaamS4121S2umMXpa4I0KkfW9HVWtjsm
	 WCGL4xahgfB+yQ3rZnZkXT0fj37F5iqXqaG/7rDyOnLYTj97QqDPRh5eNh0g7/xVgq
	 6z9gnPU/zV3nj/IxV6gwUATjZLyBB/Mjd78F0K8S6tJ2ZIdutMXHlLp6QP+v9z/fax
	 0Jfcw5+s/WUhBtg7nogWAVshHFyFlsaT3jbJgVHF1/Bd2agocldbq2Dkhq8qPH4kl9
	 /Ls+qGU16L/FRsLGq29JKXF6lDgVlh0FArQVMlroz1ZMwzu/fHsNjDQCdOxbbEXjCJ
	 8pM7xJtRmsJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E3EC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975863371.2870.7531815355354358747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46451fcc4138b1527411f649bf934c4cb2d36f1fb7d31bd2afda03b406549e6f
Date: Fri, 18 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789758633
