Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4F52E3EE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732308954; cv=none; b=bUFLrwtQfth6rhfPJlxxvyenY/MzZJetwle4cnh8NRaVk23iyKSdI5BKn+43TLWiqCULfz2TC9e0ShVuBnLQTy608mSMylNV/PTIK1OzIfoTmPXFf2v245Z8IvKhCMPIN0XvduwVABkMRTBa6kryXpIWftB0C4S5tE63h/RuoVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732308954; c=relaxed/simple;
	bh=5Wy6uPfmy4hv1jvSbucGIIgC0tPyH7L16Hiag+UqFP0=;
	h=To:Subject:From:Message-Id:Date; b=o7v9NBSikZqFVHqKvnPy1DpC8hIsntZI+sdGajqkr11a+ggzq0L7f0w/iaUbB0o6e+xE6JrVzqIT8bwB2/6g4WbWcIrYg3Mq88yKiA1bUhtQEbh8/NBHXwI3+5/PrEv6Tpx5IJNLLnlPqFOgoQ7/gZux52gZ6z3la5xX3uS8mjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItvjCrw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItvjCrw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CAFC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732308953;
	bh=5Wy6uPfmy4hv1jvSbucGIIgC0tPyH7L16Hiag+UqFP0=;
	h=To:Subject:From:Date:From;
	b=ItvjCrw2ai1jiDmfvF8y0Swr+Y3ihlrfVHVqzV0UmtPhbZIKxCfNNzMsAidkweEL9
	 /lF/Fugvlp5FrI2t26c9vbnyOwffOaY6PHu+pXEg55Rxtb8ygz3kyWPxemv6rLOrqJ
	 vL9SgIYwdR5Yqm+a87DHqgA+TBq5zEZEB5CVfWKlQTCcqCfYp21E0SWtxxPhhJ7akf
	 vGyOieHooprlWg4Ftv0724p0AkC6MoSa5PWt2qiOdbFqR3O3pClIUqIxESu3BESTD9
	 3lFA28aT7v4E+ND05n6ImrwF4DBJ8R5JoXVS6Nn/ggMHxmMywF2cHoDhPaT0saP/44
	 uXoi1OroaT/kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977EBE69191
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173230895358.353.4104722929202236045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797bf168bac0245533d35b60dbd7ea684b660e09a4c8fc3bc7d8a6cb594ba6a4
Date: Fri, 22 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732308953
