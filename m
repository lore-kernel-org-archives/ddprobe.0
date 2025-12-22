Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9DD169AD2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766385234; cv=none; b=iEUb7WYJaVXVcwHTgPydMNiUbqhWxJmSQbhrqqMdPC779JmTKIGMt51fytx82/iH8kt6udT8Qym2KbR53rI5KByKJSuKpEYG8IRDmj0E55xNwsSdyWxxMxEJSL8kBTuNTeMfyrMugPB1XEEnTmBajxOgb7PttWADcxD6nzT0sbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766385234; c=relaxed/simple;
	bh=FaNeqafCInhD1QNw3P+QvGenUS7UPcTDAXm6BeDYK/Q=;
	h=To:Subject:From:Message-Id:Date; b=gDsb3njaJi8ye1K4cQ86IA23JeLAyDSJYe1/SdM2aSBHqhGSyVcXECEZ7deVJEGxrOnhyueFudpQNtGtJ3jS3/QXYb6dpNXg6MOpegVkFUW7mtyqvMAkOIokDPMA7ACr8rO/SsFtk6xi7bgiuy38657vWll/A8GSj2xBZHfg668=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWMPyMAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWMPyMAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E70C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766385233;
	bh=FaNeqafCInhD1QNw3P+QvGenUS7UPcTDAXm6BeDYK/Q=;
	h=To:Subject:From:Date:From;
	b=gWMPyMAuIJ7/CP8Er6v9lKD+l/o+RH9ivXLuGnE0evf5A61gDE+nUngzI+GznD0SI
	 Qd/HYi69t6Isql7x4eTVlCp8u0CYEAbvTcYWpssr3/t92uEo2ll/sWuOb/0VUS8gjY
	 bj0KYzb337I5wU9jm4Qo8hebHZ6YHCFRg6RsrswXPPDwKooWVIoYa8gpAO/sRD/Fdl
	 jiwoUIN6VmTHmMe+J3aGWrFY0VvYsuhORTE3BInS0RA0cerv03UP6xt6Bw5UWW90OL
	 eQmLPFMVEC3FSGKrdhwqtRfd9TMFDfouW1qThsbdiFDHE4zgnRfx9CP1R/o/t49NpS
	 aGKp/x5cn/wjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E09E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638523358.4392.17022521740790727613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214ef2adfbb538e72fc28ae55d64053b44037833c33c588fbbc5903d6876e337
Date: Mon, 22 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766385233
