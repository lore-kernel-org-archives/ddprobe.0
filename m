Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA723D9DA0
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780050754; cv=none; b=SJ+koXr5a8ZJu1eOYtxIap++Y3vnggKntQY0PhScCSJ+zEnSkZisjNTWAx/rOs6EqtKXsT/aKRK0BENzZa0QQ74uuQ76teGM7JSSLeBAJAYGI1vLKKmm/kdxcYmZuUu66oNFXo9jkwc1ZBDpsVELAXfU28uLrIqNhl0ofQkGxWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780050754; c=relaxed/simple;
	bh=SOAyLymKdgX7c1zk6uM6YlDwn7DqVq7jtPrSJoz1u0M=;
	h=To:Subject:From:Message-Id:Date; b=mMdZtxZWkkb9zOZXQbCUMQQLXaVak9rYuNh37hjbvGCUANWwtrs5DneMUbUpieIWoN2qHJeqfeQdeC/g0fYEO2CQVAKePvYT+Eds++4NqkLEYjsDKRXyar7p7Dq2PnKScgV7wY6DfmSf+469NOV7G1v/9aUbiW+gGYYfV3e57RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhjH67On; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhjH67On"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD601C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780050753;
	bh=SOAyLymKdgX7c1zk6uM6YlDwn7DqVq7jtPrSJoz1u0M=;
	h=To:Subject:From:Date:From;
	b=nhjH67OnIy30YLKpFejhuD7mxZnBH9siy//thRt8CLSmdNSBdFWu4mwn149bNqIRl
	 PtWjwFdR0y4r2/seAR9bwIoIHuKt6UgLJgJQLAqejul7b6sFnSY2ZfsU+eAALPiHZI
	 bC7B4t4kAUPsNVlFyhd94r5PgJaKSPJtlQhMXt0/Pp6oZUc/KHXeetDjsm/cQk6VFQ
	 dOQDbwfuiD9Fq1ZFMFvWUqL5MHjTa/WFb1ntqr5EpiArXxdvSDj0WtAFpKp5HW+BtP
	 vbCgDR7T8DCXCvutgw2UuEOAdnFQgO4N7FtTAvah6ZqaJe3gdQYgRe6ZHMS5Sv+Jbj
	 +MdsZTzeFgkFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B548BCD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005075371.12216.4181523573214381269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef061df68c2fff9c8aa62027637f45d875227b24dfa725c3cdcc0b222ba0dda
Date: Fri, 29 May 2026 10:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780050753
