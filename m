Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CBD18A6DB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784482114; cv=none; b=qExukmI+ExdsRG3oTRILtz1YNux5luXqeOS2AatYJSDuP+uhHbbLpiPzaCfbvaZJ15Nnicgfz1Duj7yj1ox8RS0NdtUOmpx12W7UgA15hoMBGx08pUBAPGwhm6mPnFV43rSDmvOT7qZBcDS8q7gyw5q/ycrL8b2ScWOUvgzVgiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784482114; c=relaxed/simple;
	bh=PjYVyP0dWox7z9u19O5Af1hw3rGgvVUXxsqzshBukLU=;
	h=To:Subject:From:Message-Id:Date; b=h+tBZihoL4YngqDrPXIZE2Lhx9lJFV5pMfkkG1cVyeV/Y6AwAcnKJBKue+pieqtuzInhKejXiRExBMC6lYPyXsEqULRVxWSTs8jmls3O63psA/0rZekUThxDhnGiDWwNL9Dgemr7auCkh5xPO5/LheeXW6jJR+ClSeaXSuZIoMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHWCc4Ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHWCc4Ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAADBC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784482113;
	bh=PjYVyP0dWox7z9u19O5Af1hw3rGgvVUXxsqzshBukLU=;
	h=To:Subject:From:Date:From;
	b=cHWCc4YenBAoO8LeqKrHTDDbQunnqw/MMUOerWopuDHUvFVgWSCDqcLroh9fCkLe4
	 +qfjRH+RzfRXc82TPUbUGESxUddu17XzecKFpsAMCtk4wM6xlaJHldDup/4BF2rUSn
	 3ZiDnYOM2jMcRww9oj7giBDI6w9iVrJ4qXWC/5qvvluEJzJEWzzOp2rWHYe9BkbEzp
	 sPZ7FdsDCwIKZVA3jWexeWg9vqbq0orI99IgZS8AVwKHDH9PGX6/97PjUC0MywpyXy
	 z9bATSsttX+kknt/MtSz9KGQ0jzy+31bCiIhS4HXvvZ89/ezq5oFU3yI3WNpkdltTP
	 pdrABmwVVq1Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBECC4451B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448211368.19624.946176242201358300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98a420207fa75beb4b529eed094d2c6db2473f7f6a57dd658609d345e6e75e0
Date: Sun, 19 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784482113
