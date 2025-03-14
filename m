Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCB6205ADD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741989534; cv=none; b=I45ajr6PjaOCieJkcnDlg6kbvi8pr8lENAGh835jleYX9KnSrTZ6gww7zSivAMxL9iN2VJw9Girfl8Ed+guD1BemjgT6CyGWFcRaEEUdpiGBtgcd4hwETs0VJu68P0CcAKkb2C7a+JhmX6FJNa/WADJcCFEHuHPfbyZnZ/lrDNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741989534; c=relaxed/simple;
	bh=b9EsWI3ZD/yudyRE207u2MwMmqZQen1F/h8BWWh30dA=;
	h=To:Subject:From:Message-Id:Date; b=C0pdNYeV0PK6ZBhXGeV87+0hlfyj3En0kqubBnqCfK42DuaVU0IToJ9qT1iAiY2fHBDb+pqLZjFf3cNNDdZ5yLIQ1UFld0yWTPcVD614fk3xWLtzg9iLnj6N+V/aqIchNFxHROscCFRIOBovMz/+9ENlZCRCXU9y8UqG8NIsmeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsxdSLVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsxdSLVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D433EC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741989533;
	bh=b9EsWI3ZD/yudyRE207u2MwMmqZQen1F/h8BWWh30dA=;
	h=To:Subject:From:Date:From;
	b=DsxdSLVI0gZ15r1eUCePwnJSky89lXcafRTZ3ZiWpSd0fwBpEGCLubrNomo9RZSUY
	 bb6H5iBjuAKlpF7fir+WIKKeq20luLlXD909NYCasdsHLZpZMj20XkcVietzq0O7qf
	 a5vBRmwiYeCHjOQ8Mn53WuzWJ4a3lttW0v5Z8McsgmA5zwiuykOtRW3FdNBt3axsss
	 spExt5OVX8Gc/rnCkp8vNwmr6VJPsBWSuMEYjF22B24bbnKAKl6bujYJw23RM1D/GV
	 vOrDmxWxTid7vCVELsztVoERwK0oHVyHFrMEtI3IUVmO562oibV3qf8wPKj1+lVqdm
	 sCXGRrr6YpE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EFCC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198953364.26661.6282200676913231927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d240f619b8acd21bbb2223d4eeb84c671ef1395dd22b8016697b2f4eb2216a4b
Date: Fri, 14 Mar 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741989533
