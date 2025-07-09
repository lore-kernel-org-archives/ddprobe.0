Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7B6233737
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752103194; cv=none; b=szPR4GRRzI1rQzAnFIb6/uwhehkjqIEe3AiTl9ZVF5l7Ac3jnY3RC40S4hNBql+Vu0j1wWspcU3ThR88c9dFAMWvWaj1M0IxDvzRneTkHT0d7soFkY1raI2Gg+atywoKgwDNnhAWodyMuYiVM1D+VVwxsv8xLZ+Mqtx52TT51uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752103194; c=relaxed/simple;
	bh=M7jZXCEZzFMY5y+wzwMao04o23yWWwXAwIHYQ+1NCmE=;
	h=To:Subject:From:Message-Id:Date; b=ExUYWR5W4E/IwkFBgwgyedjMbKW3Z8PIqR0b8wbu8MVxO/4/keqOSz2e9xjk8ve32ytp7hs7iSFA5ha8QFINOD2ly1lD1c9ZHFi0EL9ICNA+WNhHa8vpmQNvk56LL9Vad1FqMj3f/JG4C9fkj9DLX26hC+3nJaF4gtfMiU6m0z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnJubZnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnJubZnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D814C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752103193;
	bh=M7jZXCEZzFMY5y+wzwMao04o23yWWwXAwIHYQ+1NCmE=;
	h=To:Subject:From:Date:From;
	b=VnJubZnHkvjmLZfaOerb3pV6hXIcjJwb+i3wIlhIpzlXbg489nSWJHCDn5hheXQhw
	 D+SwfvMKgwqZayrhIn9lM+7kt3W7uaYxR5xmxzAnyQYPiiY62F0iZ92BBdPvSaaD8P
	 a1rZeowupaeGl9xUXScePbtBZcTjbdnYXBsDweJaiSt+rmukQfwk4rYuK2+/seLCBM
	 XHInq5l7e50/enP1rmig9016hafaOs2FyJZHpRCLSUD/AsZB9MdRPIm5qi9aWFEGvT
	 VRaCsh1irlXLP2BxWDast6IZQfj3/ZUNTn8NwVXXtqZut5nzZ+LxO9PVwinsdO/sPN
	 xhDCaQNDWF9hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD6C83F17
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210319357.31650.7984852195468761376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff7c1eae8b83151533d1c7e113e71dd0306b91aaad13275059c296e1d18776c
Date: Wed, 09 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752103193
