Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7612D979C
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763030994; cv=none; b=riqRXafiJ1XBAqL99P0qcgpDSPI+k3BihXObUTVazGtmn1IBPS8PBtbMOcXyqw8YspLOnzYKyAU0oaExHIfy9zmfvMuPncZJzBJjVxSe9z5JeqF1WWMOaD3FhnQfRoVEJAUxwLxkbB6X3GLGY4mKPFzGHDzpsCS+l2fE70QuIu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763030994; c=relaxed/simple;
	bh=KiS1D0LFR8ybsENe1rf9aC3SAOrxMioYI9A/ZwxbV3c=;
	h=To:Subject:From:Message-Id:Date; b=PhHiR7FX/uTT5kACzUrrA+BNXaeMgZ7dE8mFt9GilxH44Jdx/UHwuPj/IxtcsC5PCt+BBjCtRTDUdqc+cl5xdpWZz2EIuUE+MpPQsxuhmOhcJbnp1fAhJgYzgpJwdtV1j3NjVeXoNuCbb/DDC/rrHxgqXWsJa9jRBXhh3zTMDrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcQZ6LRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcQZ6LRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D43EC2BC86
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763030993;
	bh=KiS1D0LFR8ybsENe1rf9aC3SAOrxMioYI9A/ZwxbV3c=;
	h=To:Subject:From:Date:From;
	b=qcQZ6LRBnka6AtjlC952Rgv8aBW067E2AN92r/acMW+stxc5fP3/InKquzMBzI2C+
	 mIm/PptMUbvWiq8TuAHHn/zV20agxB6K2THejaOfOlnah1PBL/AcvSlJlyLOYjRzwx
	 hMcuop0RAPPUnfsfPJskEUeCp+YK7s1JmldogwNqtxxHZ/FXSaa1nCWadRqoA4Miw4
	 OYa8xcveUh+Lpqh4Sdx3uWOAo9xHPkEdKzneN1DH0cTNDX1sX4Cn4Q8YWhBBlQKMwf
	 A4sHYzH40EkZaQ0LtwecVyG6+zOOesN8lwtmgpgOHe2vaxorUhWyipcNGVB+jFMWpH
	 6WiDHcq96oWuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B88CD5BC2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303099358.15635.8445976671915478639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2820c14a3839a42d9587ba7f7ecf5909804407641c7fdd1357fd6720cc8d204
Date: Thu, 13 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763030993
