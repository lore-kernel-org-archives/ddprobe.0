Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C0C3DEFE6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776267454; cv=none; b=PDC4XK9biTuIKy6ZVu2AfRFPAKmD8CcvOczNCUf9H3MlkL40jVSrtMM2neFhhmVM1IS3WNrKkJBAryjrho+M6a6b5GSEXWFuxq+n8xW2TMm3DogDunlP6mOiEKKwenkFoomPz0qtKWd8+cv/UsNluRofiL1+PyO+ODCHjNObzAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776267454; c=relaxed/simple;
	bh=9p6cv4+Dru/77t95ACecOILHpcAnXURhB8wNpfRt9vc=;
	h=To:Subject:From:Message-Id:Date; b=uSHq3okeja56qu05SLCtyzdKQhUtcu3nAYLepdcec0029UOn59WqP01lN8cpoBqbTOIfJY3SLzl6FcSaFkqtG7RjfzxB+sANgE1XZilFHw+spkLoksQurRPynwKqcPECMW33cN6IdnY4j4OY1SjEwGeXvfQOWNXdQZDGRbce7OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVexoneQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVexoneQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47A2C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776267453;
	bh=9p6cv4+Dru/77t95ACecOILHpcAnXURhB8wNpfRt9vc=;
	h=To:Subject:From:Date:From;
	b=VVexoneQ0ipu1M05e2GKGCci6QWZ60fhzvb1mZhcH4MObxixjMwn9QFHqM+R4alhS
	 jD+x9v79a3OWItMnh4azmZM4/ksjH5QRygyuHMdeYYeLQ1blYEeucgfmieAGVgXBwo
	 Ey9QkFMtolydVXKhhf73klh3bBP66oDV2MzY9pdzL6qXjBVp0Nu7+ccxIF/xlDhBx/
	 p6N2diEYw4C19dOEf6QLhQCRdA3mnRq/K9yDONixtMetyOKr3GLoO/xmqKD4CU45lS
	 myJNlPNFmq26n2zqELdro/7bSSrowBzLOaqEu0skwuKK9ksUawQmz5W/9cL5z3Jjb2
	 4Ca6BsGAMRmXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C22F4384C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626745370.27219.2123937847235035871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d93d01e8f82adfba1f235556c9732401d7c6bdac278d9c47ab808d2d2219fb5
Date: Wed, 15 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776267453
