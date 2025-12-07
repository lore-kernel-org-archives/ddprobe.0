Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336FD2EE274
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765119174; cv=none; b=ge8H5S50hGuF09mCB5bqF1VT2XtH3IUiVThobX9mygUrDi5mmMjEa8Lgvn4l1OAFVCu/hbY/GP+oZTJ4PA4sJIEuCFHghBgqPcp6XBZvz+N5ZvQTcNTYm0ZeyGJp7tfygAVv1E2x57b1+aT1ezuZe38R84R5OrUTPkhbBGNlC3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765119174; c=relaxed/simple;
	bh=yXZrFGj3xYCKdEEXNJj6TsVfEZINp3/nE3EaRoxlFUU=;
	h=To:Subject:From:Message-Id:Date; b=qLKKNRgun3oAY7iznzrkhbltH2qhMdt6BjyevP08V5fYztcFxDz+ThICHmUssVL32YCiwOL/BUVUc864+9eSfWmjL3XaVqzyXa9ffY/Cp9kdrIekwqSZXCeIYcoiEXqxzYNUieOiHvu07sJk7AmL34wbxI6wXGqRnKWJjU3F0vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=er4PrkyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="er4PrkyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F14C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765119173;
	bh=yXZrFGj3xYCKdEEXNJj6TsVfEZINp3/nE3EaRoxlFUU=;
	h=To:Subject:From:Date:From;
	b=er4PrkyIpPu91jgV4CxDzG15IOPmCl2c2XhoAazYn+larXn9bUqt+HVsYYhiocUm9
	 3VjMQqXCKSKxY4giWz2AL182yubRjBcZNggdQ9HKwmc6IMMO41lrU+ZcueJgyH0zMw
	 DegGwT/bGD9Zjs/JcWLj95E6M9ZLk76B9yeufdTf/DAp4AFybPn9BEiSyYXZRxd9ZO
	 yTlXPV/SqpQ0w3/SCjZmxjMSTGsjUi72XhzUm303ov8IJ13QzFk6FSnkLBHXf02Iiw
	 oDAntJQwbMQjKqCE8gpH5Kz50VIw/itMIINadQtV8aVtKg2x+iqU3m8+derhdxHXzh
	 EAn2GyFHJGrKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95078D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511917358.25079.14665151300554490567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d18c26c6aa91e905618d18e5c347b098e030db80b0c04a709bc08ed04cd715
Date: Sun, 07 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765119173
