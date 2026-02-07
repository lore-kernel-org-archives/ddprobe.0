Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECAC17D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770449634; cv=none; b=K1o8HDKTMIRREFSZBRa6v5oce8tDpBt5eIKF79p+FQzT5t9hxoAWb6b/EZ/l0KVs+PxZiVIfe9xBy3qri5+KdYkTjpMZ4Y1jEEXmuFcIWB+W2gSo6JxpKrD+bPk0kCAbh6stx7lvNtZMSTmHE+uqQgo7ZrA9L9kRePA37iJ4q/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770449634; c=relaxed/simple;
	bh=krnM/ZA48QKcp3VRqTmVR34yQ5kfInAQZ1GWDHuaHR0=;
	h=To:Subject:From:Message-Id:Date; b=V8iG/jzuABH6qa3GtzuMaUaj2By8pVkTuqScu0eRyt4C5l+h/0WTahxQ4y9ejURT9C8MfHJuQHc8UipKnTYnrCdylKRUkAvc6PM3saqBPpyWiE9tmsgXFm37h2GZBgExzVv6VJJoAGLXczMa2jqWpCl1FsC8U5XWHK6i5ALAosg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CD0g398t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CD0g398t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB530C19421
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770449633;
	bh=krnM/ZA48QKcp3VRqTmVR34yQ5kfInAQZ1GWDHuaHR0=;
	h=To:Subject:From:Date:From;
	b=CD0g398twKsfUIJnFtIWTMjUcu83wVPbAVr3tX+rQ2DKt7UQF07Lwtei42uNLQHrS
	 aNPY2OCfuDrMtJYSGnrlxE6WXsL8c++l6ojfRyeZCJ50dtRzTxcSCk+C5K5QPTsQCx
	 jN0XRymnx3cT1VyR+lX+OMnze8Tdj4BZHs9AU7shMw+FsKapCYcU4PktjRqwopGnag
	 DV2sX8To5tfNwe/mYIeig5zbDWY2iwqYR0djcFAv/eXUOfW+JIMuTB18N3RTjSB1Kg
	 xBHxi/HowEyfgX3Re+BWKUzo+0uMOUZKdk1qslYMZ3tXDY1TUSw4OD8awGB7uw3/Rr
	 rGUu3zZoizQAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945FFEE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044963358.20984.14244181503378086800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d05314cb13ed77329a3c69e534070a612265115be953edbe1bd8d13d9b15020
Date: Sat, 07 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770449633
