Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F5A264A62
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740487134; cv=none; b=PMDooXyEnyHPk/G+d83h0kaVCTkg7gRK43ZWJrjr3RYcJtMrKXUktuQ3wF5bNgG4RDcvX2p+JQEht+FekjgvP+lvQ1zmNrZ/ueR2rnJ9GDmOtVU+0KSp1XAJjTEQY5kzH42ET1GUX/bE31InjrgrR3tFq6i78E3QhUEq8Fqy8qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740487134; c=relaxed/simple;
	bh=zakzDz23vNiId5VeURkoMgL/ANkplKfzh87IXejg2tg=;
	h=To:Subject:From:Message-Id:Date; b=q55N2cne0ULs5T+uh+Tojp3r2V74LpfF5+DdNLT0ohjNbrsriLd1ey1NQv0KDgCoetrpSiLeH6UHWSm5tXRTknp4Dx625adAjE8l/A2dJl3/neTDPBdxnbVhzqa37WUBycrhviQnpFvY121uDcOfvzICUVC1atzvUcEFFLL8qyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUJ3JVz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUJ3JVz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2FAC4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740487133;
	bh=zakzDz23vNiId5VeURkoMgL/ANkplKfzh87IXejg2tg=;
	h=To:Subject:From:Date:From;
	b=MUJ3JVz0aqliCWSHpryQFHSy/7Vp/UGXAA1zUO3qJLYoezJSg7yBcjMapTJQtFCHU
	 G4jc0AGYvko3jf+nLexNPezeTSUQNTV5xPrrkeLVo9uctbRLmD9CoBc5NSsJc+XwT7
	 3QbP/3qf2G4b4uog9kXeO5HVxQrEI16bty4DQ+vOnfAwyN9581mcUpQcoWFDcK2Od+
	 deS9FrdVzNVic8hmlkrvakmFnBuJBBuOjMIjGk9N8aFAFGWw+bPRGg25/XZ6ILbPcS
	 XEfE5P8wxotQFikJOnOp+rJKv628frZZJZTsAlxLeSGB/ff/ZMUQSriH6WEQUlcyZH
	 jbekbvvtaJsmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9E2C021BB
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174048713362.32347.11650354939132079187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f711a51c6c075bd055f09c883feca14c66a9ccca2956ffeb2a9d6f03fff85b
Date: Tue, 25 Feb 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740487133
