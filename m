Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5E2500962
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768626234; cv=none; b=ARt2z/RVWAejAdd9OtHQoMz9+ldleHHWNKMdkptGE3mgntMTxq7SFzvyHofHeuZpkNxp67BLZig8ulcN2w1IDCGJChbOFnzfwtyMSO5+bVL2Ntkd1rkRcmKHSr+VJcq9kyObVNPOunCs/S1PM5kKezlGNuwVxoeeDqjh9cFc+CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768626234; c=relaxed/simple;
	bh=4163LngJv8MlVk9YSCVkXiYMIOCLCP/nGQYHNXBBl5c=;
	h=To:Subject:From:Message-Id:Date; b=fDnzOSjU/ta61kKGdRWRwtnO1MumT+XiZskg8LdR2ffM4zlakDBioD95L7bQ6TCTPMmoL5Rn9dn6hVoap/yt2L61mmEgWJUOhM99xn09Dfh+1b75ZpbiUELFqaYd3HV5BN8lxk6mXKqmeOSSz9LUITxnd8Su5ELOp9VnWTNmi5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9xantUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9xantUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5327C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768626233;
	bh=4163LngJv8MlVk9YSCVkXiYMIOCLCP/nGQYHNXBBl5c=;
	h=To:Subject:From:Date:From;
	b=A9xantUX5s8hmz24iec8LskYNV/eSJOYY9KN/EaaPq3Y0TMRhNAOLwSNuIrv264d7
	 MVs8qWcVDY4KSZthr2Lo2/IoXNZ3SVGS0/8txA8NOPe63ruOXtXZCuFctVeMp/kqsw
	 v8Z1fHDuJXAb5UOUrFdUgWqMZ4ZJejwDTYM2V62Rdn6BdQx4sROdAas7TEpi/5uT1H
	 Gv9ivMJgExT3eaAdOLLki3LQnLk3Zd2ZmngpZerTmo+1XkWEnJVu2Kkfc2f7EBbapm
	 zII8CPWz3SOM4s/dfhqCJMZf8qJg+GyK4zZZ+qq3Y42Bi8ARBI5QswvH2d4EnlLr9B
	 GjogW30yU0kCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936B8C9830D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862623358.29229.3264930029373124142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41cae146c0f8f24858fc13ca84e0dae723ab9eb2d623a2b9396b78a2a9d9fa2f
Date: Sat, 17 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768626233
