Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8C646522
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 08:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721118923; cv=none; b=WmN19dluomQqcX5eXqa5gRL396iNlhSOzzBs3NiGCrmbbFgcqaYuqLTD+Jv165UT8xLJqzQnj+AgfrnoIVHP96B5XX9chskp0oSrVy0Ryl0yITKS8tLJGj8TSqK+pTB5ea9t6rEmWZeKnPsVhXSrbudNn/avzd2BGFUPeram84c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721118923; c=relaxed/simple;
	bh=l0PpwVCfcyUfIe9yasjdYpFM5PabAef19HoNnKIyv/w=;
	h=To:Subject:From:Message-Id:Date; b=nRl0Bi8j6C/lOkh7Gp5V31idr71oYcw+mZLjQhFUM0oe78li5ouLwZbSC6GrbaYM69GH4GMefFNr39jpryX0uqZxXRpxaW3d8QWicy6wae8x4lvuLzlD+5U/Pv9bSTxVe3swR7TLvp3v+6NkQHDdeUuk6pZIo2pCUxwMgmNqzmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoreuc7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoreuc7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9139C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721118922;
	bh=l0PpwVCfcyUfIe9yasjdYpFM5PabAef19HoNnKIyv/w=;
	h=To:Subject:From:Date:From;
	b=aoreuc7p/kiLN/GYwJw1qrLni6xF085cUy79IxEj7UpzmCf/BVjzYY6ENnY+idvaT
	 m5haALHsdLjWwTZyOxH+VTDpqxq1nzxVOL09BYDgiKpcyNa5vJ8eJpT2f0Ce7TWyr9
	 dkJ44JYrHDyFBLGEnBeVN2xofPFA1m5a8Wc/fuh1+w126E26xxCgjVOFO+s73ip5fL
	 jMDkRx8zpzk5uFxsqzWyhj9Qf8G2wEpNYd6oXUYCcWUT2gw0u43c1VtbzzbPwIGtDG
	 lmM7s1U9tn7ICJV9pRgokRSyEuYMZhAv40eEObFsPeENtrV/b7T/hBCrP7qB3HBTwC
	 xneyABib0MugQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0245C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 08:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111892284.21953.18258271504525897342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5c972c83037f292eaa74b294782e908451a6fcea8cd860b22191a7481b500a
Date: Tue, 16 Jul 2024 08:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721118922
