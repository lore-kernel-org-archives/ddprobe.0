Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5900030B529
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784162914; cv=none; b=nyXcrTxgSVcLubofryFtBw1DhE1YQDp8q7aKFD9jVf5iUhUnlpwusy1kGEBWm7xglAElyS0uCLO8IdvIQvv9tMoKWAwknUwXE3pYBr3OQc0U2f2f7BVdpzeer4vQRDxjQxDn9hh+n4uRpHPNvFvUTU8bQjhV17Qc5e2AEf+DI6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784162914; c=relaxed/simple;
	bh=uAkBJH7Tx9hZ1VauvFBxhD99UPg3toUu8cMkl1HeoZA=;
	h=To:Subject:From:Message-Id:Date; b=W59OvuTDGooWktwSKLM4/PPUheweA5PMFtmGD8OTRnqQUisaB0RNLWh4feP8qr98Z5OdPG8pcwcsk4C0u/OaY0TUcdGkCHnxZ5I7ulhhb5uRwt9CUCF8T9zqcfhz3j7hhv/hJxMJ+zHKGAOhvDrb+Nm4z826KSnYRqPSFgWbxcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrscztKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrscztKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D700BC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784162913;
	bh=uAkBJH7Tx9hZ1VauvFBxhD99UPg3toUu8cMkl1HeoZA=;
	h=To:Subject:From:Date:From;
	b=HrscztKGA8Jxu6ZSQdOfTVr9RZrFsdBJqV6rCIQoAqmK9fGf1BuwFeY7b0zeC/GiP
	 xuipfjp2lI4mes5AhCJTYKkqSmOCFFzt3DeB6DbH4ZY5nUPVOqaOoOcamKYBL6n+MU
	 DLzAcMS0S2gMx2oY3cANeNkuuv6rEGecX1qvKGVSbXLQAMjYXX6VqfCaTjVc7RhVFq
	 sWxbcFzYcvDcRw/peNbJlF9fcmKpkIPP7syqVeYci/pK5jQnuUGoXqXAoBTX1L8vmP
	 Nwmvk5gHImRSwrrZwKG+CaA0D0m1YCnnvPb2rDi/wxn/x3D315q4mDoW00TMbNwSGW
	 FjrkVLvSNzNhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02B6C44507
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416291370.24086.728695104494733928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d274eacccc69b065c954c14de3e7364b17241c6da0476cb3801c6b043e8ac6f
Date: Thu, 16 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784162913
