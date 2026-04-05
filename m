Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D86243951
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775426134; cv=none; b=DCR/27GKx7cDmHhaJrUQYZBf57QjFEIJpe9HXf4CykYLaxYTvZnuskQOM3lAuBuro52CW/ywLrPdag4Xz4+WcTQ4RUD9ZL6cVoZUQNBra5o1S/Q8Tn6rUc9sR0C8FE4TgaN0FQ+Ve4bnCEqhazBe4PxxiWrv4+P0X2r+UQUWuhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775426134; c=relaxed/simple;
	bh=MjWTTWbs65K6uEZ1C8U2q863/HrqRoAgnWUsVJpCYvY=;
	h=To:Subject:From:Message-Id:Date; b=aYV+6LjMyQeXaHu83joLDqHsz6L9eD0OHbrjE5/zFCua14PMla/gqHW3XmfsSq/wtupsOUyHIoYBZlKahxkMPDTbwTGT1cVTWBd6rsQu5GqoZ8qc4iemEuL2o2106vukWh0e0d8RLMtUSMPEffPRBFnM/SHMlRagW0UlHD+1Zq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCPGNBNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCPGNBNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6E1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775426133;
	bh=MjWTTWbs65K6uEZ1C8U2q863/HrqRoAgnWUsVJpCYvY=;
	h=To:Subject:From:Date:From;
	b=mCPGNBNxmoIbZlLHly4tkd7xB4UnUJORpk3VnrGDedVoFoC4MyyYySKpeKjIw3C/o
	 cOtnnopDgZxdgXRdVMO7KYFfXDbIepdUjC8VdkM5I0XMkcRghIyDTMz+FJrTQbs9qS
	 P3tX1jz5gZFvkOkEvU9aQbemA7YZ77b8xLzLBF71KPWEW/lhbfEyHqM87GaM19N4q9
	 aftFKcBSefQIQxytJ5/ln+BvtlIUeDwCE+QWm/sHqOxxhbUIFS4dL91Sij/MXrAZlh
	 sqq25eSz5DrG6Amv4rCUL6La3r5yb0Wo31U67ZgILBHdQliUYCiHbPAzC3LAUvoJsZ
	 i5oYlzTZ1FOvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF7DE9D823
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542613369.12013.10462393329072630592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350b32123340eb149a0e9e900502e16d1611b9265d4a1583cb752b3b78c165bf
Date: Sun, 05 Apr 2026 21:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775426133
