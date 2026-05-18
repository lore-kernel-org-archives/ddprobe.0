Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936AE337BAC
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779070836; cv=none; b=AnR8G4WsGAHyiUUVDTa0cOqSInuHQ7Yzm/qrUok04X8BrnARBsgxWHgR2x9+SEiT2eQfKNTs7igs8OkLq0hcWvdeDMkacYnPVThJaX7LJ29zVmw1w9oF2lrwgKjlAHEHof9fd4VBcirorMjl8BNrKAShF+t2i1yo3xz/gU1wG2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779070836; c=relaxed/simple;
	bh=veuijvU8zUvNrBjxL2nKHE64RsfpdWArxCAN0ytiPKM=;
	h=To:Subject:From:Message-Id:Date; b=NVQI1MtMwUE/UDwHZqnbicriyPJxPLnZmoIWbJXQIKrxvohLjDPHiOHnHtt0vbCXoE9HK+Vm6uVqsz56NMt+g/u7b0zvr65Hf4mwaD7rSoZ7xcH5oC8Jwwdztm/3aIW2zSReHYpQYUPVGBDXH/9QEmrA9a8eob4fGtl867e+Zx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIcT+sGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIcT+sGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC566C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779070833;
	bh=veuijvU8zUvNrBjxL2nKHE64RsfpdWArxCAN0ytiPKM=;
	h=To:Subject:From:Date:From;
	b=ZIcT+sGR3w+/P5iaZxc6BM3w04NffF6OcRcZCjfLaQSNNCHexOCy13HrR4hn4bNNy
	 1REf9NrpBuv4IrZpaxLY+43DuYPHnPbYoO79guyMb8i0TTbCHDUdQeBS/fvyGn0zoz
	 Pm3sJ871ByRl5tz1LeRFDzfPAfeQcbVohg/DCxPQk8aBBmelL5YmhIPeNEzkw6LpCe
	 zE7pkSU568ROw2VBuxWF8guNmcEySKfRv/4PBLOeSkK7ePNaG8a/5OReYgm9PI1Wtg
	 iJQ4OLxQQNpju3jcE4UL7hIbPRsW86dOFy26mum1g0UFZobYLXO99FeaiLbJuwDivI
	 /U4S10ogfBkGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B3CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907083369.11619.16746364088772716862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3ba3190f9e3bdebb96620f2f6ce67fad3a672183d5c5e3997ae6631d9584cb
Date: Mon, 18 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779070833
