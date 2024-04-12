Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631825102B
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 09:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712914763; cv=none; b=IxkT+7PQtbhDuuYxV0nNg7uiiiwoR/pan2HYwtIi9ADjy0pggr2Q3dGJ8zXf5BfWh5Vy0lYqBU+BuzF6IRrw2cvJeyw4lixlt89UwhRuqNEM+S6oTgHxXbcV/2S2XEOy+jOUwmXi+J1le1uOeFwEaMAU5ACo9Y2dNdKCTw4NXKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712914763; c=relaxed/simple;
	bh=Ncyx5OpB7jIDSLUZl97yq/1C3ZaCzeadNeFKuknDuW4=;
	h=To:Subject:From:Message-Id:Date; b=iFY3Pd4zsxZ+qtz+acN5Ek/O0wRv/3CtLNwe4q11tuiMMquWSo2+z49yKs+j6vnITB6rKUu07FRelyCRZC2IkQiWLiySHc1g5Rpj15bdEBXe0RU3IUPHeJp/r/fb5NbrlDXKWtlVcUFXFzhKFuwerDk7eiUGKjCScwoyk64Ez2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxPgN2xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxPgN2xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F24C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712914762;
	bh=Ncyx5OpB7jIDSLUZl97yq/1C3ZaCzeadNeFKuknDuW4=;
	h=To:Subject:From:Date:From;
	b=fxPgN2xyhXtCqcaptYSVdZaK/72cBI6CGt62s0+nQLrchnSWtVyveQYxTogntqWvA
	 t1O3u+xFAGcBR1BWAncNi7iKqW6+hoDgdlg+g3aeE0oRRWOm4UB5/miaLxsgM//9M1
	 L0sfqj5dNVphKcoIwAbMaTrnS0Q3MronNxG/zqUXFWfN7TaXo16vBS+gK23WUL7No6
	 GKEUa4Eu643MFDGGoOe6aG+u0sOAupfmAgma+i8ph+Tw82qSl6lUY1bYCUpHDpuMDd
	 lJa+SYuZsOzinGkNK1SACBxUk6t9kz+p87oLFacVFVYbzzYXLyGbG4QM/O1iOdDPZc
	 06Fx5ozNSQlNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15D5C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 09:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171291476278.8328.6404210368704995767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb4e5517d2fa6ac086c2892a4e0ee6de6c7a52845cc8a8845b4628f55a1891f
Date: Fri, 12 Apr 2024 09:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712914762
