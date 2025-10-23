Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9837483
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761191994; cv=none; b=i3HWmLo/gdw8gthrxQnHqADe4b/10BEmuE9ywTey1bfJxNj0vLDSH2jK3KS8s9wBl1Z7f/+8PtPXff8TnnICXAsur8SU8kVcwMz77KHa6xAObuBQZKJr/lgnJ+p+2FjwvUg0E1fOJWcutASJ0q3X4/y6AD1jqC+CHSLh2BzAoTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761191994; c=relaxed/simple;
	bh=7LI8hdevpQz3S+Hb9NnOuQqxs29af/378Qz3SFS+xvM=;
	h=To:Subject:From:Message-Id:Date; b=ohE/RTgDKDa467ZQvBghh/yXYwy2hAlBpEwz0+W59mK2FHbq3+R+Ttvb3RtPdXT1C/jNeGmbLgsLuLElVZXo8QCzXQ1JdsMctf9YW3rBSMEw6sfw6fUGgpG4EYgu45Hz7Dbgz0VHy1+IWxibYXnS2vIV/7+A3ExBE8WTrokFh78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVxCoNOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVxCoNOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2728C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761191993;
	bh=7LI8hdevpQz3S+Hb9NnOuQqxs29af/378Qz3SFS+xvM=;
	h=To:Subject:From:Date:From;
	b=bVxCoNOp3bGzI8bgXzwHiyEmcyFNCfCH/OkJIV/KI9VJSJxRTJCqm0Km8sYTCrcYh
	 C1oeaKw/lvJpqIgoVge4rHzSYU04bNSOniyF5TmT7SW54OywxnPnE+4QwBC0dcH0M3
	 /ysh169NJ6NCzshvmt/NIIOz6h7f7fApRN/F7TH0KRHPbDNTbxLlp6DwwsJXRirqNH
	 Yz6qdeMsI3MKK9puoNS5Lm0AyFxjV6BRtY3MzdhCaadVW1I6q4FBWW2l7xIuwoQu5Y
	 tY37WW+ASiB8H/PAFqTbDLVXBqqyu4dixWD3+VPJQIMTlGcnAwZ0d5ff8aHch2n18/
	 ZoZHZs0lMyJqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A0CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119199358.6193.12714034543524408176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9975a38d3087fa3523be3f9e4ac9a04702756e95fe454137ac8422e8acb064f8
Date: Thu, 23 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761191993
