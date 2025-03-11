Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEB31E832E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741668534; cv=none; b=MZcrX74ulezOj232wxgV76N5tYhRztYvaeRYxjG4uiDcGiXz0hDDVlQQLxlB69RX7kdiUE17T5PiPTPsO4KAmPpwmY544EK6E1HQKoD6/YsQ87T97zPNKu1TbAzxhNX4qmqrUnxD1DPVdR4UM5su03yOk5P9skxRp5HgjoE+jBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741668534; c=relaxed/simple;
	bh=cqVH3oHhJi4aAuc/j6QYAUYeROHPI/Kc514OEJMFXl0=;
	h=To:Subject:From:Message-Id:Date; b=oOTYjIg58E1zduU7ACZE2f8//ASW1Q3DONiYrPkTgVfMEZ5kqwPaUuriQaVyoaTCkLRXYem5g+LDyw+39m+j7TqnpkW3SG4YyPduygqCPaV/edIlnk/zRWW/t2So+Uwqd9KgvpuvRxogsbr88GClhznwsyHe4KTuAY3pMHvFnTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsrYQTEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsrYQTEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C3AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741668533;
	bh=cqVH3oHhJi4aAuc/j6QYAUYeROHPI/Kc514OEJMFXl0=;
	h=To:Subject:From:Date:From;
	b=OsrYQTEMcInLIJEkAAsDqwNjkowQaDY2N5no8kCvchRMsDT6OaQrv0wnyoiPh+ltJ
	 DB2wC5AQCTFXCfXlhGjTU4TCuQbwOLnA+CFj+OosnCAHPP89M3lZ8kZeMMUyBkJ43a
	 Wu4h5q9ISclK0CRi1Z+bou60HA5lWzp3z5R6Wkds4NxrWtci/+Kx8ZO/GUwdECiMHi
	 /5APXI0mGjRhVdpQnstJ/czYdjOfm8LNcht4SyPdW0KvqSAl9I812Qy+8mG8JGnZUU
	 RtYM1wu3imW6+/4/FEmwnIux4vQwvLwkLrGpa35OCmdvrHawsUuM1QCqLBwuzLygs0
	 UrIqNmTspNDUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9535BC28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174166853357.19619.17786048847482028286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86bffbdac05add92f327f4f0392739b3d9bb3077ded1ad484af5997b50c08bd
Date: Tue, 11 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741668533
