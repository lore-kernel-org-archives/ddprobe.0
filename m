Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E633232
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743328794; cv=none; b=ZObOEEjnXbydQwqtrsY7RtCRxwVyzze8/nrH1cVQ2MrMZGeCaGxqBF4hpOUSKHlrNxVrYeswc8ry7uMXX8F8oKlaYZeXgQE2Kk4xl2K80a44lGolP7yLu8KopmzRLPnTrf+7qeB9y93JBgY3WV3azOgPKjJMP2VDqIVtkTVWcJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743328794; c=relaxed/simple;
	bh=aE4jr3/RH3NjnDk+KRVPCFoJATLshlqCT//rgJFgC28=;
	h=To:Subject:From:Message-Id:Date; b=bOaMnYobYSXdKRIi67ELxi53f38JPKywuvKds9hTKD5wMBz7VHQz6AoYIACDE00s/w/0E1zEgtMc7F1PRgHKCeQxS9Jb323lA2HrI5yXrbWk+NzDV74PddEBUeZwww1NxnhlStIt7gUPscGQte75wngdBxgYC2uD3KxY0P5hSnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdJ56gCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdJ56gCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7300C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743328793;
	bh=aE4jr3/RH3NjnDk+KRVPCFoJATLshlqCT//rgJFgC28=;
	h=To:Subject:From:Date:From;
	b=YdJ56gCHDLa3BS42SJ6vEcImwbMDWiKrLfnjxzFBiLM4w9uM2KATQZ7NRHYbHKlU3
	 2es7SKkmYd7gVFAeL3xJoG9z3XNtPzjPWXekyPEqN/5lbx5H/ZjCz2vUQD86ROlFBO
	 nGtXaMzZ1HOhfyvxUL/EB/x7LZuFjWfExoCVbDRdiSmgK056Zw2sfdswODE9KjuHrt
	 z2mJa3G2Ba4FMKda3lQ4GjQBvORZgTp4APqkna1z+rj+UwNwsL/pHqw2BjoPZcPr5Q
	 bonO6RKcGSUaVngmmb8j8SbBVBgE0JdTZN+s2Y8Pe0kqBg3QgJz4H6895icEwpXw8a
	 fdqYYghxg5uEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C041C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332879361.25078.18194336694339355615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5b86235ae186009d856c522f338f712a4ebc3be8c51e9db1b40dac205eb644
Date: Sun, 30 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743328793
