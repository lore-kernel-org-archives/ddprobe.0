Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9483D904F
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781263594; cv=none; b=sUBOcrXerXNM30XkzqtzYfw9JBMRogMl1NTn+WpTDNWkNNKkcIWvXjJoox/rPUdNn07fqYUNxvE04fO1jV41R4wTjbOTrG7lgT1jG5wNgfb2uI30ztHHO3Fbj5a+GB/eUvCNPO4LajuHeH/UIvfmQaU2UBZPxYdLGGn6ewvsFio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781263594; c=relaxed/simple;
	bh=1w1b9/29l70iUhozTX8/e7EU3yVVXbAlqub0UL5XEes=;
	h=To:Subject:From:Message-Id:Date; b=fs2MxQrCL2Qt5ogAtTq4i8Ij53IdIKDp0z2Xaq3Fm27FGop4ba2qjN0/Dgm1TpvScPq/B1SbEfvtc5xPDhyEFDaSZmlCVNeyPhRIolSK7V7iE/vMLLTQbYC98yU9SHDmyhGGgeyTO9f77I01zq+3lIeSS5O5/1JX4mXBPM0W35w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGl6lEnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGl6lEnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03E3C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781263593;
	bh=1w1b9/29l70iUhozTX8/e7EU3yVVXbAlqub0UL5XEes=;
	h=To:Subject:From:Date:From;
	b=sGl6lEnMPJSSXBUtuRQunJqRcn9xeCFtNOiGdzZaBdml6ssGDzSET0Bb/rhJWR9Gy
	 xpOkU6/qcXSTmxhZIalt93uqF8btPrNLHJZzkBi0T5CEZeQIy6dSlqWp3UfPnrCjPR
	 F4ggB54/eeRVvTwfC8A38J3OCu7uKOf3Me74Pc/wpYEcmAy9r4N2SRQ05/KXC8JOmm
	 gF5MJF3bt0ef5lMICRzLX+iI802AXEF5OO2yxmG+SJdZBjl0iu95Tgvmbmf1/l7ctl
	 90Hf/vrdBCs55R9biTxDec/q4wUPmGwpJCIJXkxoofP7CTQdmGTQkIpYiqs4oIYj2q
	 r2m3mHfIC/wVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9109CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126359368.21030.5317118756839961239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a04c572a7328051d554ad281935253016949dcd43c87005f421e69cd31f3f1
Date: Fri, 12 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781263593
