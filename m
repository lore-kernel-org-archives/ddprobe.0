Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC47368D40
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780269274; cv=none; b=bJsti+rneUnDpKymxlQXEI+imEi4dKhyUsM8YsxlzeGefpmlMTejqRyR48o1v4ZVUXE5iei2IWDQ9FKwZTzNUMixWrao7+tigDWQBSmnO3idv6Wp534UvotWgwUPGNNh5aNCI9U5komDQTnyVZwfiiyeVhZvrr+KpZ/TEeI40ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780269274; c=relaxed/simple;
	bh=qUuD2LJfsCl+0Ag3mfp9EhFS9DFohYOwoYsAfMoIo2k=;
	h=To:Subject:From:Message-Id:Date; b=Mye6XdZJGvXUakvy2LLS3cW30uSlCr/Dkf2Oiqj8QwLkFlN+xXqIGtWdRidLxlvu1mGqELTBjvP43rEtzv5mC3OayGiPB0Gja+e/NVYAK02DAswrnhH8e2mIyRNW/DsI7eQYPy7bzlBDVz07+V/6GcdDv8PH0XFzb5e6+P41hCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTIKiHpt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTIKiHpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD414C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780269273;
	bh=qUuD2LJfsCl+0Ag3mfp9EhFS9DFohYOwoYsAfMoIo2k=;
	h=To:Subject:From:Date:From;
	b=XTIKiHptBwdvFcU/bFMp2TPdJ0RzPOQKZmPEhSi69UD1sUbaB6ZPZfIdeybshg4lG
	 XiWU7ClmgYsjXH+C0sYJLPfyGv45LqjFd2PiYK6693EQdIYaRJNLtkzqj5aYlJ5bcB
	 zN8xqvQFZxmWykJOGMNkRqrk+i9vwJmHH9s84XPIh/ouEUk2EbUUm1JaKDxKMO4b1/
	 yqCgUxkwcE84bBGP/0kuZpgM+ACf36c71fl4nMZtB3QbHcfkX8RAK4Ex0OUVxgxb69
	 837Ky8If/g87ff902iWa9HQ6EFg7zNKXvZqvXCa/gxuvIOBWO/wBbCD5jrB4Gf6xJD
	 Cp1PVN2ARYipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C4FCD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026927369.6614.17301253083082928869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6bbc84ea52e6dc5f589c327af056e7e1e3e14d4496c7bb80d00e0a1d3ea759
Date: Sun, 31 May 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780269273
