Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EF33F39ED
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782475654; cv=none; b=JRMvcH4UBgU2tSAhW9uIbCQQMFFPMDYl18WCdLfpxBCEvbNQf/MuKP16djzlyC3kBuNEPJhlZVxd/gpI8DM7R0L2HkBcxfLxMH+tgKV3wH0Uh7OCyy/oRZPxPrNhmtbIi2Y6GT/Cp4b9wYyDOveoA2Iv2Y5Csj0peByWOCLDm/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782475654; c=relaxed/simple;
	bh=Z+Dr/vbn+oRy28GK2u4MgF0byFOUDmpdCd4h4jhmZD8=;
	h=To:Subject:From:Message-Id:Date; b=Czy06HD5/Jnbd/XcSqGlPOLcvx7zS4pfrBspMuMXxGNPSrbU36Z67rpoRA0JcHQObzx3uOSc4+IVMeZDDa5DJD2rj7sPcoxnkbiGNGCvv6qciWQhPluQjOgiMrkSVIua8BMdS472zo/QekWtsU5FxR9KqkZ+alyvrhzj5TxwGD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MixSDnLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MixSDnLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA14C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782475653;
	bh=Z+Dr/vbn+oRy28GK2u4MgF0byFOUDmpdCd4h4jhmZD8=;
	h=To:Subject:From:Date:From;
	b=MixSDnLmvmqJlPDgPaVhJZ7GU5YsWbtQl12dPjgV9dYOOxs6zI2nxFMBs076CoW8w
	 nAckJNBRSn8tz0W+xYnMKA+EiqQrWL7pLULxEewfTy85RmqVryyeZPw5zAFaY7bHlb
	 NUgMORLNcaA/BKne1IFnfhCgZGbhbMqVT3vsiuIKpAPBA3VP6xKzSLj+cc8yJgKzfy
	 OAbF1zxNW8FH9HBelDknIkp/c0Ccpb4Qsxz0JsA/KfscY9MCz4hwTHLyFZ/mrhJ7pJ
	 HV5JY0MrxDdv65RIgYAAnbRw/5AIrZBLtfd6Jo0Fz2ytsweuWXEoScFwYVLzq2YNAk
	 jEL1EAkhZNDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3014CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247565372.8863.12425397034275532863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba6b238fac295f158df3feb43e403568711257cfe9c5c5656c5fe1acc00c0f6
Date: Fri, 26 Jun 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782475653
