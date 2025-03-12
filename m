Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598551EB1BF
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741811335; cv=none; b=CiR0zeJ8L7XHsmSVUNJNHY1REEdFiKhF5AoIAGInuDUgVBOR0FR4Bkid0F54Rl/IgOG4jg3OsGpSRBX8ingeM70sJ/oqrw14yA8M6QlLi0rwd4MivztOOXsx3jRii3/X90VfreifMvsYopqdTAmS/cJB7wczKRHquMpFMPfefhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741811335; c=relaxed/simple;
	bh=4ujMhts0XPvRPcFigk1S54spfGb9wAJiwZFcHzMPT6E=;
	h=To:Subject:From:Message-Id:Date; b=U4bDQ7iB0GwrbKuRvesWBChdF5ZKECDgoSXZDqZmgr2jaMB5/8+igMi5RLDYrtwjF23xyhdDIQW659+I7mfEnoA0Hu1LucbIlx7oND+ZcyULQ9HBhMGgNtnrVlRLQs2UaseOjo3pSnlNQMTRuiHl9tjUZ+p0/14SzmESs90Cjag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4wJhW6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4wJhW6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA95FC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741811333;
	bh=4ujMhts0XPvRPcFigk1S54spfGb9wAJiwZFcHzMPT6E=;
	h=To:Subject:From:Date:From;
	b=f4wJhW6AfrQtWzUfpIQgYSaJaMudhlL5UWjXSWEBCrE1lnke2huWnruaYLzaq/4Vn
	 2tPq7v4A919DTwqXJDFTiUeNXIfvdNkIUgudEiOH6iqhlcN5dji2rzzmIsvmJf0HLy
	 BD/r122sHxZp8zrLqP2JE5U2r+nP+5iflpjOjeC1+2CJIYCnPYWdybHTzCYOAMgCXc
	 yfmR7bxoCRkJY0RYwb/dq0+n8S37NAcxxEYUOqHeGEEzEx2ZDuV3Bo+GNtuRxf8wqy
	 kkyEvW0PxZpGVkQTbmiWquntA/qgkLnTHheEzEHH/PFCnB+rBvSW82U+ALw0ACQt4Y
	 v9ruEYLCbWghQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A688AC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181133366.26630.7629135890608339956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c368618c9fb5e98ecb325ee8cc9460d86df3365491ada4ed1ed17c1d19e85b0
Date: Wed, 12 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741811333
