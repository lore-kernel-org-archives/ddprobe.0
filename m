Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2FA5C89
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712193497; cv=none; b=bP1dJPqQDwsQ6Nmnkj0ubFZdllvJEuc53Ndzp0yrdJcpz1drl8W3f4+ciGWhzLjWbQq/neUY/w0Ms26A87zOJVsUGNSvc8FWhd51UZITss3AEwtC5TUrajI0SQwcn24RJJizneIM0z6p1Hy4R/vlx1DcUy/GoNYFchOSt9qwwMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712193497; c=relaxed/simple;
	bh=GKNAD2fWdOz01C4wv6IZtfLDbkbTOz7EaR4O1IfC2P4=;
	h=To:Subject:From:Message-Id:Date; b=W0rat+Vcf7GgM2I2maKkxXQqqit0nIwxJa6upfXU5uIWflSw3vXUFuxt/TmWLn1NbgDZ7DXRbcBXGkNPoPkOpodk9aj2nuTQWIijZ6or0rtEuqyc9DVhLaje9x+Siv6PuvKKEj/0/BcAnmAJnGAVX60UuknSRsVwa6KiK+h8HKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHNYnier; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHNYnier"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724E8C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712193496;
	bh=GKNAD2fWdOz01C4wv6IZtfLDbkbTOz7EaR4O1IfC2P4=;
	h=To:Subject:From:Date:From;
	b=AHNYnierllIyMJNfR4DrwEyYTJvMe5gMiKyqtAbTUpQrTqGjXXY3lmg9ow7TqTsAu
	 BQYIaW6WiWhuhqLhc/0T1jo7XHu0HJa8jkWv5/suwWBSTCUtQVACVT8buFqPr5fRns
	 OE03f2/jFBZvbD2DXcG+DRLbdkbDU+vp7AbeawGDmu+vEWRB4MkCATqvtLJxrqYo6a
	 lfX/WqToEkBgt4JzYvdJe+h1fRo+B9IxhQoOa+1deA2zEAqf0MtssldtFdngZf0whg
	 debTjd4261gKOE7iyCSvx/o2F7yYrv9ILHKtd+Tx7++wciKueWOAac1KdiaUwlE6eE
	 0qkLSNIl/trHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0DCCD1288
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171219349637.20950.12589972707688744385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8a47949a49e375176735a82a0acc49339d6a05c568c3a7b297860fdd3e42c3
Date: Thu, 04 Apr 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712193496
