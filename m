Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D3E33EAF3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788376834; cv=none; b=NeSrEpp4mNsxdpCAKjbMXq2C2ukE9rVOuBUEfj0WS5HQH2U5Y7B0uO3n78wthy5QViGTbOTUqK44vrWikT3T34Zfm3FJQc0hD/ut8OeIwaX/Lv7gkM8KidmgBveAEV9/bcJDk5UaYGK4Z3x5jxlKH+2YS4kPiSQs+zpvzRWrYB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788376834; c=relaxed/simple;
	bh=HKQTk6ItudvAzfYd4GkbTa/nMbm2vZO3FYZALGRWYvU=;
	h=To:Subject:From:Message-Id:Date; b=D9FD+7k4NymPl+y/+2RGzyxBSR0rKVtAaRaPva8LMGHc4yMLk7+fc7Pv9Xq74vN5//go6IfOh3fNNTI90HlteK02az1X8POJk5xi3bR5+duLaofyP4TF0Od00WzABrTvsTjL1aF9P7M6j5owtJ1GI6BgeBw0TkIcRX5E62Ih0Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAbwo1M7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAbwo1M7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7F4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788376833;
	bh=HKQTk6ItudvAzfYd4GkbTa/nMbm2vZO3FYZALGRWYvU=;
	h=To:Subject:From:Date:From;
	b=TAbwo1M7cxlHgKQzZA5o2+qAQVR7vjCsNoT07X39+A2a0327w0eOnOSFoy6s4iw6T
	 AsU9Bdm9NeXLh0HoPtuNnU/9pUyp77qcVZS+kkqsrzjNeFreY6eQMCl+qwto2439Hk
	 EjoD3GVFCdzqhsr9T8FD45zWxh2VwuzUmhmYIorZIoGWekc7f3yOqyYnnHzlJ9sMvC
	 yhxyRfJznuwY8Uynvcr5hFZZHON9oEMAGbvVIWqJ2QHRR+6vJ+pXUY0t573ySPJLW9
	 RweWdU2oNQ8nY7iSQWo4bYtfE02Fwhv3d2gnlqDNWLLyr8wN9XMlrd8Xr6GqS9+PPK
	 fAbmHKQNby7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B42C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837683368.7504.15124004554495822203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d3e5b62662fc3aad8bc6c3d1391305c077eb9bf67e18b74a21e20af73a795a
Date: Wed, 02 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788376833
