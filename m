Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241E835959
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754358595; cv=none; b=VvwTbQGaolX1WedOEjErsdyyWPrzsxTZO4LLgQFxkv2UtGKpwn/ke4yy+6zlVFp4WcuUYcsNJcDWwG4iuNZ+ThYJckabiq3Kj68xO5oVrNjhei95f9NGez1LeGZP6r/lqnPMEu5oQjnVX5gALaJ4NEhQZrk0y2YptXk/Yz7HBAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754358595; c=relaxed/simple;
	bh=jYlO9digGFmLEStKTVPEfqe2kJQSjqXAd1mmISsmSTQ=;
	h=To:Subject:From:Message-Id:Date; b=I852/jb5ldrTMSWZRV3vzLXu8PpXIJZq5fmBeC//urPtMI5YO99n4e7hZujAKii0dy6LNzz0pfmfVh7Qy1XMR6LwzBIEB2qctyb+xtJc4M0sPqCVEZoFpx9IC18OLhvLJ1lr/745Wh6mGngtBHMJiTfCss96ae3+3GMIsygk7KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWVQlvFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWVQlvFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD4C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754358593;
	bh=jYlO9digGFmLEStKTVPEfqe2kJQSjqXAd1mmISsmSTQ=;
	h=To:Subject:From:Date:From;
	b=XWVQlvFsYowE56/roQvEfCk3SgP/RBL0xDCGlMaYBgOMiStpccIdWk6LaYEsgdvIJ
	 atye8dZPgphscDBjgqV44prud37WNGaAGGg4ckppxIwHEgnm2Rz+p+dusLzB1FxNT+
	 Ag22+W+JYMWVOHLBLXREQ93BNOByASOhdv5NPtoIq3ml8+YbasAi9gUGTEY6uVV2RW
	 mTuevdnG0txkA5RvogpttrCvYnR5TAudH75qjeIZtwNzrJhskTZuORFvvrGn4AwvuA
	 +l61B7cswqGT8yaoKY0pRd6M3tUNFf8lrQr5Dv0HdqQmMRUvTI7n/W4fFHHf2opDXn
	 P8Z5+LtmQzB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF89C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435859358.10012.13090580770824205779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc0fd3a58ff035697083567c12ed97cecb044036ca801dbc92d44123ccb022c
Date: Tue, 05 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754358593
