Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD824C98
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714008083; cv=none; b=nm04gEEri9j2DKFkx8f4wy/gIbZttQqJNBDKhuvfRI8OgW3goDbHdU+NhaDyOhqatw5o0p7KU6RxGdP3DIaydFwwAEzufoMHD4Ppx8FuRY0gCxxO+Pz50JGDh596zANicI8+eYtLFGxi+2FT480MfjAtMq2z94Zwp4jdhNIuT7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714008083; c=relaxed/simple;
	bh=ztohwN3x++S6ogyFJdaiPXj8r0zS2Eu0a3duLkAOWh8=;
	h=To:Subject:From:Message-Id:Date; b=mfe2iGjo/8h52PP8YAXE82CzPXPDDLsb9s2IRfuo/DIXaD8l7E6JWfuq2W3h3GsFs+uaRpWZ1oIwT07LTeLWg4+n5p1/4H6HXvr0o1awbWp5H5uncJ+U480aKDs3NKCl+Be7PXCQjTxRlTXCUtNgcdsxisHhL5NnRl/MLBUWO5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODd05DIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODd05DIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D5BC113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714008082;
	bh=ztohwN3x++S6ogyFJdaiPXj8r0zS2Eu0a3duLkAOWh8=;
	h=To:Subject:From:Date:From;
	b=ODd05DIz6QYUF7zbEZvT49wRxzDpKk6laPCWE/11pq6M0yJDo8ZMpqhTWcIAQd+Mn
	 6j+e9vDkjrQ1nBk7NbN9tUoGDzFfnnZxYidghxnE7rSHg02oWChWKX+Vc1YqiEhno/
	 r7VFdNlHhf4MbkNO9GroOe4RdAoTtGm96zsdYNeSK7YarD/jAUhWg+p7NmN9mv4Id5
	 4fGggaCZqDVKoEW6B4LK6wYKG3OcLr5u2ZsG4trEdVRh4WniLV1OxF+vI2cghbdd+T
	 tkIVxtZ/a+RGQWDlNuC+BVdmtv88kbfW1k0dx5J2+sk3TJ2i+gs1nE1FLI+RTw4Ldl
	 lcdjY3jgaP6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4B1C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 01:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400808281.25432.8787288733829399385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778db134febcb5f16e99eeaf57fd68493fed19a7838b2b1d64e9d0ed34fd7808
Date: Thu, 25 Apr 2024 01:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714008082
