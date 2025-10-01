Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E3E222564
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759325993; cv=none; b=u2F+uhrIw0py32eGKHhDxFvaQsoV8w32kFxxU2O3zIPkyi47Gz5HnZFzRqmAk0I5O+SfzXDBE4nrbu3dWUi4Vhbts8dCN2Tr2s6JbBA0IH4zRBcm5kMrA0MRJh1Kt0RoRw6UZOLV/WmbMcZpl+Bz3MkoUn8kUBwuekePuZbSI6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759325993; c=relaxed/simple;
	bh=UDgOKWzYmOTHEF+xL2nEpBPWPPlVaKN19UMGjtksblw=;
	h=To:Subject:From:Message-Id:Date; b=XGb/6EWOTW4RiaFblFGK5EvhiT7DI6/uqS9RH7otPv9OEO1GKvfpTPSMauXk1Dtn72B/Z+urnbdKvWdeZ/i4BX3nebUMTajRdYfcb8sADd6A6XuknFZcc7VOSGXqO7VRJpHI9YVACW9KfCRGqCMhUvRaXS5z/0DpzBEg1CJz/ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiEDt9kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiEDt9kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32A6C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759325993;
	bh=UDgOKWzYmOTHEF+xL2nEpBPWPPlVaKN19UMGjtksblw=;
	h=To:Subject:From:Date:From;
	b=NiEDt9knDUGSsUi0+kpA0rU+NqFlnxBHTWe/7vgc7G4/2RFfQmtA7jl6l+B4EIWen
	 okqWm6UaLewO3Y1Jlh7dwU+vxJcI1YVpxl255IiLmheDrOk2pINLFl5IMNOLppFn26
	 kztyIOpKQ9A06yZaKfcL68gcXDopJWUfcltyNMaz6RrTSpuefnZm0YWRHiqCTo8ysu
	 +Ujh7vwpg6tYD/Z7FXjxjfuetYRZ5QIvWbVuZa48pyH5gsWCQ4Li8uwZnPHWKaIM0d
	 7HEThwdWFas07/8ZxycV86H3uiCGRGxQHH2WvZz9VIjtGMqzm34ZBiHCZub1P07RL0
	 A4+wBQcTFrXyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9D3CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932599362.20839.1869645720603521194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2b0a851e57a74989f9c3663072d5ba755c8a6d96c0fd104b1a09f1d865c593
Date: Wed, 01 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759325993
