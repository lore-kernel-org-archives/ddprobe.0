Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F160146A66
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787806834; cv=none; b=fdQrK8QTurwctk0eH3nMvOMjlvqxL5sSW5HLslGHYfNSlqdpX/B5LshJaSA1fZgQKvb4eOppgjfmK+OzTN6E3QPf3pmOl6vQ47pQXX6yls7weUHJW0p1uMsTqNUVBaUaCgkNmmz/J5hCMP1g5ArSq6CI4gM1bdPG8umiUk7uax0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787806834; c=relaxed/simple;
	bh=dte8YMTslN0sHONfh1I/QruryGlc2sXaVB1gzV+knbs=;
	h=To:Subject:From:Message-Id:Date; b=HIzGsYQ01+E+EvTUGw0KoT1le8S3t8LJFrgwR53TpGquVpkVMdzhDbIS9CHc7cR6fEC3hHMm+eybOK2hvBSbngEEdzxaeeQpCgSNSf3XckQWedfnu9ghDWI3Tuub4/gA1TJrF/fpdXNc+X5leUgdso29VhILx1LBID3F8gMqZ+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4PkSio7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4PkSio7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3711C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787806833;
	bh=dte8YMTslN0sHONfh1I/QruryGlc2sXaVB1gzV+knbs=;
	h=To:Subject:From:Date:From;
	b=s4PkSio7YRfgGwh3H0j2U3JyKCvz6QKF4gp+xsmuHWhNsPiZIrSK6EB8pGV8H31KK
	 iXPwbelgxHNeuh/YR5pCxBGawfjflCtJnN71PCb5vJ1wPealan82x1iBNIRTTCdScE
	 lK+7Gm0Tg0M8+O0uxfQ2V5wsq1lebtvQeLp7OuMiI6eSXeTTH3qVVVERAl4c8JSgNl
	 RtCFIwCQpai51vt+ZkXJy/eT6/wA3cTb6vDQyy2Xy4dTAQNMQR5ZZcpWT1RZdwS5p9
	 xtAIPkC71inN2eMmZrHH8gCUStpF18xEGel1cPe38hLF4hE+TaKO6BRTb/vrtbtorb
	 +I2BjwnUKhdJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA59C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780683369.25575.13103677252576764815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54af2e45e89b15a60a3c7e72824ce03037eb71764f1959e60f9d2201efc1330
Date: Thu, 27 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787806833
