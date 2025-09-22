Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F114315A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758566394; cv=none; b=kArBp7Km0lF3sdBtjxoXsg0R8r80APQ7za6bXDrOLHt3Djb+Nzd9gYpyXRwydf5nzJrPTCT4ooYzRIAxsqn7alSY6TIUKnFB0zuf12+E5lraJA19EmeKJ/g74FymJaUUgOo0nzaXAHMOnkY2iykqVmAbIFS/dUFI0F8CHcOdLrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758566394; c=relaxed/simple;
	bh=5SbX7jhB0KJnT4uNOdE2EP0vS9SJUM/apwXhPbih0M4=;
	h=To:Subject:From:Message-Id:Date; b=KqT+733+LM9qyzNxY6uVRTYyESTNkwWGuI/v8JlJM8BN1KPNIKIjRUnd8+mFrnmPIsNXGIUPRfdY2+mAnL0+Rik7xmKTPV9fbShm51btF/jKEDlg8uoe59hq9eFq1Mg/itmYGyn/S0GQGsnx63QI3HTzewlZnq0EM29IQeB2hz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNn5ZkCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNn5ZkCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B513BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758566393;
	bh=5SbX7jhB0KJnT4uNOdE2EP0vS9SJUM/apwXhPbih0M4=;
	h=To:Subject:From:Date:From;
	b=ZNn5ZkCzi6uHsqBnEhndkewl6B6GQAaAG5F5aExdjgrj3LjsXOSqayWljmfzEKzjS
	 x5ZYo0B8out690XX0q6rXbUetQbLx7VHaptYW2pvwO5Y/lwv2I5zADEM232R7BTaUu
	 FpL7PvUYCi3J0A4iLXephFIsBaCBDpAcFkAenHZEf+duswdgSMrZ/ll2/dIm7A8T1g
	 2XGBqER6F5V1b+Dyc410F9u9TXbA3daJZBn6+MO2aOJeFYZkvtfV9QkCe7Uqg1ZwA3
	 8g7ELHA4QvywzWRktsyue+oLTwJahhCdTJJNr6VkPSxUSzTaFwM6td+u7XFt/NioOO
	 zBCkNNoteh7Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3C1CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856639360.319.12815637444305091264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8b72ce24f33f169e320957dcd6d407c12ca78d5e8ae0c15c4933450198e7bb
Date: Mon, 22 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758566393
