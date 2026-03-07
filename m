Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F357521FF23
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772911494; cv=none; b=sPPm3w1+Ij4te3h+fL3SSIJpjjrVKOj13nKs0feI2oukZjVe3bwqKOgfYPwRi1gmQOlmpNuAuQwMT6NsjyTy57EVC00JhlMIQBjjDgVxX+a6Jq0ANaAvIHNtYYHZt/EuDIN3ROcVSOi8HdbFNLSu6NcZTdpta1V+LHVu07CGpjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772911494; c=relaxed/simple;
	bh=RxjBJowNDbzdWrDZkicTUdNgbe386hieNY/IkjNll+I=;
	h=To:Subject:From:Message-Id:Date; b=ImaizqyWBT/96N6b3c9WW7CSGOMgwcssktZr/6XhdZWtqwb29ZgFlwC+WqoEy7puneYQs+SoGqtMQF3YrrNYPfx4jeOhiKCWwOCiHx7K5wFd1u9uBpwewV1A+8aB1Uefj98oKBnAcsfxXQp+lePjTJmoF7/zPVMg7RXW8ftRPH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agBjUyXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agBjUyXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD2C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772911493;
	bh=RxjBJowNDbzdWrDZkicTUdNgbe386hieNY/IkjNll+I=;
	h=To:Subject:From:Date:From;
	b=agBjUyXM7ZVZxVClZLsUm//R7cXXFFdjlVrcjKuG1TcUtWwk+6ePrfiglWYiP/yMK
	 fNi+9JAWCzb/2OwQg1usN3od9XnyIxSvqTfXYsiDxSxz5VAQVYkB0vTppiP5pL5g4H
	 8cPRKx7Irg9eUJAigu8jddvG05F8zQ9RDDtjwKdYUp5Zh+3vA6pBS48jlw33jJEPwt
	 BW3TQbzM6N43IYelX8cNKQdf0nBQEY/e7ungQYWKV3WzmnEn7uUYFHMoyoh2osULiA
	 nS9dn8Fpkh2EPLOxX9MPpX94xSbk5RNoHzWMcTXBEOQKvW3E2+US8HWlY2nsw6ZPO9
	 WsoBDbIwtgywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE06F55104
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291149358.7245.5397630761263846586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3672cba564b84550f5b8db9db2cc865b6cab25849d4d6da85055d387019d12
Date: Sat, 07 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772911493
