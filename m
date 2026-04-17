Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F36B34DCC7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776421054; cv=none; b=odHxbMBSe8fZL3rN7aGnp+iO3Ns2Sm3jaoq1p/LXRcEDHAYQKHBbW99/hy6vjg5fQglmW0mnm0cvEXti8UL7kRliETkABcMNM0719vvDxWpgEtfVdnFCI9hSk4HReuBu9luK2knQ/ROeKOcVw4xEHxWKhbEr6yMCjVdqNvrnYFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776421054; c=relaxed/simple;
	bh=z4gGmEN1Z8PTIgPknksM32M5ptDcEIFJ4SspLECqjhU=;
	h=To:Subject:From:Message-Id:Date; b=XKF738/2i7n9VA6vituBo+pJ2zdIzPYNiUAd1lsHQIlI7MPtjopCqYt3ye8hKVkhXvDJuGJc9HZOoQJSWmsd3YZaM76hvv+riWhtGQlB4ueOkpde70g0tb58+lFxEb2iJFvK6p2vXOVHVyfkWgg/7bL/RSiuP+ZIDbWG/U1bD10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihlfunQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihlfunQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B989DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776421053;
	bh=z4gGmEN1Z8PTIgPknksM32M5ptDcEIFJ4SspLECqjhU=;
	h=To:Subject:From:Date:From;
	b=ihlfunQIKbcQK1JTDIGZzlSYub9Gl3SiAO6QlvMA8f2hKEkIsgdl2WbqNZfz3K+7X
	 ox/Enbm4tP7re2MtniWWY8Bh6tWPPyBBPeccV9NK88eCx8cMRxaDA24kzUueZ8yeV9
	 6HkNIL2y6dUsOQVZEPZbJkG8L/Y9JLixjc2PjTlC1rQnQFvIhCAttdEIDo/PAtiEdm
	 Si8ig5kckMElWm+4HImRnL3pv2dvaFZSCHq7GADTdAmqinB5Nwf5Yga2E9hUYvszaS
	 HKs/jv1oW7HzakW4VHb7lPmBDOBBQEO693t/R04nCh9fWDudJIy4rlvuzHvciyXl6/
	 TcjKcoEGhbfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9283F4368A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642105368.28026.4729884876752747764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84740d1ea9749f787c95a3eb073200cc709c722eddce16555da569a227d24eb
Date: Fri, 17 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776421053
