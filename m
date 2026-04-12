Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2801529B22F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775954254; cv=none; b=arA2bzwTD9LtjRhpmWdH/L+m6y2htNu8aYEu1bM61hDLd/96NySgrc5+j6AgpWCznfly0WeY8/u3CINLHXvBTv6IYA3P1GBUV1/m13n+PrwsNd66CH31PpC0htrqZ4go0Nm7IFmYyA3wpmIsGdjV8jBpb7hd1raKXsyt5q8rB6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775954254; c=relaxed/simple;
	bh=looWRi6F2PpZuNYF+AfYEtM03uiV1EByh3cqUiSGk3o=;
	h=To:Subject:From:Message-Id:Date; b=FUn4E5m3Vi9DJQPp/ikWPRMwFVx/GYlfPE61oRbCmaq3VWiTPUeMQ5ApFGgs4JmoPrMClp16GujGo9u1zs/G1v1mEczktb2ldhhcnsISVnl/2eMxVKKVEOnUa72f5oO2A2YYhKHhK4QfgEdBV2Ijz4ST6UTy768MnizUfb+kIyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9jZI+R6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9jZI+R6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8BEC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775954253;
	bh=looWRi6F2PpZuNYF+AfYEtM03uiV1EByh3cqUiSGk3o=;
	h=To:Subject:From:Date:From;
	b=i9jZI+R6oR4x2eRCP2j/46vpyNi1tt/z/jK+1aTakMh0M5jmgAZSWqs/eEQD7zGx0
	 uQ3z8TNNo1f46JyNHuHr7lZkqIlSyKdI36peZ58yxQxnWMAe8ghrb9AcChAX8S5fsk
	 cNV6MFJ35uf27hWea2Ihf/cEdGZMyx/h9Yt8hkbNlqOFo8ofD7hzZI4C7wP1tRMF3c
	 VhjklUVWMvberJhR9VIGiAS4+vynSZjux+gW3jTWUAvbewuh9P8werjeQXCsV9J9EX
	 cbkeCLwKVcdn9pul9ilzbK60LrINnn5lmZ8N1xSeWPPugySNbNQIE3ejGlF7IStCKb
	 bt0Z++Am087Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF9BF3ED67
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595425368.28485.4673372698647971565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afec2bf59e656f517ed74d1133a677f3ba1921d4c3d02732601797be96e128ed
Date: Sun, 12 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775954253
