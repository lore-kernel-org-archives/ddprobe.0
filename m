Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EE52D3ECA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766048634; cv=none; b=Ug0iQGYcylFuDuBFPypx0hb7ba6+qa42OJ7fel5jpYYfHLHFJWlDQYntXsbBxE1k1/f5OoaoK+AFYRhQYUcc3w3X3uvdGJ3YgQByXRoeyLYJOTv5zxQYdHYf+OxhkUJkfuN7v2ZJWiPZKDSvZOBYvMkyb2d7DA6WngZXM9xoVtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766048634; c=relaxed/simple;
	bh=vmUAEwUhsbdHuk70yHQWhhfkWgCVP1baCkHR4DWumyU=;
	h=To:Subject:From:Message-Id:Date; b=cBj8VIJgmMe9Sn477JnTMy30y3RAyGlH4kGZHdOmCDuv3mjxdlr8Dxm+wmkPM2dR4JzIqI4crFQqr9EH6tpZXzwoEx76yKXZ5ugSxh3qIteZ7gfRuGR72NcsvS1Cz90TPJbrMHclYqvfwrQwOqqgjYuMnYnrsF/NoRRB9OZGQTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1+kUac2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1+kUac2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B32C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766048633;
	bh=vmUAEwUhsbdHuk70yHQWhhfkWgCVP1baCkHR4DWumyU=;
	h=To:Subject:From:Date:From;
	b=U1+kUac2wqRjkXve90T0d5iWR6Mmamqzrltjg3NfTzSsGPETUES7rXDxmssmkO0V2
	 1l+5fFVuRcKrO/qN7L6E/qaUQ9xRtWp6uDaCuSvskx+8JDHP9IBBr+mlaYKwzQZHiU
	 rblSWsXOg50FH5bJ1TYaHDlAWvh1+tBoS6OWeEPKka8kiHJ9dhCTZdvFj9OF16u/fb
	 OgFCMuoS36Xs6Yb4x+UI3A1ASTGP+XncLOSNw9fpZp0u9pZtye0ODpIIb42gzCWPUm
	 Kv6Tmi5BeRmiia9gASVv/akRp8ED+39AmzknAxwRJgeifDnrHAMmg6wHIN1M+x83mu
	 QNcJfSrUu7WNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A9D68BF4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604863358.19742.5990223918419844860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ccb03b83b0b63b99c366b1b677ae9bdf89e621b27be4034eda6b90417f1be9
Date: Thu, 18 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766048633
