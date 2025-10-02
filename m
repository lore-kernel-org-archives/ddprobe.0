Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EC14501A
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759442993; cv=none; b=TrCCc6rsHNMT4VhZ+cFuNt86mKuODGpelaN5O7r9GNRhxEma4FgwSTdihLee0sVKI9mPahjN2veTtjo3w9y3HhDCMNrEEWBigYgebtTDaU3oExy6Y6ZuzdDGKaNSgqF2RvVI08f7r+CzOuSa70GXC+bAaxkOnidywIDGK+JjQ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759442993; c=relaxed/simple;
	bh=wamR56WUAfVzpcaW08s9k0xAS/COlTNJ03NZfSwv270=;
	h=To:Subject:From:Message-Id:Date; b=LKuLHptPWrtUXRxGyMTL/41Qnz0kI8f5nMoAGmr+vlo9sWujeZi8yBJ7GFjTWyxfHt3zBwMILv2ABzH0yJ94IJLyF1jkhfxu+oKmSRgeO2fxHUMOCO3WTmMEQzRN5UJGv5lg5rVe1dEmkBWNhEBLqRh05RNTnt7jAeBQwGCik/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEljOXjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEljOXjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27FFC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759442993;
	bh=wamR56WUAfVzpcaW08s9k0xAS/COlTNJ03NZfSwv270=;
	h=To:Subject:From:Date:From;
	b=PEljOXjskVImBAJaAEl20LYKHw11ZSEmCnYPES1snqHn9cR7K3Icna3ftgZGz44yw
	 cEfZVaziZKK84/q/5BEyS6LoMfuQOrzZMavwPf9bc0pxcEC/vBAwjjIWqi+QC6K74K
	 KcF3bhMmZGeoXt/qWTcXybfBVWvomwO3fjXWD6pfuCkiYsWkdlN2z0vzeTnJtC25IC
	 nBdINNnIxmjfAZDI6jTp4n2pzexMTcey8/pp8Ut7etxS+fzfnmwUjov0UznV6E1mOz
	 +5yILyyTSvhA4/YoOe3ZxrryIwvecAA3VegKlXlz9hUAuHQpLjgiESDYURqYsR8dK7
	 MOy/ifrtX7oHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9298FCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944299357.14667.8659774731633511036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1745b6a8473e92731b4ede553c2c5e021d30d17744825f7d620d78a566cd7142
Date: Thu, 02 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759442993
