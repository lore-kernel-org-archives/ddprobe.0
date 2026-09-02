Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4040C374A1A
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788334234; cv=none; b=n+Hw6Oim0T6SoWGuZte+FANrTVRMfRxoZLn/rDpw2G57txmQ0kSSBWJcHLcGH/14GeaJP+HB890GxR+UxFkiAXCF3Y8XzDyn+4I5VxHRTEuDUbroFsGrFAnE57m6W2raZ6dc/03vCGSADYx2RVN0rDA3CAhywSHgDhPwy94mFFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788334234; c=relaxed/simple;
	bh=5YYBZ7qhrTHEXhZonKmDX0aZXzgta09p6F3ANCCw56o=;
	h=To:Subject:From:Message-Id:Date; b=Us3cQYLFM0PnjyyxBT/jfDHHuCMzbB3zUnqLtqt4V5oNK8WPqoyR9KN0VDXh6pL9dfc1PN/DRN9jymr3veOxqiQxee/ZZgDWCZAdDyxfnq10wUHTMnukImbAuQfC2xozmuIPyTY6g4deaZv/avTui3leX3vhjf2SZBzYM1+eeko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXpzb0JF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXpzb0JF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE14BC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788334233;
	bh=5YYBZ7qhrTHEXhZonKmDX0aZXzgta09p6F3ANCCw56o=;
	h=To:Subject:From:Date:From;
	b=RXpzb0JFVSs6TFNperYLrXSARSjdQGwW1iH9UpTbDd4tbhrEPrFOziEMSF8cLawiV
	 i+vFpzq8l/01M5vXWmir0NQo5Fs40j10uRWYkrgn51EmrssadZO0NoccrAIr5Iu3bM
	 PzAc5qRe1tmOUgFKyCpuiEd+jEb4QQmfat1dd2Ci0nrG06GyRKkLPch0hLcyr04h+e
	 OBXrL5W8EGSGWM2KTEs9eBmTfd7OCVYd6xnvxHLVWGiOo9TDWtjTAbaTjbw+KQoHW4
	 W+umZtdneLbbU4aeXaur8J38V/eF5VmPGm41K6y2pxe0VJcdc9tFKTvFgVQiyy3utP
	 8M/cPyxQP8UFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADACC61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833423368.14304.730569567904473582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3176244a1e24f2e4db0873229013a2ff7fae2b1d0002b03affea5f4495905d0
Date: Wed, 02 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788334233
