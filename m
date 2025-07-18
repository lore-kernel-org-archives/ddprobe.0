Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C04A14E2E2
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752866395; cv=none; b=XU1XKzn/JQiD7DCtfutLzTeaZKWP/jykcb72V85pwqS1gzenH8JvsncNdpOA6L5NDez/MoNRTtgayv6Mx96N/caX5US04xZZPD4+cdSrgWsJB44j3WSjlero9LAPTr3omufH273CsRg4jal6AXxfeB9CpDjEWKsbP19dwl278GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752866395; c=relaxed/simple;
	bh=owJO6fK9fcu13ZknVVViQuZ0cELcVsWqRrtbuNASFhU=;
	h=To:Subject:From:Message-Id:Date; b=SRBamfjSo+9phHRdMMXWsvHaBOESjS9H5pfapXiqffwBQHuWdxHYViIug+IzaYoL47z85QMb6fo3PvDMMBomojC3NyrHB8yxjWuOOKNbs9OgJnt6OpMrcch68/tQr5a24jY5TwPOLX74F5ZFBgk47xzVMvl33OPkaMqfIIZxnis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O50V67Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O50V67Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752866393;
	bh=owJO6fK9fcu13ZknVVViQuZ0cELcVsWqRrtbuNASFhU=;
	h=To:Subject:From:Date:From;
	b=O50V67Zqf88lU+FdjGIXoGQWZ0qazF4gQKqTvKgamLmXUCKA5MeYl+V+kbCJp8Y2b
	 poNrhlFkqy0Oc4yci1oMfjYvmy9UeK0CFiOxOHdKeKYzkmMVoHRGz08hGTm4L2ZLqQ
	 YRyu+k7ag0A+MQsfxgX8Y0xMyAaqc7Sxz7w9j29Yle8FXsX5pVn6kHsmk23G9WcpCU
	 TdUHlT5dE+8Z28dic3yShVUJI78wqHtQMbG9nawt9/3xm/AOgq8JQgsPEdOhk4Ex72
	 PJC0zGqN0twNtFKrTk1VBC0Yep02jRPu/sXNG4bKYU2tid3k13GQnBd3PQ0MucROfl
	 m7jgCSnatPljA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0AC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286639358.22628.18349036838267307076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1962eeb021ec04f184e7c4b618729ebd44b8d79b97beefddf28fbdcf9a752a8f
Date: Fri, 18 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752866393
