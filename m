Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E39C1E0E08
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756364394; cv=none; b=B8ZsNkYZLTvIyTT73Vv8w5dh5fsBUpieaoEiiCqlYBg2oUSH88FYVQuP2fSjgDoYt0NVa/d0eS7hnBv3ychS7sGrDxD5cGbWhFg5j2gN+wlkNTDtQZLRZpUCrCdqIcRzTdq9RvK2XmeVV7HLUG6vMJQmQChcfxrdTdmue4lq8JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756364394; c=relaxed/simple;
	bh=aKNcAmU/Y2aOHrPkeLS9Vsp6EEZMqqIUnZDutfXN9fE=;
	h=To:Subject:From:Message-Id:Date; b=RcFC+2uehCKp03/76I3Ep9K/QF6KdWiqVo65L/wBu8rwK9yx3p7tHqdOsXYD0dVOYPbyPlPWELeLI8/BFSlvHarwRyGNk/LZcwGowmHxJWd7pwOXXmQnFJQaO00XRzqg9xIP8dyE7ijrhqcamSS52raHgQcKb+Z+cMcCFsiGRjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hws6xoaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hws6xoaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A025FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756364393;
	bh=aKNcAmU/Y2aOHrPkeLS9Vsp6EEZMqqIUnZDutfXN9fE=;
	h=To:Subject:From:Date:From;
	b=hws6xoawfIvzdsX+HcchKpuyjkh7UIdwcK4DZXndEVSMaRpPNHvOfkzDxaVnguBHV
	 c3XTViC0pBmHRYybsRp667C+nHOrMaxzy9AfXihNEJHEY2SrHX9GqlpjuxJJBWhP1e
	 qNlFnEbqhJkHgrueNYyP6r7ZhzXj1zJPbVZbOlpjjkyhx/sBgACwlc3IiipFpEmnmE
	 39qjFeO343F5pL4rNim2S+Jm0ZMdqsVeXHFlofMJazC7ad8u5a6Y/BtTW5Exeg+izf
	 M2ihuKNcwdVdP1e6T0TxAjx1Q+LzLsC28nUT0nuK2sEYsC7Y4rx5fkmvpkMAMcJxac
	 BDhYf8Ey9nVrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA26CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636439357.21223.13410416469646969266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7675970d37d2ede565b65cce99e51038a0a0ed279bc45ccd2c63c0117c4ed61
Date: Thu, 28 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756364393
