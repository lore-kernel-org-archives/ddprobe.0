Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380687483
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728794754; cv=none; b=KqtN7ebZGm0iZHS1xXv0Rrap95AqUaYau98AHW1sZ7t4Y1gbGEPI2oubElx0tErpR/WUGK3l5C2SqIpk6g4g4YmyV3Zb77gdHcXU1pxDPIS7BnPEkbQ+CwH2rTlZ7qIsR6/oI/QRlWkROJXRN8oTAA1DQuzqVAfaVqKNk4M3SuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728794754; c=relaxed/simple;
	bh=3XRrBoFPDkrywlZ+qKlcJGwAFED8wxv1/Znh0257Eug=;
	h=To:Subject:From:Message-Id:Date; b=dMHmgDw+uC2CkNGIoK/4SE4MYnugpkwSRs2PtkVDj/PFG9aKLYS5UajbmrzMpB5VHXUzPVKL9HBMqyGfGgE3+hoMn8NDhhCU+YYL+HpVQ59o+XzPsr9H6XRKuA4iBdI0kpbLNB0+fdkXGW+KhZrFPhhCRz4f37fVoOG3vnDc/R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OijQMUju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OijQMUju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4FFC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728794753;
	bh=3XRrBoFPDkrywlZ+qKlcJGwAFED8wxv1/Znh0257Eug=;
	h=To:Subject:From:Date:From;
	b=OijQMUju7pTQAs/H+5vVEvhkUoTn5bYmsyJqPXwhlV5Bl380HIWIHirfeZZg2XXmX
	 LkpgNPt0ioj4/uqgL02K3NwiOR28pEzldyxmJoqhhBIXPb/Sjyx27J07OxLndIV+2r
	 JL22NttUg1z8JN7yyINuOFA5E1t9gfSbt5GESvwFi4UPy7YIqtdPPUzFiMHvMxALl3
	 83C0DZtARLcYSTiL9lBR5/8ud9KdBA4KSp8Vnv8cNvq9ObL+QtAkt/4+ul3iWCZGJE
	 8K05cFS11Vpm513hNSpURLj5aEg+35N6aFEpRQ3hJEBKmygxBoTWzd6DjOrzSPK90H
	 BO/a21fpvxUWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E78CF2591
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879475362.1888.17769253541622124910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40475339307dd682f873abc06098d81b0fca4bee6669c6fe067460c42e1735cb
Date: Sun, 13 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728794753
