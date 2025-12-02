Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3173D1F936
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764681174; cv=none; b=Zevt1V7SGM0Qx0F2nahi37vnMmUBeXX76+skY234bRXQCbQZo5WeOdcC67QDQX9AvNrUFjjAYiXQ3YU/FBsMTxDo/H4j2h/Vp/nOQGyA5hhipsnHVCryDht689ukS8g0FltpPSYV1Ad7OfcnmXiAJsw+awXGjV73UnEE1svS96M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764681174; c=relaxed/simple;
	bh=TJGpQic8ZkRtANF6fqoyxRpvSy0k6FGf9AhXtEvtt1Y=;
	h=To:Subject:From:Message-Id:Date; b=jNL+Gn/7QogZeiVJXc0z6MPQTrz5mU58mL4IEQfNyr4VWn5XTDlgoAZ6aluQQ58WMKwoaWotZiDk8dxQqmbXTvR/JxtbREc2pBIbFj6Q+rG8KJZ6MtRM06dZmUpTaZ8oVCOgecRHrg0WEh/mFirqfu+9zKXJUynq2SHtXaIn8Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FETlRpgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FETlRpgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABAEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764681173;
	bh=TJGpQic8ZkRtANF6fqoyxRpvSy0k6FGf9AhXtEvtt1Y=;
	h=To:Subject:From:Date:From;
	b=FETlRpgR+ItXtqc4ujSrEG1f/VIykY7TvPgW1tI2pAwELKn+/HpRcZynA1SFNtfHY
	 hai8hAqT022qLGw3gjK3M9wxgqBsXQzwgf9p+luSgJ7d8BjZGOdez7HAceWtK3XwX3
	 8ThXwABFwEpMfifcBZ/LWLg9AvsNuDrXkNOwKkgu1atCxCYhnejPo6XV4dz98E0Dy2
	 wsSppbhPzBSpmUaqw7uAUbv7Y/dCNhvaD/EkYZLIsKcKD5Skxx/Cptdm2kEdzJgyyn
	 vCJs4qyDz3ZdlZpOIsj6hrf5L51MeeKOIoH8hPYKefn5HHKghsw20hBzgJITev63ih
	 2b87WFAflI0iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95459CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468117358.9691.5053068111420437016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45b873e6e070a8a1f9d217887bfe26c3f98b50d89c3165aac7d1514ffcd8976
Date: Tue, 02 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764681173
