Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B69F2EEE89
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790988634; cv=none; b=RfzC5Ca9tF9Oxj6YWveDhfV9XJBhW7j0EGphlx47pHAHcQaRvSj7bOPcBACq6rtY2rm4ILz9ReOuNA3k3j2K/DJomLhZHkAHl9O2j1pV+9pwh5ExNRpsoVaLS6K0RbnDCQ5xvk87rNpHq8TPUNmnITF5TkTQgDy3Df8Y4Xr5aYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790988634; c=relaxed/simple;
	bh=DughAki0p39F4xJSzhz2rdUkwzkByE4WykjznKQ35k4=;
	h=To:Subject:From:Message-Id:Date; b=sSh4zVHC9gcKgqx/ZyFbZoVaCqhtNkAGzWCj00Jg9PuZpi5txDR8pqO6xBt9fim4JWc+XPDTOQSRuFjaLFyoEOZavIIJxlAy2GJFBSKYttmDJZgYsIPQCLntxvMzFt2SynU093Mitjtbado5nJECe62Og/JH6QCjAIHi6/Ulgi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2dLZ4A0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2dLZ4A0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD80C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790988633;
	bh=DughAki0p39F4xJSzhz2rdUkwzkByE4WykjznKQ35k4=;
	h=To:Subject:From:Date:From;
	b=l2dLZ4A0k3VB9KpDslvxRb6gY8tDhRsBRvLEEszHf3D82apcsK6TVa3TK6ln6cSGI
	 O+yLXx6Pv1HaQ7pP99YM3ir+YHlGdtko4Kf9bguBjpofEhse6Kwf05MNw7ZM7CGSIk
	 fI9rUSxgRbc/4+xy5ZPViHkKs3qJLHq6xxLIpQL1RS8Kl0ZzGtb3AMCSIIbjqOAt21
	 jCuAe5cYkOnjcvIPrYeLhu2jJInEp02HgrDqWsEuL3OocAp9wvbtBkWhrjQlNYlt/R
	 n14ETUF7UTH21RGjpZM83yBAAR3A9Y+4atZYBQ9mCDRVXXUMswmqAoSCZ+ezAdjIMu
	 KG1z0NqpHPIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC71CCA5FE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098863368.3730.5027981637406894108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e68bfee0107f460c63025c49eb6bf7a0b195a816eb7f481f0b6b17e390e0f2e
Date: Sat, 03 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790988633
