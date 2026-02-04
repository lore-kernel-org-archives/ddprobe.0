Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1508D1D90DD
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770209634; cv=none; b=mfZy/tkNJxZUGdBAhXO6lSE36MJ45AP2pZKb0R+aZqLL4othXk+4oNklNU98WUygwoSa80NeL17nLtFG5LiwgYO326tokGDNFMZDhEnFuJp6ngS26lfk2mye/1XeFgQmUuo4ArmSb2nWcccNDumYBrKUYeB+cY7XE3lz8WVyvxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770209634; c=relaxed/simple;
	bh=mLTdNTSQ9JFzXrHUxx+ra6qCL5cOVuq0r9/XEf38GA0=;
	h=To:Subject:From:Message-Id:Date; b=aIvEtR4KrS/izPl/xLr66Ysw/iKu9qAi1smnx2cQSUwkPGtLCnQu2VP9NlMKlbjLvKYv8YTSXEb4rCZyqZq5fl+DcuonB9ay2DjiP2O/UHTggy9q8DoVHYUfx3I5HBHrkHjg+M4zt+BxPX/g82QTMmLjya7NIm4Q0qKfzqjTqzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hy0u3SfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hy0u3SfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FEBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770209633;
	bh=mLTdNTSQ9JFzXrHUxx+ra6qCL5cOVuq0r9/XEf38GA0=;
	h=To:Subject:From:Date:From;
	b=hy0u3SfBKl3lCMGz/fl2gHrTE2Sa4IP8rNYkUfPUGKf1baWK0DrmiwUr5NdSXrcu8
	 apnsClSoH3enrjGYbq+gW1zZwPCThiHWvOIT40Ru2Xq1eOnpKY+az3ua9mdLUwYU4t
	 X2dj9WywPU10dpQ5xlt3UbauHqXAyNHGlsZU418yB150qnYKt+Skvt0ukOzVP+8VrU
	 rCtF8Dak7DYFWNfDKFnkShqmId7XVvQA4G7j+TV0J3rT4kwrk7xMs+HdezeS/apVmG
	 T5BgAwqC8RZRIEWAAocLhI7ATq3FAhpJcPbShMGgSZiJ8zYQMaFX58mKyHk0ZzN+nA
	 aqngQPRbSpYUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C7EE95399
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020963359.28116.9824526875052977050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcdfc3c4e5414cd566014e175b1a44eac9588ed736cc0cc72b517a2935d93c3a
Date: Wed, 04 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770209633
