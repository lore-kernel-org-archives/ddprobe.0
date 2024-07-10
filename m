Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2BE85654
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720598783; cv=none; b=o738pHsU5sqjzrEus4dG9USbUxnDMcl1T76K6w3ZZI5w1clwWPUQAQIGJdu15KFfAGsjsDFZSn5IA66V3HqIlMazedL5QyKniXAvS/mEv66YEQCLyK7nPxNwcQlE2uLJvYUBIc1PnL4JEm/ifSNqoCG+7yZ8D9VF9aQo7pheB5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720598783; c=relaxed/simple;
	bh=wC/ID6WEft7uakgIF05ssmXdvwAnwwK9IdERtnaaFRM=;
	h=To:Subject:From:Message-Id:Date; b=E5gQXyNPVaQNd2j9iS/df8o12t6LkY7wVsr7kABbNbBtEl78hKBx/MQLUOMfKM9f4p8eWxhuLaYInVedrqFD4MolKrqU9RMigVkGdLp5KjdBHkfr0JmmdhnlQ7vSoRtRjDsJNXUus1ZuCE6iIgF3LIp47SDs+L4Zahyi9EM6Vmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBTNfi9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBTNfi9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD3EC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720598782;
	bh=wC/ID6WEft7uakgIF05ssmXdvwAnwwK9IdERtnaaFRM=;
	h=To:Subject:From:Date:From;
	b=BBTNfi9qKb4yc3AFVDPzgeNk3Y+v93mRShVTncIMFPiWLWKDTppfKD4mAOTOnk1Mz
	 OtFNPtliIQLTY0MWQnEY5jGy4LZmCfWAvE3i8Dw1zRTVNVzaTh5QFrFOiaxXQEUYLz
	 pow4jQ56p/jMTa+i2xRt4XLSSjoA5Vvn4tNRs39YrS/FcTsJLnD5ReDUdzGyxFMHmX
	 pePn2M8eRxK4lIlOWm5K/y3qVZr9VXl+CYB7XIgTyTlW1LQk2DCN6e16JFE+QqZDd1
	 KBBVmPsOZY/ljs8HERXYcIKgRMddeMh8lLQq+FyVXjjjyKJH28GiGXhv95YPbAoAd4
	 5Ies3Mhu7ystw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4987C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059878279.11258.8863986760028373637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be80d7aa38367627f816663a7329cd84ea69de0dc716c3af92c63241432fd3e3
Date: Wed, 10 Jul 2024 08:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720598782
