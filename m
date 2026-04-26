Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D2819CD03
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777172254; cv=none; b=tWAx5L4nc3M9AM1TQDEOtj5J/pTJ4/VQ1edWqeKwO0EelFFLE2ICGVWjEJJCefAP0X2chvuC/fmpyZSIZ6GxIKzpYYzdoPbGfZqqisQYVDY1gB4ev5bx6eIzQpy2IEwqSnjkjWqbC5iwaXPzh0XN7D/HNVtDH5MNuoXQdj6KEss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777172254; c=relaxed/simple;
	bh=PpLTZ0MJt5qyJE1+hbELdj2ybU5uhgSCr4fHpBAjFj4=;
	h=To:Subject:From:Message-Id:Date; b=kRATJjIWksL1Y3Bkl2wY5waBC6Jl5pVV78XxpGcj7GHQjIRb81/4wB/a9VxC/nlgCkyb5WkKfKAeAVbeyWQGz25EEVf5jwdbLluT6EMrqDjCnObPwE23izX3HGIU+jU1Nim3pWY3EmrEsn1NebXHviC59bvLyrUgyut/q3Fj1js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8GZRiIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8GZRiIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF88EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777172253;
	bh=PpLTZ0MJt5qyJE1+hbELdj2ybU5uhgSCr4fHpBAjFj4=;
	h=To:Subject:From:Date:From;
	b=n8GZRiIuTL6iDvaAz/QJtyt8ove6+Zo72h8+oNtUb4R0jpTj8z0qqebSgMLFiMPW0
	 lJHMvJI2kQLYKVEdnrNecBYiXyY1S/2/zNCLi7WShCW3sajuD5Dp3kRvnli+ltRzqu
	 79UVgp3y0BRdkHC23bgder58Xz7PLeEprXynUCyVjfU+4JLFVZEd1U1HXBOFrgMxLO
	 q8nypkzOTyfFfHPBl6D3HHLL27Eqxy3Xl+/NFZxSgCGqkYmqmNuFw/lyTT1WjZT5ym
	 gFOyGggd11G64aM30Ugprz8IWji7ljqyjmFWvwgjtZSBHefY92tmx8CVwU1k945y/+
	 S5WgdLXxym7Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDA0FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717225368.4765.9777628594461545589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022e56b0e2ef9077979d5c980d814d5ca73b6e887b89b134b322a25589343f9f
Date: Sun, 26 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777172253
