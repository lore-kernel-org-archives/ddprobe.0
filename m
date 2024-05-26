Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5050F13A257
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716759263; cv=none; b=uoInDG2gC3YH7y4JPPAOkVTFnFgVBeKlt9rgrYV8EL5b1MOP2YYzxzgEl1VxoxyHq8TsI0ffLToo9nnrjBx7NCsY6XVQ3Qbr4REc4bIGcmBctT2VEZj7XjMmx3hZtNs9lrDFoDFHio0L5moTF9dqHOkcvogE1hA3T19lqmWfG9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716759263; c=relaxed/simple;
	bh=1yJt7UvumVZ9w3BU8imqDHa8nOdnrpjVgwMZXG+mSws=;
	h=To:Subject:From:Message-Id:Date; b=t0N8KTOavECxx0HckWjg2lxOZ3+oCty2fN7gadK8CQQbwVqVr+xKJ/mNsUqw8i9gR0UmRADlWf5JSCSMW/k+wuucZgsx3M/yxLYvYBqj9unzlriNO/LghKXZSGDYgtNWjTdjpQ2U5e0ksHrXcP3opo1fFmATqNaY2fzvONQw4yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omivPA57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omivPA57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEE5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716759262;
	bh=1yJt7UvumVZ9w3BU8imqDHa8nOdnrpjVgwMZXG+mSws=;
	h=To:Subject:From:Date:From;
	b=omivPA57u0AMbpjWMnXt1uh+e5/metLe0erBSOK2y23Vsozv2goIwVh1jtXCeRiJX
	 kCSBKdWMufKOcWYg40hIoxDZyBFHn5bCSpF4jN4UIYEHwPP8Voj+s+6MG0Vh+xxxZq
	 dosQyqb5yabBIadfIL7USTZc+B1bm4TsWz0OQpo6YpIc9UqvzcupSD53UreRpWzcxh
	 EZn+KmxYjCHhMwS4zUJ7fEX34YxykHIUgn9XHIJEGxmqQwJiEZPx7FPk9hqHr5F5/G
	 LgZKhXbMJcD9T3M4CnHpMMdl/YS1DKBOSp3LI7d4CTC9xxOVG7bgiXqdorjIkH+ozN
	 9g+HQZIYz1zMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C971BC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675926278.4897.4003121639685540663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b2045de55d8273f01d5ab3afb0d82a0e610b5f0a334cdfe0ff2f787e9551b5
Date: Sun, 26 May 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716759262
