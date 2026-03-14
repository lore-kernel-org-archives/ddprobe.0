Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1991A5B84
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773450894; cv=none; b=IW9KC0SryoznUdNjGRReyN6udBWldNhGu/Il17T4ykmmUpHIoqScfJW8DReCtrwiJf0pOXPVpmqbkab/ix6f42j1coqL4xUOBo8l0bmXcU4KTHVU7sYWth/HynVE2ybZknbf3oiueU9yI8ynAXv7kyp4UseiwpWrE3mY6up6114=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773450894; c=relaxed/simple;
	bh=lbsENTs+emJ7Yv4OEe8DmEuD4crZhks35wsUamLqypY=;
	h=To:Subject:From:Message-Id:Date; b=GLnA0KXSnGAoCQ7FGv7B3usxdvRcrY7WPhNNunmoydXmGcNHYNJDWXcWhv64Y3j5TJhqB5+PUyt5vKzdQN7LMqxTcWl9xBVRwjErwnBFg1Z0TN3kzdDxMjqdSu07NMrn+bYU9hWUX6pwPkRe7bDKxF+BblM6WuIgtHIeR+MDnq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKOVnWF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKOVnWF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB194C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773450893;
	bh=lbsENTs+emJ7Yv4OEe8DmEuD4crZhks35wsUamLqypY=;
	h=To:Subject:From:Date:From;
	b=YKOVnWF21CzRVRixwGHUhUFtJxxcOvTLVHQldxTT+XFH2n81iA/A5UZdM7Zbd0EHZ
	 XDySEP2IXLQhSxkD4+p/RURz5ySnhZui+S4nhwkaR+qjhX6VTenPm9aYaSQpNwkx1y
	 oFrnUxKYPZUx3QusP4XdvhxB9auXlH1lvaYDUN2KRn25xsrD5vvED2H1FtCBGdgawo
	 6E47tvj/S7sgT1UPEl6exZqxG4067I4j4TNkhPrDSoduZVkFtOlGX2rgCwQQRxVXMI
	 DotmCaPrYmut3z957ciNHCI6wPL/zbBMWlIM7HhY8+SMPyAYec1a8H4eQggpSnOwKg
	 spRp24F68/Cfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98224107BCEE
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345089360.13020.7209383623326711092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92944da7d4f91fc611179f2bc7992e056b896de235a19d1269d44bcef5d258c4
Date: Sat, 14 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773450893
