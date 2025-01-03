Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC401B87FA
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735905354; cv=none; b=FdmEHFu9d+edqIP3gr2p9kjDEooglZjjd5AplxlLkEBNjLTHg+2iI1hesvKi0i1ikCOKFW51TaE8NuNKT7dWrHK5LBMytM79t4RFEDcutFneInyBBAqY1q4kBZmPfn4YznYS2rswytk0GfsrcQaTzVTyzvfOQPW0cizf2JtQCa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735905354; c=relaxed/simple;
	bh=KRVfLSjlrl10hDuPNIHSGvNUJL8OFFdFgQ1l7KbK9Zs=;
	h=To:Subject:From:Message-Id:Date; b=jFFtzdMFzSb3ojbAgz3wWFOWXoFzPP68DJpydVQVQcW+gKcgzo8vXu86xnwi2Y0JatFZcLAoNrmDhRzMdXmA9JD488vB4DLkJ/5pqCm92gKhpdGTsm4zlS0X059yx53tyiQGIpOAYSViMHdIM3oyGse1WCY7tx4HHwWBeB2+7rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbDdvcXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbDdvcXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5FAC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735905353;
	bh=KRVfLSjlrl10hDuPNIHSGvNUJL8OFFdFgQ1l7KbK9Zs=;
	h=To:Subject:From:Date:From;
	b=jbDdvcXOx2I9XHqTQfvbsjN18xAeGtKsLEjm72QSRT5bXcNgqoqxMvOBUXyD1xVR3
	 KIc2RKZBY7EdOJz/gSlDKUjB0GSTSTkN8zFJIxH1myvOKGfo0zrHPHr5LLKYl45ck4
	 tEAFAPbsgifAyucVVWzfsEGPCnSAa20CcK4HcaJAn9mEP1t1y8LV0NPNeCMU4J06T5
	 Y6oil/W1bsL82v2LSCVhDJcZa6zZ71f0EoN0H1BGn9bnMsQpoj8arDAxm2TnvGposf
	 gAPngIgG2e8ZSYYXgVd8tVT+vpPfL9gBe8Q2D1eOL9MWyX1wRG2AE0uHfO3CdRrZKY
	 aK6c1u4NtGOjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80F2E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590535364.25766.11991370372822213667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b854f6f1d3d07b1efc2a9c67c3b524c239809e1d8721aa30a4107087489134
Date: Fri, 03 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735905353
