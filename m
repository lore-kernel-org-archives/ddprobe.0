Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DF333EB06
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784746174; cv=none; b=j8JImFXvMlzCNgHaRj2C5+zblE3xVieJpfT8mApkG+p46u9vtEwmlK+a9gUTcqJHYoSb8JXn5oG2mL1CEDNgfAvOqYnV2cj0EFjsHkupNylRb3jtRgx+0n1dkR8zf55s5w6Yr1qayyfX/SBGi9TnaKgy/6b5zT1vt8waqRra2rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784746174; c=relaxed/simple;
	bh=rC4X4MpelOxAW3BmwmFDCJ++CM+uWOyXFEoIg0tF/pk=;
	h=To:Subject:From:Message-Id:Date; b=npvz+qIR8JgFWBNFhgVuSDOedJAUJZR5BEwQtfHO2cpKrHcRnchYL+O6JtXP6aec0Z/26XF58hXy127YQknPFUNVZxGAYokecrgfWyEW4h+Te5Q/F0tl0AjCnOqYpa8VPAPDP+pRMF7XBBS4FIJLcpJ/Kd68fiDY6ikeFmZRqJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGnDCzcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGnDCzcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7508C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784746173;
	bh=rC4X4MpelOxAW3BmwmFDCJ++CM+uWOyXFEoIg0tF/pk=;
	h=To:Subject:From:Date:From;
	b=XGnDCzcTLO6Bvav5yoEYZTH8kfylRhCtD3LsCheWPnKkUzy7sejLR0V+sobciGFRP
	 7CACWI7IrJdLTqIahnSwGeMNys3m+4j1yfkFDoa70Ffl1SDyMWITfs5NFPAiph1VQ8
	 cLWh0ni+yiptNn9I6WZA1ar0QO9nyA6mFlIwshS7ZK6fCUyEOcBXbACADm49tCwt+3
	 2nEwJTvxk8HjVuqvrLuLqFdxNvY3xSHTtLrY2Xynjw1X8ue4bGfLP2Rdi6oIaCncZo
	 IqdL+jpJ3z8/M6kHM/u5oWksEagBlmPWC6raj1njqcApSoZOgdJX98jiaDgnk01kES
	 Ojxn+jmDQ47mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE37BC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474617370.9694.16768387616912015119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908b9407208b6150a033ee25dff03dea566c17ca2d076453c3a69570be270166
Date: Wed, 22 Jul 2026 18:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784746173
