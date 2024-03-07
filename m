Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061BC1AACA
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709839697; cv=none; b=OtzmxJuRUKScEKv7ogtkvYUM93LOpCnCqW6CyLhxAcPz+/P3GaAjKzU+tFrCPN7kWMcxOlpi9hRyQmpI4n26Ac6wZqEaTEHXGLrnU0csM/23PjJSJ+mF8fm8n4vvyvrCMCqF3ciGcnc2aOnfgaUFUvdvnr0aaaG0oEWPd6QPy6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709839697; c=relaxed/simple;
	bh=HoC6+F/Hbjjcu3IKPwTyU286NjsT9bin9JNZ1C1rsiU=;
	h=To:Subject:From:Message-Id:Date; b=Go5nNUg/tuBYCKhRnydp5P5cfdN5A1zmYn/i+6VehBU+YmBmlx6kRFh3pA+M+RYAKB3T6Q9sL1/OMGm2Fh8Z7XcvNM7BF5pdo82QDww1sSFty4xy6K6Hx1Vlsuj1pnfngPSVaCV+Ks1osDRh02lo5BnTuQhUYBqLNrgpBxRgcPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQ53l9S1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQ53l9S1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83902C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709839696;
	bh=HoC6+F/Hbjjcu3IKPwTyU286NjsT9bin9JNZ1C1rsiU=;
	h=To:Subject:From:Date:From;
	b=JQ53l9S1Vy1cnAR9Em2OaEFSm6hnzJb6WBhox4So3GnLySkJqhDyppoOKYZV4sKGg
	 XmrxWq/7E/SNShWGS6CC4q93ecuxPBX+UP6QDc2oz4UiLJ8GMFOFELnw6k4RiLCRt6
	 IClWXQQX/NeH80tqubc76r5lzHfFq994QlfmiQwrgTEX4krdGW20Rs02+SVoPDIIGm
	 41QJDs8AhT9uErsDdS+kyrcrdzKnXMsU9B0Jbce45TKT1PlODalAW2GfsxUFUYH67Z
	 0q+tVSHSH//8nmqMnBRixiRUrv36e9cA7AwfBf9KsfI0GBiGI6twft2yA/k+PWAGzX
	 CQbwwnJS2lBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAA4C54E4A
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170983969637.20438.10382304363222700230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5247491393d1df5486f8cd440453e1ec207118002b762a8e939d9a6a7ba5ef33
Date: Thu, 07 Mar 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709839696
