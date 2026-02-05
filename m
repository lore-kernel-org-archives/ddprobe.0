Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0763D2F3601
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770323634; cv=none; b=T1Ar+MtYRkkUbf3vXuplOxCWqnT9stR0C6PROZooYlYCB2eiv3ggHi2fVHhN6cumGUcWOlXwjr2gUFokUS7IDhEZYloyM1aW4NMaBEldB0Pw/Z7wZ28cOO9TBPl8/aGVGwXgy+FdLLHH6a6Grx9MCvRaxnfAcMhuMi99hKJ3WdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770323634; c=relaxed/simple;
	bh=2yTsVc3q/Ta0QxUlPmZ+kS4nCq7WMiX/ptzw7Tkoh/Q=;
	h=To:Subject:From:Message-Id:Date; b=uRaRbJwoKJleUHX0Y14qZKw1DjFiHppIOFWnIgEjg7bRzQTyOO+dezzC6hAtpEwBacq3ru7PbVxRxxzeu2yDtyKxPyzit9tb9FwEv3mXc7wiCCOsCZOBtHa20uJtIkJI13Huj4vU91CChAnDrOsyWpF5d20wixuJ3Hgz46wIVXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZcORY6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZcORY6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EEDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770323633;
	bh=2yTsVc3q/Ta0QxUlPmZ+kS4nCq7WMiX/ptzw7Tkoh/Q=;
	h=To:Subject:From:Date:From;
	b=qZcORY6FTz8L1cioltdEIWDrZ+sw6rP/QWI5ubHTc1GeezrLnYBf+jZr5WUk8gBYq
	 5in9+YOWMiW6WqvSUVKw/yIAIAcrWCgoR/cE2Nt9ZzFa91US6TQeo7tIn3wp5iHnJw
	 fQmw7fVyhXV3jJLOberjY7DKAzVK5F95r3oxqmZUP44RKN+IRgP0v2JD2mYNRaeold
	 RQjERWeihJ4r3cKWMoHtSugqRTiFyKbe7FE+U/C3acgMBZZPsSekFC7sh0Lhk3AeWz
	 xcuq5pjCilOk9LICfqP8LXrro4Pl8lgzLO5guaqMJhbwvPA5uyyQZzuLwKdEP1eeZ2
	 I3vqM4kobs/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F6ECD99F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032363358.18297.13076961715581501992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d69ade6af42055e221e25bbb0dd557a8e87502e7e153fe279155d19275f5b33
Date: Thu, 05 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770323633
