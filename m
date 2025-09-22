Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A5F82899
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758546594; cv=none; b=SfMtZDIZX6La7eWipdbqboGFK2ny8OP+hxaL+Z2hEwnhniAX/oqR/5pXlBnvPZi+du6jy+pNauZkADcc4hZYht4PYQAjcUnAQw7S4gIv+TWTHG0c72fyGfgCMszYDfh/aetM2K96dIyintVs4cbDR09H4XqwmI4HyqVXeiC5Ulg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758546594; c=relaxed/simple;
	bh=Dd6uXP9jwry+BaXKNeeShJRRLzGvcxsHWPAUE9gfrkQ=;
	h=To:Subject:From:Message-Id:Date; b=mqMSthB9LM6jUMeTLO7fCi8oXmqOSmFgO/KRkSFAxM9EErvjy1gEAjRuUC1c5KNo5of3gNMrtScvBx9NF18RahmxbZQnP446F84mGS3FwS2EYSNe2kzbLbCHf8LGW6relnz96b+VKLf/3kmZ/fpdyvkT9pRwKoxBCPrhDEOjolk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAz4d6nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAz4d6nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F0CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758546593;
	bh=Dd6uXP9jwry+BaXKNeeShJRRLzGvcxsHWPAUE9gfrkQ=;
	h=To:Subject:From:Date:From;
	b=VAz4d6nLt6pk4eVgd7S0TK9/5eQf/vQi03KEZbrRLBTWnSPP0lWWracO3I/G7q/38
	 IG2k8Asr/7LPVMZaTpc9/HG11Kabsy0OTDw2b30pNgMK7qbUzbRdFMp392NOd78Hs9
	 QMxPevQEp54A39rWKaxqhyiGY3EZleOxcGSurlI2LdnUU1goiJ5XJq0cl3h1Ok+fFS
	 P9KOlU5l8vnnQsYt9JDYyGiVgIS8qKBzmswLbZVWk2vV+FgPXPghRQTwaBc92kV+yV
	 pH77uPEY2b0yi4Cwvu9XTa5KL2Lfijfq5s4c59QZhXAxuHmAMPwpaRUwdSz+s6mb/8
	 m77BYj8ryNEmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E9CAC5AA
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854659359.27985.16618251617951677567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86cbb1fd01c0c25f44ab1450f5cdd567954b6fd58720def232265d3ea7c67b1
Date: Mon, 22 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758546593
