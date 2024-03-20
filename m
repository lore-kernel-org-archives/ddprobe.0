Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FCD10FF
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710953297; cv=none; b=hjC6lYoGvZJKHUPrQuq1k26PhZsmjJZPUFH8R/Q2866igm4lYsoQmlje/vT9WZS5KP4/fYeXzXNtrjL9REnB23TLOaTCYzNAej0kIDFcRELrhpwiMUvzwoF4DhVllno7X5kIA+vxeNTAoCm+wjOY15I9spR2AdpAA/OzWkWnfkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710953297; c=relaxed/simple;
	bh=RvfEWLc2hq/tF5euQ+FdoCn3bpVS4ywnz7fABLQQbVE=;
	h=To:Subject:From:Message-Id:Date; b=Q36YdhcesAja7yX9SM32mbxS2O7XusEFqAGe3iOqtmMtQQBy/GNQnd8qVEWgx4uPwD8azW6Yqc4OsSLCfOWrVmsaoU434p7nD57Qj8s3389eT39q1AQt32CWnbeolED+YTTn/aEeJSKU9RAuWLMSOL3MbNEyosd9FBc5tjCAhpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj5TR35G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj5TR35G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD82C433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710953296;
	bh=RvfEWLc2hq/tF5euQ+FdoCn3bpVS4ywnz7fABLQQbVE=;
	h=To:Subject:From:Date:From;
	b=Wj5TR35GOBDMGYHbTzmz9yKBKRowWRVyTZIwUsjVmo2j0LSFt+K1SyX99VnsWgXoh
	 seDIWTn08Wx36BdK9AdSwvENYqLbIHdATPku4q3IYBLRROmJDk/i9DRdSSjJBIXrhA
	 LFmKE1yThQgL0MGKGmRsGWOE/VkyI4v5yBTjxhFMiSMup76FxlCV3Eur/GYUmSbinx
	 NtHvaUKcGHltYy3R1dhWamBMdtoDKy2J3jZ6ex0WXmc3alxttb7yQxpFQVmswW7Lif
	 32UaKxbgBCd3NATDfsYDg/75AwBjJuyyzIZP0KShp5h689cNRmoLo340sIlJ5VrWPV
	 lTrBqX6ogzkAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C0A9C54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171095329636.1776.16011947987013077256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3ef16938c277f1b044585d31c0cc8d8a4b444a618813b92019268314484e4c
Date: Wed, 20 Mar 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710953296
