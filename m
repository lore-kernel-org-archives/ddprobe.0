Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB4C2114
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710662897; cv=none; b=m6ieIjHQUP4ju4vF3T55jIU7QOyXPwzi/0G0+6CE7mnGJ7KiSQo/7+xLrYog4468U/no6q6ZjFNsYr6A3d7uvUnP748qwrQS4uh+VLXFYG9lTTNjPX1XtwYHzt+DcKIZPrnnl35KCI9+PuLI8eIRgZfrkpUjyz7ieeWoJ8Tddco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710662897; c=relaxed/simple;
	bh=SsVry+bGhuGnRjSETED/rtVXiOjWxKPALg9Yv79MfA0=;
	h=To:Subject:From:Message-Id:Date; b=pWZKytbThaMU5CZv8JZX15APUcrXsJMuNU3xxE+xvkkbiDscKAGVhJ3M8P9KjF0oQaMh29onwt5f5dUSAwbJAHG43LR7mwfypwWTHtjwLHR/zOGCdyo5csdaNKupAF2ATrIrcfTUD5bwxJGfvslAhmeM4RL7vmA3+su+St7G7mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POZhB0LJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POZhB0LJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737F0C433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710662896;
	bh=SsVry+bGhuGnRjSETED/rtVXiOjWxKPALg9Yv79MfA0=;
	h=To:Subject:From:Date:From;
	b=POZhB0LJqj3+5zMoNQ/eb9ZGiEBBw2uMz+P6WKjAjaYY4ZcgdpLo/nnh6TPJQkB35
	 4pdJraZRBgjuK4KPYiI9W+YL3u0XeQUr7XxaBHdFAvJho1mTMRLIi2nLvesFGpT2i7
	 rzrruy8wInSdUj936hgpbt1a5kkPgtNthfWZfcE722O25W+rGNwumDjFPCupe+miTw
	 obSICtKk7ZHxUejFkub9diPpf5mOMXtGR/CtBoM1kMz8mhwYchnt+WICSBe6ITWESm
	 XPstFdodMXKFNcwQe6Lfs9uJ0r29sCPagFYahWzYSQ4Py/U8jQQS6741DFRTH9o3r8
	 008rkPYdkWF5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60915C54E67
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171066289636.27351.18339457740984521946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7e36bac48f1901b40532dc49feaeead64234f4a458155f03a21f8871edbe5b
Date: Sun, 17 Mar 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710662896
