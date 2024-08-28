Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E41915A85A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724880954; cv=none; b=ubqziLGG0mwc5oqhQUX+yUiVhAmD/sfgTljX8QauVBxLoBxwG1MPwXzm+wiqyzw60Ipe9uqPjpe/yHfxYnJbM0SWijWuo2Aq56dSPnHU9Hm/bUtUpfd8TCZm9QPIXw5uV5olcgWdEmW+eDdNFKOsGs5a3HVGqSN1GIpV0nJ5kc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724880954; c=relaxed/simple;
	bh=zS88P/8+p9I8EgROlETty5eBpAORdkaw+P7X27+lZEM=;
	h=To:Subject:From:Message-Id:Date; b=m6jx+ie4u8MTJMuzZMfK0Qn+9023+9jSfz99OqBwJxUmJFdV2oBjLH2kXBYDk1REaePe5X9B2RUFMHz710IOqWG1RW7X8V1DpzAE7pwXlR0hSUdFSRgyZdc85UPR6Irc68Pr/WE/MitjRZ5UuvHX13PbSmOzVoxhctyIkfSvJUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujkjCf1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujkjCf1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F9AC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724880953;
	bh=zS88P/8+p9I8EgROlETty5eBpAORdkaw+P7X27+lZEM=;
	h=To:Subject:From:Date:From;
	b=ujkjCf1zt9jEBYKhS02+LN0V8d0pYD4qeB03n27jrOpHvu3h6zgizkcjow+aCPw7F
	 JXcOzZ6CelOGWt5pxLW37H55tZIC316D8r16YpOP/v6c9YFqQgM/uRjfCOmGyXkmQD
	 MyltHKWIE+V6r4KWXTT6/0cQWnBUEMKWaVTCQ+BCL0EiCCjrOyHRbpyFbdXjW7CpXH
	 dauuNsqorMq0sBMWfjtBMCJtp6BFpe8bRBXF6eUyHvixAa/pmOolYjMtXhwt9vsyzP
	 D3X37NalkjtTfJjz1+RL8PZvePUoLyVZLxmE06l2xyUZMMOTqdxhX9tho5m7b2dulj
	 Yy7TzBqy+QHtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEAEC7113C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172488095363.8804.8415070814498137280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163e3c68790754c759b2bd14ca86b5a4790311c1470082792a1291d3ae7f81ba
Date: Wed, 28 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724880953
