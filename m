Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331161F78E6
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758453594; cv=none; b=sTukUKTZUjuY1zr92rVtp5ggVRzSkD789HUD1fmWQEaPe7lueCc3nGvYaqoCDwalvt5uJPFUOrz+TCRoysag6PT4xPmuxsHGr56JRSvW7wDIyTkUmA9iPw1WvnOELF+6Ec87gMHeFWydVRqka8LVxXX9dPNR0KukEXAK4ZlnbnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758453594; c=relaxed/simple;
	bh=EqUqQ5Csc8hWlrYpK05loEYo3qcAItgjaU4yP47RRbA=;
	h=To:Subject:From:Message-Id:Date; b=HppKmjE4h3HEcBfKcSUB9KwU+ftlC3FhAap9E3eYFwpteJ549NiKJu8n0m87Is7lTFUGtKCP8QBUX/tjeqCJcj9x/N74kHly07V6mFQQqEhXN1wltE4d+L8zs2Bti57M462lBBvKJ2Itq5e3nuaf/VWFGh4U+dVYoFsfGlQdQtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIOo2/zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIOo2/zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD44DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758453593;
	bh=EqUqQ5Csc8hWlrYpK05loEYo3qcAItgjaU4yP47RRbA=;
	h=To:Subject:From:Date:From;
	b=XIOo2/zjutcrN2Y9Y/AJ0/maqyvX5Ajxq+vBcvkZFrjomcdzCB33e3upJz55qNkI/
	 tjCUGdAiaeKqffbMIFOB3T2q01+qJ8pr/+37h5n/mbJZwORYt9ErtvafMPNQuuZKHs
	 BLHe08GNgYpRCnBa8QAk8lqTe9kOwRXO6MxTlrLltEmgQgku1fpRW+2zfOBItQqdjh
	 x4umFUp4U2uDBgB3EY2n8t8v9YpmlLQKVsJHz5vvA816x5J/F6Xx8EK799dK+CYbHJ
	 rPdXx3kIYIy6Kl0zEftLrTwZQfTqriSpIjPsKG9BD5ZCwPzcIQZGneiaZD0G8Rvm3f
	 FvahD+WVTRiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE54CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845359360.24150.6138684808886660209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbbf1e27e7d004bd8cd1913d313328358a47ef3d732650b471e59eb47235a573
Date: Sun, 21 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758453593
