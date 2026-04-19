Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E932D5C7A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776588454; cv=none; b=YpNNqdem0Lz4UDZkV1z8+L5Qw1VumQ6sUJ+aZ75IA6mKJr0S4Mx7NBzuxxHqfmx6TNPS2T4DbBdvP7676DqCiQVyaqjWHr6HHNCeKGeedjtC9sMpeLQsDJasyPsHkY1WJQ2/SOAnoTg8V8IU0qN+qpCyl1Qdn6tPCAJtwT4XAIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776588454; c=relaxed/simple;
	bh=ZhLw1D8FHGEDbj3uXsdujqqL+FRZsEshshq7B2G5/JY=;
	h=To:Subject:From:Message-Id:Date; b=BA35kKfHCHpZOJZMRnCpq4f8zHWFbLnag6YCv9kpK8LGgC/WpuVmfyysNTZhauKQhqJ74Wt6XBHgoBKTbfps3oPxNgIoz8wpjrKxyZuECwIXX3kLuY0HlPoXy2AHbfm5B0Sl1zJjE48tuxUYb9npzbic5WbnggaYerr8xaZp5XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUr8doGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUr8doGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00D4C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776588453;
	bh=ZhLw1D8FHGEDbj3uXsdujqqL+FRZsEshshq7B2G5/JY=;
	h=To:Subject:From:Date:From;
	b=DUr8doGnPmIBv9YszFMU83mDWs0V/RLYlBgZqEefZcswAml+/ZzcZsw2ctxw2PFKp
	 mFAsWMaQNHBWnOblD/rl0qY6jCokdr6ST+ME1WrxuV8rVq206AAQ0VL+pbD3RqjBXc
	 jBJPqFeI+JnRgtr5SQqAVzJMqx9qmBcI+xrtTe754q6eJSUGw4/bLScEXvEZHrcxqO
	 J7ep6XZa+Q0u49ttTLebDYJB/f7iFRsiF2013h9ix7w9aVSORtm+RfTvB6Tgr3my1Y
	 KKZjYku+V+XXSdVT0UUYzLaUeCTbGRef5gF3VgXswyB9NfwBCd4z+aqpbWe3kRc3YI
	 qUoKhySgSxCZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5D6EA7192
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658845368.6626.13270400810321108212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2897e9b21cd7f6b55363f9f0965550c9c39d90f181773e77dc62187b39899de5
Date: Sun, 19 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776588453
