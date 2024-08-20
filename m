Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4E61B8EAC
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724184954; cv=none; b=H8+9I76v0MlIMDfFU8OrVi7JJtUx63GwptuiVBShJzAhZw9bPjgiSiRtBTt4OZBvFLsr5O8p2hww3UiwvxRac4wKF0YAqAOgHgb9lnEusglp3etySSagJhaLkOxccTSZHdnqdEHN44iU7RyUsvpc+ZWVboDukRSfN/Pr7hL/0jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724184954; c=relaxed/simple;
	bh=LXfVdFEtUsCIh2lwnaWUz00ZmEjIAUCk6bQznUGePDs=;
	h=To:Subject:From:Message-Id:Date; b=S3q1e7rKs0ncKEc77+0AD04uVBxXxU8EfII/Hecn1a/hzk/s6ffdVtxdoMWdCMciBD41z4xtJLPEPnFntezB9cPnPhRTDORAOisbwNM44tQF++8PDrPizg9+yzAdhE6tJPE8xLZ/EXtBkJldU4Sz2YO3hfGMcanZKmpDpjqj0VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDbm8g0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDbm8g0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60F5C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724184953;
	bh=LXfVdFEtUsCIh2lwnaWUz00ZmEjIAUCk6bQznUGePDs=;
	h=To:Subject:From:Date:From;
	b=MDbm8g0jxio6FRrGIvgfDieMCBw6Wcn4a56IxzlWM/gJHtx9+tz5zU6roynNlf1Lw
	 fd6i6grtSgw1SG3FyFsJP1FST16cfo8+cVRiUCN2mRjOttXyowpqA4IDVC93rmlCUi
	 JBbQcsyaLm4r+pbi4xAJIszHZ02U5WNaAHXi9iEvvCTc8+XpThGNf3D194NTtzYI97
	 5jsUA27i25SF/V3PqX1JALd1LbsRGHub1Iu99HpuVe89grX+ACIa+nfwh0dwwWsqN1
	 kVRgIU+VKlQJqojy6zQnC5xSEtJY8X0DllSzl8OF9wfKwR++GIa0oidV/5ZtV0FEY2
	 fFf2kWSwUzXHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA4EC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172418495361.24300.15373326807756680321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df991fa13ff416a2708c0448d18e76108fb636cf557c373a3ffb8f989e8c263
Date: Tue, 20 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724184953
