Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EF12417F0
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765380174; cv=none; b=aX0imaffVHrlQ+UJtTwCgoEMQs6hJq6oslpa7/Gsw48Lym1bxQBXRPRRLEHwxA2TrTaT5KAIxh5kyZXKoVqIMqyR+mQONubJDaqe8cFwP0qOzW0UYeych7ScLX3PO3qKMkVOHOGWgD1Dv83VOI5lNJegDv+pJLhiSqGMgTXfJ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765380174; c=relaxed/simple;
	bh=ynXoblGagXlX7DWmzOoEN1JmZOaDGyq3Un9axiO3zyo=;
	h=To:Subject:From:Message-Id:Date; b=mjZcTu75PHi7lMz+O4Wz29zV1C8QSRAFMGfC58kOvyhsSkuigC3qrm/qOQ+OLS+pqFPs2Ds9/FIBJh0NMPLy9vJo5dTKskBC00xrT9hBo4tbR02f7U3v/mzks4wQaVPPK/UbLyDw+AytgI3HWBrM83de5iTTMmusqJJoO0ZBRnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm1JxDGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm1JxDGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD78C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765380173;
	bh=ynXoblGagXlX7DWmzOoEN1JmZOaDGyq3Un9axiO3zyo=;
	h=To:Subject:From:Date:From;
	b=sm1JxDGGLywra3odhZswYKnLIpM+H30SLhSlAGaSVIDZo6egqiZ/Ihrf1VV/+5njB
	 yF6V11/3xRp+Rdff4hqWodEMeyLaYv4Dmp4vZ3gBuxopG8TAkKbWdKYvn6p9Vf43qK
	 izZjivnsXk17JPAMV4/47vd5D7sSAabgoMPJQ+KMNj5jY35RXv6q70sBAKoCTtcDRp
	 1H7C7qaUTnjlYut1UWIRnYmgDY/mi8k22Nbp5NYs5vbbbSDRHO9CzTXHe0ydRwkWhr
	 6w59Q5+GQY6Xq68e3RJ/UOBxAPdGJR34QzW2jurnZ5BT7M/v1gVoyvBF4+8b/O/4Rn
	 I4zOO0jX1W6kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977D6D3C91D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538017361.24982.13082043745048265317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f523dbed64498337923b186a547a845ac98aaf2f85574dbd3ef9fdf28657794
Date: Wed, 10 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765380173
