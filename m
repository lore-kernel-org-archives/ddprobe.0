Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3996513C691
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721765154; cv=none; b=jPSszFpEfMlz3zGZniF8IQHqIb+TGS9WCeSYq+nT0ZJzwt9oelQli8/ohBZJxxtf84Xw7n4o/y/beYWWOn35I+wmcJNfr7U46XIe3O0BvaChyTnmQ8h4Ja61UaZOTJxQiJZQZbrlinGaaGwHzInic79Df41fItWWc8kXFd/MFXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721765154; c=relaxed/simple;
	bh=u9FhBj23Yr5D8Rgn5xhhGff/hUdQ7kFPGH2OLmvBa44=;
	h=To:Subject:From:Message-Id:Date; b=QFAuD4TByoHn1H3aKd1QxXyuq9K1MOK+HHDLV29U2HsESzHkdA3o+7mcQUmWAidR6Lvccrz2qBAzNaaUWTARlaEt6ccGh18RoLDX4egqkOO+xzg+3mlV7JuYzQ9jNwLYgYKYd/2ACTpAf/oKHsALWi8TmrF2g1UtBB33OghZWYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyxQsHWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyxQsHWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE812C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721765153;
	bh=u9FhBj23Yr5D8Rgn5xhhGff/hUdQ7kFPGH2OLmvBa44=;
	h=To:Subject:From:Date:From;
	b=dyxQsHWLXWpyBpk2TWoSY+Mx7ZdaoSPEpcD3AbYVD+6jnm4TiOSGg21lrtuXqOn5j
	 Rsl31JZJXVV62dOYnooFdBy0sa70Bar7v7t3wnqyyUP/QNgmlHnnGlB/5IBs/B08YC
	 BzOQbG6bgiUzkDYDhD5VrWrW1r5/H9PhFvQi0o7A4cQbIy9i19vzI3UKPobSfsfDqg
	 IU6WzQV/m6Z00YQUO2q+IwhgFLVc3PTXbaBV5ohH8xbzotmxdAOEgwDuC5M4KtJKB5
	 JPkbMyDkAM3qH6cgWTfuX3GgVLMV1kZSYwbU61xPd2F+X1AFLZ6xRP7GJGRp/dW7/R
	 axvBGykLjf0Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A123FC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176515362.15955.9534917530842763878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2efbbd01192ce4b350e09d0e6f6d5426ddce46001b3da76ed910f8be49c30367
Date: Tue, 23 Jul 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721765153
