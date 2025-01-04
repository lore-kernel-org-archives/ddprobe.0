Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352BF2F5E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735991754; cv=none; b=WqF77Pee1uWNl7nsgH0RfbOwjY+IKRoGRSqqtlBr87JpRFtiN8YekZyzsJI50VfoztzXiggVwfiGujxCvv/C5e9m53ML+Bp/ECb2jVEaxVfU/wHqnG30UNUTHtkldvmN7RZpXmTGj+SU8H+/aK587ctKtZR6hKjcZxdzw3grd70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735991754; c=relaxed/simple;
	bh=TTQimkqMwqlIDkRdD0Z3W1SPfWyt8Lir4Q2NQRoAbig=;
	h=To:Subject:From:Message-Id:Date; b=VIr3RBWQ7duUVQq+GEyOzNRkTImzlvygudhQ2WlaOlQNNRK+Hicy4sY07Vu2GKQosFWAYB/h4yGrSAjD6ubFxt+AF6eooFwX3/DvzgD/U2FXeT0TvFVUVus/eAqxlo6nz2GraTLjJPcL70Agz2dPDJ1RqCS46areVk0ElzdBB5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlVsqcrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlVsqcrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A3EC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735991753;
	bh=TTQimkqMwqlIDkRdD0Z3W1SPfWyt8Lir4Q2NQRoAbig=;
	h=To:Subject:From:Date:From;
	b=XlVsqcrv+8XZK7pAAFydB6ksT4t7w2cpOZyq/mYEV8cdDb7mdr1PhETO5qChCL+KQ
	 MggjTkJoD0Ti7RklOQrzZNVfuJ1JhA5x4XXCJq9P5lkHDHLPKyg1bXKCnraWUFqw39
	 6KqLwdD2JLZzkYKlFh1CatSizSP5gOypPiWwM8Di3IR0EZm61DXIxOY+zMjltldFvt
	 5EfpzRrnI5VDqO2l2+RpxiAyE8n4c87PCVl0//NjdmUMnc1WCcCD4bkfOVqYmA8z4l
	 kIwxYwcKzvWU6Gt+9El3PmONWhK/zp+usQXp/g+fg8bx2/Rs/Hied1g29ctQNFpyz+
	 grtMJfLKWTg6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D2EE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599175362.17950.2033090167378300591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c0343a2428a796dd5db02d99db04430773d1b8fcd14eb96277decafeab78a9
Date: Sat, 04 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735991753
