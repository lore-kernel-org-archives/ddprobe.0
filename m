Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FC257339
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 05:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713331763; cv=none; b=ADhCg3/afFb2vymCri75DeE/5VpoZqqPJ8EQhsYwa4dadIbg+g9FFVOo1WMIOIyxFaIQ8TbR81KPRUOnrAMeTY80Qvbw4o7KIGDun/BWC7Em4AJnHBtOIEfee3RflezDck7TB3a13eWjKTzpmrZEtymDf9jGhuPzEfee8VCaVBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713331763; c=relaxed/simple;
	bh=EdFm3QLCD/2b+G3W7m+Dv5vbJPgFvIsEm4HKj/b88VM=;
	h=To:Subject:From:Message-Id:Date; b=fxO0qRGwAM/JJi2C3/ytbZZr8AnF2P8rPnXeD8oRTqWBCYqw3NTFNKkFWv9iYzb4KVKY4nI3YvHp4GO5fBX+gVcztCCGWX98axOUPowD/hxpZ/RvOjFKzThVxZfgY5cCvhzqBrUFDZvZVqn22xSn/3aW7Kl2DLGvLqskPxqmz9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGVP1dDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGVP1dDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE6CC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713331763;
	bh=EdFm3QLCD/2b+G3W7m+Dv5vbJPgFvIsEm4HKj/b88VM=;
	h=To:Subject:From:Date:From;
	b=vGVP1dDiDX8fJ2YqMXsXeZa0/Y5R0fDFfKpX9M9lH01+bT58kJy4WntCbZsF6/8+e
	 j424/iUEswqN5Tealog15aimiLuFzu8+5SlDCojEztR/jhIfiMMgy6VlB6pdkiki+y
	 UdAoYbOLd7PmQIL8g3NSd2Zn5qGKi//RvzBtociJW2ONMtNTrr6ZPc1S0X7tbMG7wi
	 SetrgisSKlGGGQ55a8uDNvXv/CzionVvp7HaZgjrfr69Fpk8sjUvWIrzAu0/wXwoAL
	 v1zZ1F7pTkQsilusIuObXmt/m/V3XU0jbzWiCAEhfOwn7S0R7BGsrY+E+YyR1FQilg
	 +ehUQ56TZJ2Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2196C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171333176284.2806.5768441726280083745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00555d956a44c59044ab54aff36e8092ea07bc1151eb5a515f3c3fc3a27ae1dd
Date: Wed, 17 Apr 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713331762
