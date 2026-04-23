Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6203DEAC1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776933454; cv=none; b=i53Te2CUWAeYKItUrSRv45CQouEPEVlSbtNVm/7rEYI4iw2pEhed3nQEB8pqGVuOmHa2FAhQEuT13BihfNEHldWtfoJqESgtxqkHhKQJE2ArS0NCizKIH8MBJk/FVrvE6U1l5SY4xoAgTiSl8/3rDDYtGgx1mG/vm5wwHs7OsVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776933454; c=relaxed/simple;
	bh=7ouvmFhCElv6O8JAqz3q0rn0O1Ivt5r0xJ+co4tCiUk=;
	h=To:Subject:From:Message-Id:Date; b=Q4uZN9BcdZC5izcWaInfMWHjsA52U6lW67YuJExOhPaweaVHvpBodhnYfdfZZwC8DKi2GOqnZQkNGvd6+XKlPtOZcfJdudOPONN6jrNsNrwSGlzgfSrRFftHTetKz1UgjEmT5r8rock+kcWFzb8vJyD1bC8UafWNsmqlMU/UBcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGYIROMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGYIROMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C099CC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776933453;
	bh=7ouvmFhCElv6O8JAqz3q0rn0O1Ivt5r0xJ+co4tCiUk=;
	h=To:Subject:From:Date:From;
	b=NGYIROMPjTRc7YxKlp3OFAIKy8YXx+4t8owRikPSDazMsm/IFSjE5Jc2Tz32842Nv
	 pBV/jLzPiYicSpcf4IzHdDKzTtM97P4EXTmEZtw9WZGiVDrcTcBio/XNYEiQk/8ohE
	 zHALqv+HeLmu36iaTU0sh5mOIdbJftQykbiKSlkE1x1WGqJjO8cIDRsBrco4ckhbn7
	 RpiSzPBJ5756v6P90d0cQ5AVcSErcP44GFrpZnvuEm36fzLHoxoPdynyyD935QNi1Y
	 XLfVmIPJ8A1dFyoA3Iwo42iTtSwA6gpOCtHwylZrhfx0limUyAdpOTsuXeitjATUaW
	 g6irjIdY+IDYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC2AF99351
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693345369.23170.17004454880337973104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9172857959e975a450edfb0689cec98069dc5e120c43da975759987eb6fb6b1
Date: Thu, 23 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776933453
