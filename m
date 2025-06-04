Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452F419CC11
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749050994; cv=none; b=sBocSCcjmEp+G7jtGoOXrnkyf+TeHa8blo06qglTCArLn9S1StvsaA9u176QBAK/IvSjuHAqN9zfLGApoi4jzzIXjmFdacRlMBHi2xYyTjW0lvFf+QFP+Zbkck8fv51cL5o6ubx1krxTE/wpvlURexGVz+Ao3kpvCgH1Q7+c1HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749050994; c=relaxed/simple;
	bh=Gtluc1ecw3f1Fmvc0OkqPbtHUEHI8QoNVT7wR+y2JRI=;
	h=To:Subject:From:Message-Id:Date; b=eVN0COQyu2rjD2tOHjdnyYAybWvXyAcP/JEDDrrhauRCh0Oopaq2XBHwZJyZJTcBLOke1giq+YCh3wO6Klnr4rnktkvIReqxGsm7aE2SDl5VukZGfeVd1JNGsO89SmaKuX+JrRzotGuT1Z2Bkq1PD+GF687y0RVwTyYUSCuYql8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwU8Mliv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwU8Mliv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E1BC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749050993;
	bh=Gtluc1ecw3f1Fmvc0OkqPbtHUEHI8QoNVT7wR+y2JRI=;
	h=To:Subject:From:Date:From;
	b=VwU8Mlivd3OHzJr4YKkj0oM7lfMQY643898eoMkSS3VNaniwTytbsUgsmBIN7yS7F
	 PqPFYpLsyQNjbCNAv06UUH0xQ6vMo8RgLG6Tw7k3itzQKmc/zESE5yM7Icg/SBninC
	 x3mshcPcbxeQpKXCvIwq4B2+C7GnqUgmseHdF3Hka3796Y/v8yN91fMaD/MNdMIf5S
	 X0lTA3qeOdKizI6MztoDP/kQ4Ot/uG/0nBhkjtEsAlU0blDARHKxiHRRumasSzUybv
	 ME4+cYDxW5SUrO1fGfaxWZjwf0509+ys840aq/PeREiwE3pJ5e+wtoYXWh+dv+0lcp
	 z0Na4HM1xg+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F3C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905099359.6738.3731821426358971801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785e064cb70cf4900ac59923a14acf6a10b96bcb125c30cb00173197021c768d
Date: Wed, 04 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749050993
