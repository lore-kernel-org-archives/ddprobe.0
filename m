Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137F5367F36
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784779775; cv=none; b=YGk4M3qxdr1ariYTEfXjezGJyZfzFZ0BUX49L7doFAWoVfiWVAHO524+1c5gK7rpwnPaeexnkCbHXZKlif2lCpYnyNppI9kuauZZSh7DwrWPkBgYNEfBmbLU3dynFCKc5/8Ga0mZnhlR7U7e5K3OIn6J4FAzBKL8+YsqzuIYSvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784779775; c=relaxed/simple;
	bh=Ubx2gB7NEAiDZqGiHfGmGAqI75R4i65g7du1lTk/wyE=;
	h=To:Subject:From:Message-Id:Date; b=jfd/NoL6PBjmt94LM7UUx8hrBDc1vXC20hWR/AQyiYsOlfeb9IHK2J0V6uM8ac5l/QIQu7hZXTIFQpDbxCpyKxlZVvyURFsayfK60qQGcoSoRIxTxlfHiJHV7tJPdf0X+hbyN3aoLH14MR+gu1VYaBb/iHY0VMdAmd+24y8edqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZWZb8kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZWZb8kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06229C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784779774;
	bh=Ubx2gB7NEAiDZqGiHfGmGAqI75R4i65g7du1lTk/wyE=;
	h=To:Subject:From:Date:From;
	b=MZWZb8kwKpRmxWdb/05f+ihvTsQj3EXPymuEk0oa9YaSDuDl7FGXHcX9IsiWF5jqc
	 uUlbYpiXlLYUK4piNmMqlrvtkAhWiTqfQF0ZBhm9AC58VAfMX/KZmIC7UlxKpd3lwy
	 f8cx4ko29aEeCFp1Oso5FUlTTeLtPDUMJLavo1atGx8q3Hx1lcXmkQB6rBSA4B11YD
	 qxnjAsA/OMhkGYfDX4KMIWDUI5x2IXwyV51HV+y3g1Y7lnlQ2ByoVWFDgxbReqHsAS
	 LqUp2KYTkImfGPWi+B7KHWGOxgY9mKUsk0f8TaQNpS0CY4kNnV+QjN5fsr1RcamLDq
	 nQkceYzxms8yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE687C4452B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477977373.27726.2755362278329625583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d522baf155b49cfb04110efafd1127c1055f4d2c129e269f9e451007a685901f
Date: Thu, 23 Jul 2026 04:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784779773
