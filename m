Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F1225F98A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775547934; cv=none; b=btpclom6vYCZDNYLGaRuMgQJgRFFr5i7fRsWBjKllrQIMWo1qvYm1jZxeulicLP4Wy7pOkIEIjJ/gUEhcjtZLkSpQmgUfzpLEPKGOkOEVL0ziWCmCZ6FuGLEPy3+aWfGVuO69Z1cAV5H/MKk6jb8EWUquuMRU9rUx6twV0btSp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775547934; c=relaxed/simple;
	bh=2oN5J7G51/ccGBbj4jinDebVRVvprfg+j9y1g9VvD5Y=;
	h=To:Subject:From:Message-Id:Date; b=XXazVP6cf94kAhMsHeCfaYa0R7endawBPuHHZzo2aPneUrxZq+hm2+hN7cAx9AO+tF7gGiOFdErB6fTOHypA2ayLBg03PTG/gVnV5iVL7Gu3/pi9LH3cREgaiwsIknKEQY2tIIMBLQlIfRpjepnU8OF5b0ZgKJ5AH77scqYgnzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tv6uVXrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tv6uVXrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9826C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775547933;
	bh=2oN5J7G51/ccGBbj4jinDebVRVvprfg+j9y1g9VvD5Y=;
	h=To:Subject:From:Date:From;
	b=tv6uVXrIAfOjPqMfuf1lPWlO4S92lxjqlB2Lnu0OQr4nGQAdBE0hvUvUI9T8NGf3e
	 N22Y8ph6nhAUWMzCnAPSlflnlF7IwvadLbBJxmz5twhd0NwAdg/HjR2bcb6iJD+W2z
	 jfSisqlh7LV7dMikT7C6pkQYL10kFmLXfjpuRO86FF11sr2Y3y9WlqsP92RBqz/MHX
	 MhmOKyOgmyGXGsu/DZu0uR2+wFdh8/kga/PJcsEnWuCdFVxVbdy4DT4Vr/Egzj5Ay8
	 SFQluQFwqoWqNma44R7eoiyX8Zpek1QAF2ytPNchsNUgNGsg+lCCus5Uh/A+T15tHC
	 LsR+ss7PTb99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C8AEDB7CF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554793374.18771.5055683900086795643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9378d27390b84412960966dc3f217031165463cbd8801685e00a966d21e81892
Date: Tue, 07 Apr 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775547933
