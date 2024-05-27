Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5790E79CC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 02:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716775463; cv=none; b=Ufrd5T9Q/RL6eb+Z573nhBLV8Ci+wBcPhVWOyUYgPeunqEh8LJMWISAWKD/WkFvjFY6Unbh1CvCBxz6XijTegXFB6+9bL8F48Kbj8dxpJoBWQfws3JzhdIXc+XG8Uo4OOfUE2+IJXmiDSK6JVLrp+RGqWnSrihOcQoV4m70cAgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716775463; c=relaxed/simple;
	bh=5bNKru4Hru4rZMImDyr8Ke75Uy7B0Vc10tPVDy9tZ/8=;
	h=To:Subject:From:Message-Id:Date; b=XE6v7xm2JyjkQXQBk49ma4D+nQ42/nJmzY37BLh+xIsxjYsozduWNC/YKzzzBbuAFLfPmP3Wl92LwnlIcS3hcbBw69SZ0e2Su2s5yPplSP1Dn9kbmZD9WtfqMom+wxfaaPh0K2VKHoGJ0KQtwDDbLc9MfhwIv80wFFT+cGSpdII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+b+miMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+b+miMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E051CC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 02:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716775462;
	bh=5bNKru4Hru4rZMImDyr8Ke75Uy7B0Vc10tPVDy9tZ/8=;
	h=To:Subject:From:Date:From;
	b=A+b+miMVLlTDaPDKgU4CJWlr9kJGGkp6fXqqmmv0Evw48CN5A7aFmcFD6pD6ZDNbk
	 cD0FM4Ymqv6PpCPwQqAcq0QP9ebdsVKIye9yPJf0JkqnSCRbV0qRCuBbgAQN8W7SWr
	 M6FpPMY2aPY7hTrU4hELn4OP8vxQo/7iUppfFZ27gGamf4y24aXLd0M81vOz13DsJv
	 G3ElUI2HTDJyYryW4Oc3ax/KCpfmxIOkrrJy1eBl0rdHoKeJpKzKSpY/Y8zVRpP2Ji
	 fWjmAYsfvm8oU1Pfkj1yrqSxxPxrGydNdGB+GMw3pDnlNjEIoDSQuhKwd4Kl/BAx4k
	 l0+tljPYFOxUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56B9C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 02:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677546279.11436.7902592836269217152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12857cc0191dde203d3b1a240c0b1ceb7d6b4f16f33b7d66699ecb1060442bfb
Date: Mon, 27 May 2024 02:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716775462
