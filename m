Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C1483A14
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785635434; cv=none; b=g2MlEPSzpX4Ga8DuEq+fKgamt9rT2dqxIQRj6azoe2JbYwyaZAqly2Eb/idZ+7oJ/gBnv7L9G9MYhDvexU/cyjE2OtaVufeHI9Z5d3UbkwU07XX/AnlQTUv94urYcoZaNCCwAx7s+Qu2RBMCidPbFweuGyig3M/dVm4QNWKGDhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785635434; c=relaxed/simple;
	bh=OJfOcm063oxHQ3/LGmv3IqQtYAsmOTkxGdjfoFH2pM0=;
	h=To:Subject:From:Message-Id:Date; b=ivwxAEy02X4OziSNL61WrcCdsbDmjWNhFChKXEk200qpQzhzTHxsLr2Hzwfj8aXyTvXt5mwTVGlO74UOFWv9KvbUuZtmMCBKh2d+M1PGM+kKYEdXIjG3i4EiCbaG48GEKVsGk1mRUsiCqqHSo1MRispCYT/Zc2pEhMjw0ItMpcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWQ0/Ffw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWQ0/Ffw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09E8C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785635433;
	bh=OJfOcm063oxHQ3/LGmv3IqQtYAsmOTkxGdjfoFH2pM0=;
	h=To:Subject:From:Date:From;
	b=dWQ0/FfwbDu4xwtUN/S2wK/hcYRAe1g4KL5HCInKTykUGICPOt/sR5lABvAHw86sR
	 rRO1v4uDue0LJ7ifRLGZrBwSdMT+d6UikF08HYbOXpV+Zqa9uFz0BzRic3ub731gGC
	 L5uFWNYmBMNvKPhE77yyqtdkF0eoeWlfMQzZpYMIWePFqMIEK6cmVbf44SvimPWwTu
	 BSAjDS+hQ5GHxSapIeCruqUQGkj+nptySbGomSVpeuPbjhoqMCklTUiRwSx559vuWm
	 I2BLdhyV/GnS7Po3lZl002bXn+Jzi2un0pqCg1uYGfmvkRbLrxQ1mX11NqlejrXBjG
	 UnEVaYC/wYJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEFCC55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563543368.2304.4007093724522851145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cae579690daf46396c89d4093b28e11216a30431bf21a4831e0ed65b78e01f9
Date: Sun, 02 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785635433
