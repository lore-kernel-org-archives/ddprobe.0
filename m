Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E0BEEB2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744344594; cv=none; b=feE52qaAF0cYKKFp0PqK80f4CfrYwtLVMWFYyLCwU50C/4GPvOAeKlrWLcTsJZC72fmE9P9tK6DIMV2/smBn4gds4U0J/RTMKePScDfzE0u2j3qDBtym82qSH/3e6dr7HM+ZURZLkk/StTbGjQUvV4LtjYCVNewMKud3n5DYIJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744344594; c=relaxed/simple;
	bh=vrnlSsqWElvSrbntv30txvXCb9JzbDYr7vhdHE51r48=;
	h=To:Subject:From:Message-Id:Date; b=td2W8ksrYPepQwFJn6Ebhe82O57vyARFxYGWQqJvusrQ8SZhOmEKdWAsVWQoHM2I8WBGlkxOdJk45RihHRfLb8pxhIqKwVM0dc/tBYfMXQhRNBBTuL+SnUU7ymkqMXtWduUlHZMaQREiQJPWB18NHSfwZR/mCVim1QTQYYjkfFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1NEDq3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1NEDq3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72A3C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744344593;
	bh=vrnlSsqWElvSrbntv30txvXCb9JzbDYr7vhdHE51r48=;
	h=To:Subject:From:Date:From;
	b=n1NEDq3DfFzjcdErC2NJE6YVlYMosEf8m/rFP3emT7LAjsDLR0Lc69ZnhOXwppnAA
	 1m8svgiYVAxg6fYij7Wk2w5o02yRx8rGbF6ss5pS9eDkg9pCvNDlXuT3AdA/lsb7y+
	 V7NVsM2dx9yT6uEWWh7BkuB3ujSRF7BE27UvzuRRSd2ozpB6t/zH+Vo86EGjc98vY4
	 zjUuZF4Vld3PnP3wd0xl3cW0zS90SAC2wctkvPxODMehahPZQ9335iEVS6qCJ7rYUz
	 1rbatb0y1Fx5K1QkrrouN2vN71GuKsbL4ZK6Z5fM+QGZW+TfGmVgGPosz4b3IFT/wt
	 44aK9bIs2uEZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFC8C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434459363.20749.7544037454974224344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911e8c53d5281bf45915194e6c68b47837449ddfdb07a64d34c216fda816e0bc
Date: Fri, 11 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744344593
