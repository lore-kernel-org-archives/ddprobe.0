Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5C73FAE08
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779804754; cv=none; b=mYhzKeIr96NuWbPcwscPnJfGc8Tahdf0b1FQF/zXkiL8S9Z4KHbt7Itw7jpSrvsXyN+xLBLEYZCMKhN04GDRHkBH29kOX+vyioV+dmLrksafhtEpEV4rDBZAZGuCNP1zZ4IgDstHZpwsF1FtQ2+9YGqjv1E9TufFtSa9FdAbnbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779804754; c=relaxed/simple;
	bh=9biU1WD/yGRK2+mXABoSqS7PtM3NRDE7He6C37ONnZE=;
	h=To:Subject:From:Message-Id:Date; b=T2qKntaRH4yZI0ta5cxSnNc8Ao7nY1v6h2L4weyZqrUvfc2qqE4TY7ruMjkehrLkjD6bvuDV2ZCW9+GgYx1IY/NF0XPgLKQ+PqFSQLtzC5hwekOAAU9IvY6oxUJUJW+2WAfAOx9HiUFgf4XTlN8zl18RKUVWDusZSFlUHrnpSWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+mrYsT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+mrYsT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09F18C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779804754;
	bh=9biU1WD/yGRK2+mXABoSqS7PtM3NRDE7He6C37ONnZE=;
	h=To:Subject:From:Date:From;
	b=B+mrYsT4oo+hHv/N97ITKmU+TzBXc0kQN0XJTFLUo3bZj1WMamQfAjdTZZSp27VD9
	 KPbcM0OXr8YoSe6gTbH3CEFnR0fTjv1PfruxfpyOxQhOhc8noBYC+yb34KII9T12T7
	 nd7Fo5zFcvWLqxpRtzTTh2v57b55TECkUrdBTlBcyZnOpscaLplKPYXmmFLxt09/j6
	 Cz1vrS2Ht/ayShVJKkN0lia047N4pJF5kmjTsRB1Vqoldmz86RnnEhFdQu43b/8kCk
	 hiyJpWigUELCZWJAz9CKuv/BguBvtP1lkWYhQcZ2PnHDgpty5PQhR1Hg3WTMcFnb7X
	 5DA8UdNfP+i3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35D0CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980475376.2246.7042803243941252962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904a69915d71c4cd5926b1f9fa0af3ac0ee5e8f9feffb8d9a7c23480efd49503
Date: Tue, 26 May 2026 14:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779804753
