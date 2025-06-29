Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F1421CFF6
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751224794; cv=none; b=Iz5xRfV7Wt7MbIK+qbBJZWsMipjxo/Q3Rj+fQ0fzJNmuSAvPKRcuovo862r0u2BvIV0zSsYri93iw93v5jaC0ur7DnAp/7wtuGU+ttHcliKUP2BSDkpQuYwbTNkhCFL5HtZKEc4ww2FwC8BguCkijd2naXPscH1fd8uGV5H7q+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751224794; c=relaxed/simple;
	bh=JQD3487Ywjty8o/ZfNGgzXSVHEiVkYiC3cDIwjgjarU=;
	h=To:Subject:From:Message-Id:Date; b=HXfKnrMH2SgQyAAW/VWzdPqJyBvA9h2DVpYZ9bbyDaWznZtMi8HBAdbBynp5yVMO/bocM0/djPMD3n7mg9WkEAD1JXv9rDhVjzvdXCyAsgOGehMX8gFu8BYrGIhIjlI3L5sfHNjjAHQSzqtyPGSEX/PW41mhDQM1FxAuihDn1Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTAz3SUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTAz3SUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E5CC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751224793;
	bh=JQD3487Ywjty8o/ZfNGgzXSVHEiVkYiC3cDIwjgjarU=;
	h=To:Subject:From:Date:From;
	b=ZTAz3SUvLuXT2OhYzY97vCM+Jt7XyhCi6gW7ZW+ZhvkwzH0VbgeToN3ZK1WgUAJSB
	 NNUn3bpPc0HlPofth0h2KzPsszij3aT5roOcYobtW+ju8RforigmcF9o7DttPQhAkX
	 CFFk+aoxp4+dtzkh0hz7LlMt/7ZCq5chOeGJNsuAkGbqCWF6xyH1OvIAyhzy7fkItQ
	 eGtfDT3G1pIjXFWds67ie7ocMcLsig3WnQUEM+wwmeVophxRrXJ0224KoLfdlgKu+p
	 YncCzC8XL250hIZwTG+ZKvfarpW0PRR4ygKbRZupj7S+vw1EQ1X6jWDUbBakTCnLJ8
	 BeGXzlEefHwSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5CC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122479357.1585.4419824263191149464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1ead6cd1f9dde84a612d2741d5909505b553a3da0ce7cce05c4220238df334
Date: Sun, 29 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751224793
