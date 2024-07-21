Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7841773D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721558154; cv=none; b=Wdc0yz9VmD4nfZj+AT5hIUkGWlI/2CEk48A+C/u6RajiHWT0NE1QeBLJRDeEWHGl0S96skav6ii2UH2dkwK8JIZF8zqy0j20FWhjDfsd4XLn/X8c7fcM4Sh6x8QoqNhPDxYVRUpC14xvSZL+RIQh5j9xMqkIjHd9fhrV87pIjOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721558154; c=relaxed/simple;
	bh=Jc1+CSUP8JyOtkni2CM4zS5tFsTESSBF8DwK/GwRIEw=;
	h=To:Subject:From:Message-Id:Date; b=YZGHR+jzj9k29aIxRRCR6v9J+fnmBPRHQSKIDCLPatgiOCMDZ5jvbG0t179S+bpaeetE9eJlj467zla8aTx/luE0VFbBmZ452nORNH2O6Wt9PzDL72ocu3Z6RO9U2BhVI2j09iTZ0Iv34btcMvDRP7Cfegr7AjdY5JDHE2+b7Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2Hx01db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2Hx01db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6631C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721558153;
	bh=Jc1+CSUP8JyOtkni2CM4zS5tFsTESSBF8DwK/GwRIEw=;
	h=To:Subject:From:Date:From;
	b=Z2Hx01dbgetmzVViNLqyVHDt6dLlXW43VEQAFOoS8ccy9rl/wQoxyOKMzIUXhUQP2
	 vHAOtYSRMVVjorYEeaRzS43lIMm9YXpobE8eAbr8t1tJ57ypMnbNzCYVCa2VeSSaTi
	 JgBlkxf91khn/FvAL+WjmMbPotcO+Fe5Zm2CdZWomZqTzXql2qRbwZ8hqHMDJcwuj6
	 1AjRTsb2x299oPFMsl/WHN561q4+cEVgav4QWKVbzcYHWLS62UXzM88h+PZGX6w54Z
	 vriRablJ01Ki5Di7p2gnbXO7YBxQqtaBLkyhchd0cqWLCI7duohBYsID1V1m2wdrcS
	 E+Np0qaXmOBfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2079C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155815363.15927.11951646036419856170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355af9e68713655f6702021a1daa9797ead74286605a67e559892f382777b0ce
Date: Sun, 21 Jul 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721558153
