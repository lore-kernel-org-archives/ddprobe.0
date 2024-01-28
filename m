Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC9D184E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706410697; cv=none; b=KSZedYuf07pRhysVQobRbJ6eAUJ5ejNMRXjEfUy8LFKQYQoRAl0Tvt398irim5ZtG+JAk9Q3wbWlLn8+1vQxJHDYQwKfDifEHxVG4TDBN8bCFK5i36a5/z9V8lhrZIgXIF+QnBKuRZdt8xB5EIcX564bN1aGJYenkjWBDcrudeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706410697; c=relaxed/simple;
	bh=H0s9D5wm3s9TI54ImzC/wS8Yl5j1wcGhPq7mICHUkv4=;
	h=To:Subject:From:Message-Id:Date; b=JwlWRh0pnN+28RAcWkjte4jixv53meHx0FvZjloP0y9SB/+Vkxpx7ivAX8cd1VYN5uDMprG5L7TUI5VA//XeEJFO04V0BbFT74/ROQVz+YqqfZHzNEe+PRPZyeQBgYOoTemXVBBxEo6M8/tNxBvR8TMB4wNmE5ZFneLd500RyI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0KpSP+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0KpSP+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D1EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706410696;
	bh=H0s9D5wm3s9TI54ImzC/wS8Yl5j1wcGhPq7mICHUkv4=;
	h=To:Subject:From:Date:From;
	b=d0KpSP+CoGOqwkd5MVGFg1iGLqwx/GZN1b1gkstuLijQCuwkMC7lhr/wpvADKRRiK
	 ebuwgCOMVni3fNto/05FV4d1I0SYweEBJzOHBBLJcEE6/xJj0ANPM6KMRW2H6XNTJp
	 dTQvnU7pRJQHrtRoRnsQ8bAp0t44oIs0Arr/6FuMnsu11klbLi3fajg49Jhj+b3cnz
	 wLTUyOSSa6sDwks78FM95cJXBCPfZJQ5tkO1YaveTW2UiiqgA2p3iUiJPU7M79jxGR
	 8JoCKG44pCJBDEqtbPWC3nsOhwYACzKQ70uS9GFX5GiY68o4HeHYfG6aT5Nwbo4Vmo
	 +0uh0MhRIIhkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3A9C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170641069638.29365.11381556136308150547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d0792c1b5d4b2d53c1e7e7e4ecb5db7c9b99a9bb5b9094777d96ed98dfcee3
Date: Sun, 28 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706410696
