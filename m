Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EC92F2902
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758797394; cv=none; b=iO7ef8YTqJBjoEj0NWxh2bQppPmXq1SWge4lKEyJKzb5tDOE6XUwSXzssw6bK07wtC7qCvLcvqD8afZwq3HaqYwuCMMUxh1zCxAmI5I7DmJtusOCzy5d2wbmv2xOrd6n7boixGmcu5fRQAo0HRsJnhg3l+ijDVkAWKTICAH6eWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758797394; c=relaxed/simple;
	bh=C716VFVn+KlTG8DY201NFtUB/4loZA1bI+BtCA2zSts=;
	h=To:Subject:From:Message-Id:Date; b=KyOycXImJKT1OLMVmt8O7nXQRttzBI/Lc6+hbMRT8n/0rnr9Jm1BKeejxzBpVSyV1pc/gO0jOQ3S6onJFXDf0QZCqxq1WhpKkbiHa7BnhK1sC9zBbdtGvwkihgvwyJtG0/VN8DQLkcGBkGdlrqpO7aZ3C0Y+FCAtWSfA491CyDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOQrqztc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOQrqztc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD1BC113CF
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758797393;
	bh=C716VFVn+KlTG8DY201NFtUB/4loZA1bI+BtCA2zSts=;
	h=To:Subject:From:Date:From;
	b=dOQrqztcwhyFxk7+JzfQ0HNCG4pfAen7vQozR7mJs5heIqRrE4VxKAoWaD+YCpVyr
	 FJwT8eZGlGW+DEA2PgajpDCHde7bKPltnc18BULnLsUZm1YFQmSGIE3dheMMUaJkPQ
	 qefjKSiOHTTpEWwqCkD3vgcZTg0qGPkZpdLkbcKLYA5lJGEor29s3OdSCpKhgk7jSd
	 5+IS4XbJmd034MCAk5E/yOEiwsm0Z+laUpkrNZxNMjJfkezu1mAzauXIznqdHSvBfE
	 CqDASSI7shpI15Lhey7ISPtO9qmnzs0UxdHF85lufdUIChpyeiwNqDg2VLTvFPo9Gk
	 6dTSkNmADqFRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F06BCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879739357.28163.1036823713837839365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed99ba9e88119e15205474b67cb1658511d94818a84a025fa5e7feb2d5ffddc
Date: Thu, 25 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758797393
