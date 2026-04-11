Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337973603C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775921854; cv=none; b=tPAFDySwnnRSeFRtCVpZ7VjhQvWftKoqh87a52QGcbqCSZUhyB30+cyW/xVGCnDsOclGR9rLbl6YpVm1zy9/dF80WSorR4zDhYIgqPfiknObG8E3X+E6HhkQxHvx/TBq0fCBf2BOeX5sapyNpBlva5SCcgyXQ+kMzfcqYQZDFB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775921854; c=relaxed/simple;
	bh=j5HCIdEv4LR4OsCBWKKtBhBS0OT7T+gxolBdB3qhbns=;
	h=To:Subject:From:Message-Id:Date; b=ls9/H0svq7gCkKikc9RByKyHEy2av3OXlyxnELQd2P9E/YGW4sDCFol1Y5CFC8FXSwy6fiYy1Pqyjwcq44kBV20uQOK3DJaEoMgFn2yoI3QeobyGWsGddWv5dQDnsz//PddJYUF+sBYLcYZ+pWwCjp3iVNrG7kgsoWbZVIR21ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZ10axzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZ10axzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B76C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775921853;
	bh=j5HCIdEv4LR4OsCBWKKtBhBS0OT7T+gxolBdB3qhbns=;
	h=To:Subject:From:Date:From;
	b=SZ10axzV5mI3cdFucqGES7LE+wfeVSGS+PlN12hc3s5W3A2Vc56FiU3BLlCcpq70e
	 RfEB4XE3Z85or5d3IV1OkmRPtGh29sXB7dFQmxX3SIpGk2gTCI7ibmtt+4tyP8319Y
	 DcObMEYcndPaEMcATZTkfiHqJaybGJsoRg9GaUnAJXfNuHfNwq85V96V45GbhNt3uP
	 dvrdcIOTyzORZ8QxnJZcDhE/zRHGbIPIkoRTW4pMGHZAXSg2Czzgi0LyLUwVKIE0ZE
	 8S7EwUrAFYRQW4Ty5Rj8k3AsWYz4KUogfqV8iHvzv43vGNME8QMoLqgmnGb5SHQ4FZ
	 yu5WB9IWnYTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD61AF3ED57
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592185368.14715.17884338079951660693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3277f30a2baabe9c68e19d795935c4bbe773d10141c298328cccf1a0a80265a
Date: Sat, 11 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775921853
