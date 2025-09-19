Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDE12BD5A2
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758263995; cv=none; b=aOPox0YKVie5UtcVS4qv7bH/vRQYAZ9KuKUFdyx8wGBAm9wAogaUg5RrZSZy2ifjM1TUy2iW5vsn4NDvG0qLyHUiDyESclC5sd3LWcSpZmNj77ddNf8PSjLq4lk98WRCY5BA3A/aDS7C3iZgMIXn5Qj8hHuRw8fzhopc5azv9pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758263995; c=relaxed/simple;
	bh=vPgt1oOTUhTJ/jmGo8/P8b7RfvN4ZUoRN0x/6/TTed4=;
	h=To:Subject:From:Message-Id:Date; b=sATMeghiravqCXo7WScL+0pz6CijN0ZRv5qx4BgwOqNcRftSeoIN8IbQ9m31qXd35vjiS4TIYYnKeP8V1+aCo//S+RALxPTi8I6hqBYy4HdJenKjMhb2wyHF2Pf3BwZiQ8RJrtT8OSgYOd6SG8fyrp9JXHr5910vNxB2EeToDoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rccuZf1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rccuZf1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE53EC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758263993;
	bh=vPgt1oOTUhTJ/jmGo8/P8b7RfvN4ZUoRN0x/6/TTed4=;
	h=To:Subject:From:Date:From;
	b=rccuZf1RRWMUXrABPJcoTX4XRhEJOIl/sDd10oAgrHqymHSNV4q4AispQqsnTURLl
	 C6qenNj+UB3J9Ge1Jut/nWoe/oces8hp8hPHu/20hrZlRX+7C25Ib5cn9ZppKYFzXg
	 yhEQLMWpZg5zSq4FB6dFiCQg9kgtNIZIkDxaidrBhcsI6LcaiqZ1yzsLxUMkfs1rmg
	 dHOtcrO5TXxQM3jUkoV0VKUovfnNUBwW56ceu5FTg3NvMqGAgYMRXfZwx0v5CAFODf
	 KGtIAfaT5GoZ5t5uhLiuoGDz5tELXjbMcaPzE5XhsJAa4c7S1V8Lt2ynIjFbPzS/hF
	 OLktpYUNDiFDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983F6CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826399359.9642.13225481023513893628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7df5a5cc696e46e17223eb8e79b3e1f5d4244e0743a4054080885615cd9801
Date: Fri, 19 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758263993
