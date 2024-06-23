Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562864085D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719184343; cv=none; b=uMh85uDpkHhiduTEDIlfrE6upzOkdpRpD0vWlZetHxerAOV+c1g4fiMCzmRpJfFS8CEvpLuiTfPOxgp7s7fDdqUTt5trLLsa6aYkGweJQK0u1LQEtrzRof++dpVGdS+bI3gA7Sv6MKxT051dqcctcpNP4QfyzqMT3BUImZ4Ewm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719184343; c=relaxed/simple;
	bh=h20Y7sd/1kS9Y9ixuYRKmLtWDWDnNnj6sOr+llIflg0=;
	h=To:Subject:From:Message-Id:Date; b=t7zEsGIuIfXzcO2knef/+NURrQt2bEU5FIe+Hdw/ZXvf7Dzipdg9vx3W5qiabtXETwobTzDnPYBFpS4uSYbvkFVr6mJRrU3OOnSvvRLkVMDye2lXs60vet3qAxZHggdCWKuDVSml2jgsBen9V/hdkUH0XdrVAKjyNDQPkZPsE9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFJsLQ7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFJsLQ7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CCBC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719184342;
	bh=h20Y7sd/1kS9Y9ixuYRKmLtWDWDnNnj6sOr+llIflg0=;
	h=To:Subject:From:Date:From;
	b=vFJsLQ7weB6VmX/T94thzrsZyJNs/CgOlmIQvSnfBabRq4/Wf1d0GSBAN8R55UGB7
	 JNFeTy1n8PgVIdeDng7trTt4Mj8dPSYAKlz3UCRb43pt//CHkjmdNPrWIXmcEPnBZ8
	 YOqJKYiRieLuy8X1c0r4m4a8SFPZS3HAHoQ85m6mSJTUk8odvNM+UO2ExK6JvW5LcJ
	 DwwcC3ZGQEJJr+T4LL95AD4T5UIxFTM2VDkxp3kjNtEeMo8k0L770GUme7OYGWC2bl
	 LDvaJfO0twFuWUyN0ZoHFqwl5wkzEO//HM8j9o9NXCsIaCn7QFpBLT5ZyZsO/SmbXU
	 ODTs/nqaXABsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD795C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918434276.1019.5380108031432531754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda008187285be887fc3076e45f5bc33e761be000882424d41e62b38cfa44187
Date: Sun, 23 Jun 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719184342
