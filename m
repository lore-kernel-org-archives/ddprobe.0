Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EA536C5A0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762864194; cv=none; b=S6gxr8LC5TFCxkamuyBnEZVEUywFUde3/umznZnfiIU1qSqGdX77PZxLYQjyxXgFStuS/1t0gj+cz+DGPVxnScnalzFqZVlCM7DttKFs6nJsHtnZbIqPqnUMow9EARn5+GfhDxiVrDU8Po+neQjnbIOnP7oDyz9OQb8bMmzKl1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762864194; c=relaxed/simple;
	bh=bfjMwF3nj0/1Q5uErUdW2+kQ8wj4YHsEVt6McZ/tGSU=;
	h=To:Subject:From:Message-Id:Date; b=MY77kal+lfUh6U61ATeA+wBnfbxK39Vd+hKm8NLZWoI76cJBPYLp87VOvDJfcL/OqCKDtZ3kQjz+VdAhK0/uut+4iPIcnkLJpGhqoRZL4mV2JJswXf04PCbQPwDevCDOSib3+o3+UwYXDjzAOVldpP78xrUOJHB90CAk2qEZevI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6Eo7DeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6Eo7DeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1666C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762864193;
	bh=bfjMwF3nj0/1Q5uErUdW2+kQ8wj4YHsEVt6McZ/tGSU=;
	h=To:Subject:From:Date:From;
	b=B6Eo7DeSgAu7zFjqA3p/XZiFnMIdlCAc9K3PdPUaeP1ILu2w7hj5qIZdJSzh2tNci
	 dBPOaHH1Xb28yL90skbGB0AeE5OA2NLaiSR9Knno9VBe0FXJmMjXCr+NncYoFDKOp1
	 GT7gFvSdD/SXNKi83GSUApCJTM0fS080RnUgeJBr4czEN4WgTIHcPCVeToLPMrZNU/
	 sTN1vDbnVOXRyXRNQRYYgqndcQVn9CX3JhJ0K7ZVMzt8fYNRWYNCpfgrdoeRIZ3pqh
	 kQM0U++Mow+Q+eD3tcOnKRZh63SXnKo49/Jc4Qvy2eYYbJ/CPR9NyZYcUvJtdFygC2
	 rgZm3pQYWBFZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0DBCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286419357.21504.7542822994568265490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb623a6a3f724d0d8edb1f7d4dc653e4bdce63c6a2dd817681038c1711cdc2eb
Date: Tue, 11 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762864193
