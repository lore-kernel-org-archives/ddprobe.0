Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488E240EB9D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787346034; cv=none; b=sZJjAHWspFjSDvC3HpAvI1BoJ0+ONVzQDQfhFt15PMlpQsC3N71NmBg+9/UrTmqclBzg5rBRB/5afof+2+5DyRDFrtgRrKaj2xeFHpCAtX/RbLOquRemd0S5HxPNbfB0zhJqogCQymFyB0PrVeX4aye4+vpAmJVmx8TgXAu+kLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787346034; c=relaxed/simple;
	bh=g1GsiVaR3ROTQjnl0Kb0RuKlw51P6+VzpVI/fM8nDXU=;
	h=To:Subject:From:Message-Id:Date; b=Fxd4TO1RKeKC6aLZS5wByqAD+OXgQnIL+h7TS7ELy513JiuADJRJw84rwaTagBlYDYY2IHLLqyi+36NSe8qig5WeUS03RNXtnvxWyiADD4fAzms6gRgYhqzYrAOR9VtKz+P72YAAwtiDbreAm1T9gHyGnK3mLZmfEXvDe/+iw+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUCR0B3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUCR0B3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A3EC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787346033;
	bh=g1GsiVaR3ROTQjnl0Kb0RuKlw51P6+VzpVI/fM8nDXU=;
	h=To:Subject:From:Date:From;
	b=mUCR0B3PvsjL30U976MBJqThLvg87qxMv9lb5gwypIclE5OkTM4yN9R0QLd56ZWPC
	 EdcURxB41lFJvlGFEVGaEx8rvoo9c1rM8VW8PTv2LQF/dX2z89zmecMEeVN7sbzZDP
	 hK+VT0f0tO16oaCK0PBseuKpvY1yGwkXGlGGWlWRGxzmNYE4WNjcC5flkXCJ91MOBA
	 15y9UneND+reG3KBMGLKRoX13QwxjBIDMnD/JBU8xJcwCHX1+RdbpWiuYkzbS7YN+U
	 mFdW9sGT9S7/dl3GCenMotiF/pqy5eRSjQg76O3CHwHSP+NqOiLJn9S/FacmYCFVnt
	 dvg98cdG38lbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE29C5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734603370.18811.16838532109243108886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10952286c7b6992caf6a8335ccd1a94496ea58028b9b00dcdb4735350edc6e5
Date: Fri, 21 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787346033
