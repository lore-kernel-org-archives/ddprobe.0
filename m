Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDAE78F3A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775280334; cv=none; b=XwzgyNOXL2jTmc+ngoPKgQ2mtToptwYuZfi6kLnbnK2HVroN+pBzCHyiE/8OdowOPTUJ0iN18MPh64AX0PIbdSfG6aabiWuPgR3Z9IOIRnQZx9JCFOqxFeZtSb9z7OzIEKsO5VCC53JBSbg/NmH0CUCE+BrW/8QPlpDZNj+echs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775280334; c=relaxed/simple;
	bh=h7Bp7Gsk7a07UQRR+X0TDSYdZ3PfL25AzAiIESlQQ2E=;
	h=To:Subject:From:Message-Id:Date; b=Q5z004gGJhsy4BspoLe3OIy2LrV+NvrFQIul1Z9RBp9Lqq07+0Zdy9xxXRVvGdkZZZTOtcblHR8hkzAT3zblMiTS+ZNEIiwWH2TBhUreFPV4Ed5NwelTEYDB/u6AcBxC+3aT2I3nO0T5184QnpPlG7C5wtqVp/2r/ITJG3VpKfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGvmChPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGvmChPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5015C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775280333;
	bh=h7Bp7Gsk7a07UQRR+X0TDSYdZ3PfL25AzAiIESlQQ2E=;
	h=To:Subject:From:Date:From;
	b=KGvmChPG9zVBrMmzDHc4/rnEspcKvssP1vc0bLc8ie/Lp77paxH9V0OW9+cRYnfH5
	 j5QGdNppp5MfAtaqmXDys+eoClDPA+ijqWcPGhY6DWugjw/KIhrWRwVo5tDzmdngaY
	 4rMTlNbPWLSfCWaftaNVX7EkZoaN4aoxJv7iKJiDOMMpDsYuX8xgVZrxG5WjVTW8BZ
	 JgJKnO8tWTsHS9WLwQuGt8Zuqwmbqi6VLxs1Kpid77eV+gbrLQt6yYFbhsqTl+V2N0
	 l1mcOdWU21dEJ+yvZw6PXQcK3Cxn2WXrPHYNndamLbJVF9p2+kBpYyM5Jf6rfT+nNo
	 OiolaxhpEUDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1315E88D70
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528033368.13743.1129720256900944443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7799340439de5f34b2faef58b38e8734e9f3cdb0d46c3f83bbe92c8672631a
Date: Sat, 04 Apr 2026 05:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775280333
