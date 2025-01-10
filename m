Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFA31ACEB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736547954; cv=none; b=Y+s1ycA7VfZHz3xZHHhjXtUl7uMHNTWhUiOEpHAMCgXT7BQ2HVFeKJJOMMUpo3QfLuv5bxppbSLpysh3ce7SVEmHxZu3rWhgZGSw83YjAttWiR0hpMhKK3lA01mfGPTQ9n48KpOYpPbmZRlnVvYPQVGtc3z2cF5ze7u9ASjhofc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736547954; c=relaxed/simple;
	bh=V8TlIPHiJwdIr0IRgoa7H56l7GffYyJrOIqnZBRNZqY=;
	h=To:Subject:From:Message-Id:Date; b=RLjdPb4MqhjyzlR2rOyeYBF9T3JYNTp9BKyfwFtaUoWpHFHpijxcCRHD6e/CigU37Cw5l84h+tt4VWdlIBxz4g5pH0ODsbscSXv5oLSo2VQECWqZJHRN0nZv4W3FQTLyI2dyg3pVAnS0HIgSn3JSwUoiUqMEEolT+fp8dTbdN3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZCUn7ho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZCUn7ho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1692C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736547953;
	bh=V8TlIPHiJwdIr0IRgoa7H56l7GffYyJrOIqnZBRNZqY=;
	h=To:Subject:From:Date:From;
	b=iZCUn7ho0wm21PUMDUf4ptcnzUlW7nWUxMM+BYf8Wi09pc5G7yHtIfHEc+Vy8kjqY
	 PKEp8bL0fMf6RQ5aBLHdgyp7yb75KU+Lk8JOlioBm1paTLMocADMCh+qIUUaUaXZYP
	 9Sr9XmPgni/eXj7fq/qVNnr3JBammEoAQTOLmpD9GE+GK2ypyiScP7XYomIsQeaBqx
	 9VmK+5Akl3BRymOiV66i1gtYP1lQM/jqtBXdmIKw7oupd5+ixsRAn6ehdsErdYmAS8
	 sXYZjl1YElWTM1NvPvH9F7clxZZS2dDORNUQNNj2m/BSQUPsHngHRfPT1lAC46J84W
	 KxYCtWcd6mylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED7E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654795358.6147.11019050760976102603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9de877949d642236828009afae856a62c36e0820f7abf8f11aac2373739236
Date: Fri, 10 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736547953
