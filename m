Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E4D263C8F
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755698994; cv=none; b=b4Wqut+dVRGcGxxR7W7MltoMLqRXQ/LCvQlCw5gGjc0E9AH2eJm5sbwAV7mo7d4z8Ww5ON76meLsW9RNzuL+ZoJyZdkTU3gcn9l37PlTjFqTtgXSME5PSRCQOjBXJf+TZqGxHybMYSHMyE3w/sh1eSn0PM0lTqHtmnua3l3hU/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755698994; c=relaxed/simple;
	bh=sRczzhDo+/6dPVxjTeB/yqh6c+jmT5fvfElffJXHQxk=;
	h=To:Subject:From:Message-Id:Date; b=qgmugxeLdWHd7pa6yid+8d+envQNNbMjKiCmcOq6OTZX0zR1dGc6d/MwM5hbrQFBdKh5gGmY5as7eG+aI7rKAsTZW0Qou5NTQmyDNVV2TcV3YgU1MnxmtfYdkd3/ENDOeHAGEIo/OUbIErPvIjJfJ9k+PSTCEtjbFuO6WaLK5PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2Y/MJxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2Y/MJxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BD9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755698993;
	bh=sRczzhDo+/6dPVxjTeB/yqh6c+jmT5fvfElffJXHQxk=;
	h=To:Subject:From:Date:From;
	b=h2Y/MJxYUqICUu0HlEotujupkxMsSDucdbcyvk20q5Z7l1OLS2s6oeNAICf6sThYX
	 ziGZ6oL1Gj4NZFt+VCKh85ii+BJnihkjsVOyBePtdx5HzOQMMMfymdjHcO047UFOqN
	 S2dv+saHg++viWBcxPXCgS2DK9ogRcwxYe/PmKIbfzP+la8wRbL1qnfJ7R1Mlp6sSt
	 0/7PLj+1SDxtLtwxCC/zfYNg8WTl/6PH6a3LSQGguT9o4SCYaER+IWIOo0Xw6vrjKC
	 2dAoYACsKt3o6YqglSfgh6vqRPu5meTGzZlx/GqAqwWXxbJt8i9wQkLCsGLEEK/0RX
	 SUruUx+zH/mlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B3CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569899357.3491.13537510596963379141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d647cb70b5e9640bcbf403c17bb866a90a36ee3d7265046cb118ad5fd9e16ed9
Date: Wed, 20 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755698993
