Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370FE2857E0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758046194; cv=none; b=SRvFTKmDFHfPJWbsoJvm1/gGzXsPM9mkgx125WHospSQRY6cejkzCT5t9HxjVJq41/Kb01ZOqlgm1ZJhtAGBBUob3o17gpJdVS+8e7SViE4TQvISiDQHVyquK9UDxSsdBwxIAf82nHdCW5BYoCtWh61V2YTW9Nnw1H7jj2dbdSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758046194; c=relaxed/simple;
	bh=PngLbqKIfZ0LkXq82b/vXq34zIQ3SMEfvkp4Il5ONi0=;
	h=To:Subject:From:Message-Id:Date; b=IqZX+UhUBHV//E0j6xOOQMVXAynbpk0oEq4nhPbU62OmiISUlLN6hXD0K1cxU4PloRgR+yFCfiEUyy9/6w40V0F+9mfXIjfJV1YAXaHN6L+Fgt+fmAcW/utUEDqNTpBPBHzX0+aoG2xorLbaxoxR1bqmual9i5OS0vwfH1RLKCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=df2Fib2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="df2Fib2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53CFC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758046193;
	bh=PngLbqKIfZ0LkXq82b/vXq34zIQ3SMEfvkp4Il5ONi0=;
	h=To:Subject:From:Date:From;
	b=df2Fib2DHiUo6ofauzSd/rItzsnlVlfG+WTlwlKAzu6mqIKFM/P2kIN3ulQDUoY9k
	 C8zja+9DL4QvQv2GPTpKGObipQtEA31rsGZCT1T4Smyyk5mX1CgQTggQWJEIpfzcvm
	 yB9JHa5KJo8jt7NZJX5O+Z03EqrP6xBOnokgf+aA/pOMDQ1rgpz1wMyZrJA+E7Fnfj
	 UwW25ZJAlqM4xI/n7kqlT3uStpcMp6P+k7a1MXn3FwiBa016G50il+chu3aDKvG3KS
	 YN3VLGgGkaCrfVb4rxBdCo/yJWLy7lmePsjXR+/DNxtYxFMISO2kf1ybB1Ox3ttneP
	 azWlQJZwrn8xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242DCAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804619359.5520.6302743865790507625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c586f4ca36392f10768adcb8d558c7a96babdd1ffefa90f7bc82570ee4a6d91d
Date: Tue, 16 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758046193
