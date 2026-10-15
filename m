Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5374F35DA7B
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792102234; cv=none; b=T3h+wius1uc6whF3RqdvPtbSYYlP3SZ3kjXHfTizURcDmp/NMdsihOILJYh/dfyQ/5xVgPMS/GnFFUlCElhFI7jKvFp12KHEQNncgFPm0oyxW+mPTtT7MhI2ftbwZq2T+GB0OGpZxFo/IISXdB0AxFrPmcVeP3GCjS/5SYS4mCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792102234; c=relaxed/simple;
	bh=2jVbU2Umt6bi2EDUrE3x9obADLdk8HzDyIhHH8vlA3w=;
	h=To:Subject:From:Message-Id:Date; b=scKfaxM3yUiScl0YMteYNK09c8o8tV8hoomKVD6B16djnYmbZ30OOWDT6hHKiRe++o7Ou/G+kzOMMrMwItS/XvO4u5l5xgA1CIDr8gOuc6POkzmIO9HoIrQZ78+/ILtF93DzHLAUO3hi/CU1oLE5yea/ohtzs1vBlKV0H7eRO1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVVcOSXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVVcOSXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16FCC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792102233;
	bh=2jVbU2Umt6bi2EDUrE3x9obADLdk8HzDyIhHH8vlA3w=;
	h=To:Subject:From:Date:From;
	b=oVVcOSXIJ3qwuyJuHQiYCUFKFpr34pa1hick8v4bjW4y3uvzTlmGNMYlHfd7mzdXR
	 7wVgWn3cKsPs4tJqJbsv1cVYwK3n0QshkP+ov7GrwCyTJvDBmEz+xJ280ebvZCRd1V
	 mmFPpocCnLh3ahPLxTx7HV9rUKkv4gPobs9DLzlNBZB2jPSuK4Y/D+NL12jSXU7nKp
	 H305rQx0r9qIPXndPvrzrOiHti5vFdcpyyiwtWyVZU4EqNk1SdzaAPty8OEWH6B7Uf
	 aS3sEp0dMq4eYFDPYBZ+/VBJ0QsW3AT1tdj9DufDGlwwBdIPUdRIHdkroXpc4FmTS1
	 yUIejdMWiD8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C2CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210223368.30808.16631988775578529948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48fae55c93d6a305f96a4a63e473542865f74109d76d101982a83caa8b689b2
Date: Thu, 15 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792102233
