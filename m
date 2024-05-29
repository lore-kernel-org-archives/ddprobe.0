Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C15815B567
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716960263; cv=none; b=UhydtnNNS9YIC7X/mOO3SfV+QFAB5x/WEptuKvZl1ybgLky6CBNwim8BsZeFSUMvtzms7Up700di79Ipj64guwA2pzJ84oo1sqK7wRi7FfBgLQvfHP8drw5fafcae43xvHlcj5Ndhw8fBA01ItanB4ysWPFFw35kOY55aHcTmD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716960263; c=relaxed/simple;
	bh=ZFa97hJpokborSN1AdSk15knqq70sz3/qtA5MdHpoyQ=;
	h=To:Subject:From:Message-Id:Date; b=l6Q6FwI1OMLpe7SKmuQisMDExaxs17uwx4g+Az06KbAswOKj7873qVMfYdJ7USIdpzOQUfnahopuCWJB5rwNE2W+oFSWOppuI+UaPdGcuzg/wgYj2xyIs1y4l2bv5kfKrkGqmFp2QNb5GZmPjimY4/CIYA8j9Ifj4b6EOi9U3+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRp/q59F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRp/q59F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC144C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716960262;
	bh=ZFa97hJpokborSN1AdSk15knqq70sz3/qtA5MdHpoyQ=;
	h=To:Subject:From:Date:From;
	b=kRp/q59F7clXvAOkgdz4mDqk6WJdSi1paY5StL/0hU8HUITqj0R61ZWxvgM6ukz6A
	 t/ump3RKXXo2GvhDmBbeZNRwl2D4mb+fOQfSwQN4+2th+uUcMkh7tZDxQ8jIwkSVIp
	 J2mPNLsA5G5hBZ2S4LF1xoiLxNXKSnQX5E1OYxU5W6aiEVPLMr++i2YbE5+W+QXarv
	 LeiTr1QepTsGWrsBQKLY28vlYb3f+fotsbp0AM812/hI7hLjj7Bxp1Q2KLQVUM8YMk
	 GP7KdaWHICDIzOo1kxxzT3Th8KqvirYKRKTK4alFrQxkQZIysgmGv+AgIj/VhHa17A
	 RO0HykjZiXL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C167BC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696026277.20120.10151428348206408536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f2a3dd8150fd64db6a8b2d86bfab9e83342dbcdc44fd09fd56d8ac46907fc7
Date: Wed, 29 May 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716960262
