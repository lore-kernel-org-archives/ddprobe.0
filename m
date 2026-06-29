Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DBB37DAAA
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782766114; cv=none; b=AuhNpgDF7/XVh0+MuNEUX9x4xqOgNHbLQGZVanhU0S6DfddiOcehBUN9QhnYub7pdXNyvaputDg+Pxj1Vf1z134PAPkzFoDZs5jWNriWLK2Mt3UMUPETBYYLECK8bVBY5elrZFSWwKGda3e3GUd3yFA1UFdcW8aUw06frO9hxZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782766114; c=relaxed/simple;
	bh=NU7nGY/hZp5YnjU9TYsrll1foQ6/XgYogWo5M0SWjt0=;
	h=To:Subject:From:Message-Id:Date; b=ZRoL/qmYLe7h87zx2AwuAws+naE+Cjzmyj3BuwQzCcT3hGHZw9ntiaGi405lhQ3J679pd3s176jXzvLa1u31F9ScaYEG9PMR43b+UZXaUqQyfnOsdnyp071TZKVwg1mZLVhtrYtlft1Mun17fmKaEaO6DCrWg9pm8WMFaKrA/Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVHJOAFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVHJOAFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1854C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782766113;
	bh=NU7nGY/hZp5YnjU9TYsrll1foQ6/XgYogWo5M0SWjt0=;
	h=To:Subject:From:Date:From;
	b=OVHJOAFVtKOzZJJM3CE9y6zY2v+I1F0v+AJxBIy4QugqnpTlvtrY58mufNC43xOeR
	 OQq3tXgZWPQc7UkUA0/9+T6UtYvvTUyWrrMkf0FI889rlzEhp3rfbsYDtYoaJa0Ygm
	 IImTRzNaJO7749//ikU/BDuV1T7MWRPK9JHviHHAYqgxgvPcO9jMd4ONT0k66fdWKi
	 nQDdRn/xMosvsIfeuD/UivI6A7qoSv0kJfJnyU5h/aF7mbBsO7h+XaW0iU/jkbT0NW
	 2vRvnU3BuDwSt9jAe6XYQ0lk2K28d7I0S46fFpwD1vX3Wbn1ZeOQNc12PQYJ3Vh5vE
	 /BjexejG7TC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95B2C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276611368.3937.8001363729637806736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735ff058243b1cc7159b307fa4de5b7cebd23ef02a484c543af8d81adf11cfd7
Date: Mon, 29 Jun 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782766113
