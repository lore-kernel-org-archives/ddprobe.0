Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365531553A3
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755178194; cv=none; b=TW4DMIo2xGmZFun1chZ2t+3t+o+SZ41lKal1dvnCbyhngKbV3LVZ5M4ta7EKRcUxkek3tRH0+tfD1eed9fH6PfRWi6FWb+bM5xv1P53hQNBlCBexZ+dNTxBo+5MOkcn8KLiRGaZ4lEMWsOq2o9/QAnDHWBZ/jd4c3BURi/bStl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755178194; c=relaxed/simple;
	bh=+eYCnJtpDE2iPO/+dTXco3ZDRFpmMzdP4LoZairGI7M=;
	h=To:Subject:From:Message-Id:Date; b=Ue4GTilS2XzP5bELU0YNVg1WRjvn0czXQuSYxx5/C1H9bIb6bjiQfr9cEWcpT6ocIVr5A7aC3OLL/pwFHsD1HJHJV+OE251jOQKni3gVzWxTJFa9j2atnSan1rrYjeqaPYtoJKnggbjMP5Wbqj7NSc57UTR8Ngo/NGCsx36MMDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kd+ao3Qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kd+ao3Qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B3EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755178193;
	bh=+eYCnJtpDE2iPO/+dTXco3ZDRFpmMzdP4LoZairGI7M=;
	h=To:Subject:From:Date:From;
	b=Kd+ao3QydNJdJL/PMwaPkKSypFxjtTO8rQMYqTA3QQb1tWZgSo2wXdOj7sN7XQfBD
	 GFZH7WFRyUpMN4q+5UviFYMKbDHqdFBmwqP2IlsdXLwunZmHkOrlac/vvy1HY+q0Q1
	 iwfoVA9tbtfDHE0ob6pIkOM4ao70ndJr0ocAXaCDmn/KNQJiYSBpIecS1bpHW0O5Xm
	 kQjH8trrnu6x+mdDQvO6HBZtFJMGuzkjvb3gbFQ8wvaqW1xqj/ebreA12WoHV6wPIk
	 wmQGaR2R7FNmVOtYqSzu9Oaoc0YGf/KKe8ouLJLd3Qizp/5t45hecrSHKwmfMJTgFK
	 pTkm2bLhA0Anw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDACCA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517819358.4034.6377979257787766557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abe490fac7d886165ba22dd85f18862fd6d5552efd5fccacac601451b7490a8
Date: Thu, 14 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755178193
