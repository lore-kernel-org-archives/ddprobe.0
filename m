Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500AB364AC
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714770743; cv=none; b=Mf+HUXnrwCbLW0MBl8WGwoWP5/hu5HAvrldcSA6od6fFFzMo4WmXQPNHJib52Z35A7WuWrTWxrAzz2wIctJQPQr9XLGwtxeeBDhMqwMDaYtHx95jsQFO9RfcPuA8G/rn6TuAv75VXAxLMnCR4mElW/8p/1Qn5dlEnHYUl+ahLsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714770743; c=relaxed/simple;
	bh=zL7wfRdltsCp8dsmyWs6VP61TfXb3OtBvQEhDF6iTE8=;
	h=To:Subject:From:Message-Id:Date; b=uEEkp636Gmc/VD7u0QR5pTAJMfjql3f3KaH3SxsxUZ5XJKcFGOTantcn2tIkTvCfex0QH+K5sd4MLGMHdUCJ3d0PrYGtObSOPE0s4v9MDvwcFmbwybAwT61uKFDaiKutaT9bKsdH1+Nyj8qfUHhODy1iSDZA3cWYh57LH6OvMUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsl5RYvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsl5RYvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27E0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714770742;
	bh=zL7wfRdltsCp8dsmyWs6VP61TfXb3OtBvQEhDF6iTE8=;
	h=To:Subject:From:Date:From;
	b=jsl5RYvcImc+QOpSMyqHc6nCV4URGgL8KZ+LuJ5ilimaQ72kReM8w4zlLVrzhp1aE
	 5rBRhcDE1U5tWrp+5QzUi4b2eNupNglqogoXlZGu4Ck5TofvtOyr0mekKPVolf8g39
	 tqgynRfUdFIN7ofouKuLrHPS4Ie+NORX91PMwRyecTwiKyootKCn96/9KOJbtXk2+Q
	 QkvSBLLmBVIDPOT/Ixp5pq456BqE8vv1tHvIbNfxOQQzXPOXveYsvTtv1kiX9SNmVq
	 ExV3sCMnTHkoll1+cgVsWsDRS+I7DKGzj3tEQiQ4pgmfEjdZUhnOm72ehNgf7f+nCb
	 ZGMASicG9DwKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1982C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171477074278.19830.16193213965158801762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08050171a236d3e8170fd6f3516e3799b3b724cb3f95a9262ce721b242199240
Date: Fri, 03 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714770742
