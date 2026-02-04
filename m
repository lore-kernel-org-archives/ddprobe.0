Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221A227B4FA
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770237834; cv=none; b=lIf5JiFDmIxl2tdMnI2xmaV4ROsoOYMwaRILNdhdKLbMDEHruZOz82IHhocVwAopzOdsI1ykWmH6awLLk1/O9tHT1l6e5Kn6vx6By//9sgr/svMyvaM/wLTBUVARCCbc6SXDSqBKu8r1IFzR6B57S5MwFEoOwbKZU5ONCJtSnuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770237834; c=relaxed/simple;
	bh=YEyGtLq6C4kQ7tDXZMNqPKPNHFL2jDxLgE9v+xB6eEY=;
	h=To:Subject:From:Message-Id:Date; b=tuxpRt0f5sDJcHIuMR6SqCW6RgX+4XnvvqQR+Pa3gfgy5eHDRbfB0/oMojWBl1mlI5XKj6k2iJRyIqUEjpNj5nuXt6dpu5i9dhxHQCH3NXsBJbyAzpLGXdPpI0JvyUT2e7Mk0h1MFb8L5CwlNaLopUCW8CV6FLIp0kKFAc8veZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmrZ2mk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmrZ2mk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F17C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770237833;
	bh=YEyGtLq6C4kQ7tDXZMNqPKPNHFL2jDxLgE9v+xB6eEY=;
	h=To:Subject:From:Date:From;
	b=mmrZ2mk/82+xP/VoZwtI22WAvEJMcSyUFZtjagKj19peRbwBQ+n7xjwq7wOnS+4/a
	 ZOZr/myzATnS3TCxC7QOinQ1gyivp/xI1iRho17d+pournjMvsbHflaCe/aLmB/OqF
	 aA42QTHUg+JUArblkjjZOBVvG0zldY4wg8XmgWab95iiGeEe++gpWvpWh5n6AuGPsw
	 QoKNLCXqF/cQPpf3b4KanOV6n7q5JJrDe0V/v4vT6dMSsdYPtm8IIJBKs8Pv8qVztj
	 wRmM1k/wNzLVpWpEdzXwsRA4pxdShqpRSKCk0wcssqMLNiNZ4CZ6YyhuD4Y1257MjC
	 fJRHnnIGN0gxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A080FEA7946
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023783363.23906.6566273821349328774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f211021fdab6b6c1e5c376017d45e8999d0a7ed8a80fa1ef178835c7217e5d
Date: Wed, 04 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770237833
