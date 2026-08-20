Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CB031A55B
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787263834; cv=none; b=J6mg2DPiqAvlPVtptuJ63m8/QbjowH4UCt3IcliTpb1xsF5z3NUOBWzRcQZRg0DkUjYIl4YU/B9bkG5o5pnnKQLMHZGyMrftSumYmjvpJivxZVI3+zNGuYdshV+LVfdhpebFhrrkYrEAanUborhW7+Lwoo+OLMOdoy8yb0rtmtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787263834; c=relaxed/simple;
	bh=xOrnyStWXfmSsM+WywootoYGoRFUl2iN8YL0aeOr454=;
	h=To:Subject:From:Message-Id:Date; b=ntpS2HHE9HubL56PiiAn3VuSvZfqxIcnoE1esaZj8ANvzeGbJW4Ttr3i2J2XTg3wp2awgb0oQabZxp/eO3ZIN3FFL/f4zLRKVKgSiG5CrLozrp5Csvvsm5Png2MPNG3X4aT2D2/NY7XUxuz05FsIg9cUlBY+vccAtcw6me2Wj9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONWP/umx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONWP/umx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE28AC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787263833;
	bh=xOrnyStWXfmSsM+WywootoYGoRFUl2iN8YL0aeOr454=;
	h=To:Subject:From:Date:From;
	b=ONWP/umx80Bn0wMt8Z3dDFRTcS6CeZhAPliLxkizpWmIE2kzOfSl15VMfXxgDBGmN
	 txJrOXl1oymVt8+6wImP2ga1rwyO1I1ROMUBb08wOCj4odFtGNkB7IlN/FAZ6fvmjN
	 /Ppib5fjve16YRbttpSmQxy5gUaNhTjCGFSF63epca3RChhw8mNrlXnIFT9N6vj3W3
	 c13frmtsSxW/WLfF0rpYowayWsqvGcXkKjCwZMfCVdzz8p2rcauJkTcevtDEYh6nae
	 3z6hpe7i7Ld7idWkOtOhhFc8JtUeHdEmQjKYZX6TS/V9wFaaa4LRgfmJfPejjRpwv+
	 RjvcCUjkKyTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79FEC5DF8C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726383374.32587.3364647929490514159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc98e0ef892b8c9182c9a18fb6a5b2dc5b824722a65775a05179d730d68b7b84
Date: Thu, 20 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787263833
