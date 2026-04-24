Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273CA347C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777018654; cv=none; b=MgQ+7+mBIdwQc/RuHvuJ/j37vFyISShigCblGQWJQ5tuer5mYqkg8HY9AOpYmla9q73goAqAVjovcy+BHm09Mh4DYAoT4q19liUmw3ykMtPHlmLnNz0F3PlMf/x1jNVDysiBjE0/eUdwLaKsX8sKh8J58CySLkvQfO+m2szA77s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777018654; c=relaxed/simple;
	bh=DmvzpDfd3B6xPdxf7EulkCvcoeIUmdrglxZXYj0v7LI=;
	h=To:Subject:From:Message-Id:Date; b=i2c+GfJWey8oupAbgbaWDT/iEm9IJ905xlfIojgMAzTXCNNBDtYiZoxZCbqWpatvVB0jkebOUI6hlC5fQ/sW5PrZC/SddVrm2KRtcVh2Ga+OtrB3rjfZALe6XAX1lU2IckH8vEZZig4Ez2bRsz/3vje3s1Sfz/B/0ECOHw3L+LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lu1QJG/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lu1QJG/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6E6C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777018653;
	bh=DmvzpDfd3B6xPdxf7EulkCvcoeIUmdrglxZXYj0v7LI=;
	h=To:Subject:From:Date:From;
	b=lu1QJG/ffzS65jEIA+2kkf3WlQMzqVypPHjSzcUBFnJsR+jAdO9Q6EXvR+ZQJCf6j
	 40LL469KHUMhka3OKz84xtt4VZikOUVynqlBfMScQ60bHq+5B4STaj5Re+pCDE4LTz
	 9h4wJ2kda2QqZ4vt8V2/uWtQ6HAianeP/6RckMvp9aFlQtkslJ6L5ZduT1salETcsC
	 0JQRcq+QrdJItC2foDrFBFWeLsXssnRpIpdfH8mrWpioEOO+26TsE1nj/HTM6XksKE
	 nrBR/tt/H1lX3sSdlh0pPuUsZTaSs3EH7ueG2rpgvyMpiwNGJF+LmIF5afd/iBjmwU
	 w10QPxCKr6cFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A4FB44C4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701865369.19746.3955414115442324651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380d0f6eb612acc9bdd7c683b90826d1e13142e91ed717c226b732aa5bdc9a59
Date: Fri, 24 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777018653
