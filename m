Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB3C265CBE
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784947234; cv=none; b=MFPCpVg/PT0/BjkrU02c9chAzC+XUDdcZMEH37KJyf4KjmkCr3x7j/C5qn5AmMphoyp4a17sQTSabBDlm6+X1eyHgPlv+uwe8c5ztMYSjh3e/gNSkMydKa7tm3/PlUbQ3Ire7TH70aJLjgqkLl7Xw/Q2DJDzgRDCVKu7UF6+FW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784947234; c=relaxed/simple;
	bh=j2kbFexo+s6xeVQSXsCbFNUnZF5VxaJNZc7UY1U7V44=;
	h=To:Subject:From:Message-Id:Date; b=eCNgHTgq7UO0diVfxiFMqJ3ZTGhbT8bi5YEZZjAdq2d8e30Tn3eSzsO2ThbWAZM6OcQE+Nkoojym8OVH6KPIJDXDd4fkJFvtJhMqlbJQlBDmmFY00/D18gO4batQiTTQikzIFrQoVt6jG6NuQWHOQ2Nsn+SwrxLM3D9H38Mpd0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JClKZdcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JClKZdcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4FEC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784947233;
	bh=j2kbFexo+s6xeVQSXsCbFNUnZF5VxaJNZc7UY1U7V44=;
	h=To:Subject:From:Date:From;
	b=JClKZdcYvms7jxvoZW8fbf1UN8/yKxHSRf9lanu+kpsZUus0N5m7NfoFumaLCZ5Ld
	 y6rVtQnQMO/4g4f6nUDYlFCd+GYya2+5+2YXcQbLYezz1Xb9et5IIfsZ8tckwP7axd
	 zfmgpI5NGAjMcwRnn9aCfO5DQyJWtQv5wh9gVetwk4cSWxQ/SuWRg4pMUjHO2HBZrG
	 DFFWBDVewAwth5odtHtAetumRjOiHDUpzqlJUen3BoYaBOqxam8nVQUE1y0+ODnFun
	 koBfomV+lCMkIBdpeRsH2cuDjrO+GoYY96f3+goqprXHjxhjhDfPnIn9K5dTKbdEzt
	 nQiVEremeyvpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B529BC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494723372.19082.2981210178706447807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ad5f1f944da43484447b547077fd741bb8c6cccd3f74a50f85459403b2816e
Date: Sat, 25 Jul 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784947233
