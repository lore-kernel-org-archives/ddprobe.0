Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C14A1F03C9
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762463994; cv=none; b=kMSMHovfVW0+cbFLSNSORhP7P5tPTJ774WKGNMhnjRY89jFBzVIFKTSqpKWBMO0oWrC3gwbNr/O0aCtfYb27k6KGIi7BVoas2vodepAJIzmNNksfaZbdaVX3OSq5EL/BhKaBIHfTrs9+xV/ZV7wYgMGjPvlokohsWyrv7hifszg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762463994; c=relaxed/simple;
	bh=c3hdBwUxz6DCUaH/em402UAhoqs2pvQqtmlqQ+6ZaSc=;
	h=To:Subject:From:Message-Id:Date; b=LQEZQ91BREMmUDTQvQRpfVER6k2RjSgAH/+vlcvxMo9H3Hx0JK+fBvO/kiqjDOouljKsoR3xT27aDCSQ2wduTqi8kQU3dOB6zoplXCGA4eKq1gbYxNwkeCAmgRq5L9PfzuiicyHTAAFpwmDsxR80Sd8fwEsXYtdCHcBDH4Hk3VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrXakPjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrXakPjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EFEC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762463993;
	bh=c3hdBwUxz6DCUaH/em402UAhoqs2pvQqtmlqQ+6ZaSc=;
	h=To:Subject:From:Date:From;
	b=BrXakPjXZYbA0uHW6mgUCyHM17H3BYnSghdkOotvFNydLEx+nHaLkwr1d7u2Ygz5I
	 NwgwulMVRpin+vBx6lsrspVP58je9PR+AECFeWfqjTucbnOhHHkKtHy+a5Uz4d3LlS
	 9x6OdvP8yWjpWWeXA3P+kbve4LXWsuSN6sriCKm5W7bRN3vOUVLYbfU6s7ktStTKXD
	 zJXBLbaj3YOsD0lV0GugJSZNEh1aPcYq6DvrXU0EPx8k8mcgHD/Ee+R+/rg6qr/wuC
	 naq5lY4rj7OuT/x2zTyIYvArV/602+wSmYKWo/USmpGEbfj97c2/18gUqXNs7ccKc+
	 G8EWli63ezVYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9055CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246399362.2097.17121072185550199164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e5fd3d3b9fa8f813610136a5cc2f2f90874f53c2f7e07f4d4a33253558a68f
Date: Thu, 06 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762463993
