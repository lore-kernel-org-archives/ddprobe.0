Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C755325711
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761760794; cv=none; b=pLfitilzCzFnl80no5lxSzPGie4x8QYeafqF11X7cDyDN2D0i4Kgg2dDzqY+DfDLGhG6tQ654+ZILXCWAnwWjVqBP7fX+mg5U0mVmUijz4nStWaFi2jfnQPKpOyeRxRW+AhO1X6yilzy0/44BtNInZOfBiujIAoR6PjTi4+4zT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761760794; c=relaxed/simple;
	bh=BkSRyFdWFrwyGtIPBckPSQ4D2FA55VaOToNJIpMwnec=;
	h=To:Subject:From:Message-Id:Date; b=etBKzYrmoATGCOK90y3uQcTlffBwNSt3cpxZ+Cf7MYozuAgAgS5POEQPUeqKi84TFNsp2vejhhiQNq/k55gK6uDkaEmfzrTRI0+JWKB1KWGoApF9bc8ySeaIFn5RQRNENYBRW+2tDosuV7LEgAW6C9GeEPmC3Fm2QM4R71hvJX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqW7KJF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqW7KJF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EC0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761760793;
	bh=BkSRyFdWFrwyGtIPBckPSQ4D2FA55VaOToNJIpMwnec=;
	h=To:Subject:From:Date:From;
	b=iqW7KJF9D2bLOdga2vCH6LeIL1+3AfjtZJNARae8Ed2ef70ySC50Wg2OsIB+BlAbO
	 hixYtrLv9e7glUhgjXkH9GHq/8UVzSMqgQ6/zPG1TnQCDcV7HS06iaz4ulA/8G0Zo8
	 BcqQlMa2/OoQJg7HUmdyMFfU5MldBBHmdlCIlvgWlDzSnwfSbEdSbHyGDGJTrT8jio
	 eQ8pbxeyKCDX23vX8Fwna931mVgzVenydQRHEoWGC7gRO6rBDiEwtdGqzjOg0qJZg3
	 czPmCoWRLxkyIWxRV2PDr+rD7B7U5ZBNY30mbVQYEik7HtY3ePx3gloTNeJmnwrudR
	 g/IepsbnWoyzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93120CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176079359.29341.13780765725143592700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004ea6de8c0b2f52c2c57a790ff264de767544878ec684d13dee848ad26c13c0
Date: Wed, 29 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761760793
