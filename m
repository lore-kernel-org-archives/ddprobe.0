Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E02239903B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784658514; cv=none; b=AXoZEUs5Hz684JPczvb8WAQ6r95WD+btWeQeDVHdPg1Q8ROZtS4L7thKUf8z1/E/AojY+KZ6S+RbvYwtnnR9pg+h214HwMTx9C9AQgUcW39n7vFlyUS66SVft0SFFy2MWWDq5uzBqsTMI2JNdCyStXd7qsEzySMd5Sxi7lDQMwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784658514; c=relaxed/simple;
	bh=WWlV55aZ/SFBFuvzjSmI+Iq3KXXf/FsY64ZW9Uu/Ud8=;
	h=To:Subject:From:Message-Id:Date; b=EpmPxmtkH3D/SKwQZf6SbqkTSSYcY4oZKsNo0StThsT1TasZAd6Hgaprs+1M7g16ir/0F25C2ofilY0r/jyu/Om53W5d54F14r1s2Ie8TAp1mbSdnP7wAhkBI1jwMJASZvTLOlslwiLie4qSgra/bnEqeJzKPzKFaU/G/GWj8ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fpc2VEG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fpc2VEG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8C5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784658513;
	bh=WWlV55aZ/SFBFuvzjSmI+Iq3KXXf/FsY64ZW9Uu/Ud8=;
	h=To:Subject:From:Date:From;
	b=Fpc2VEG6ewDa4IAo4nBuypnao6BH8+MPuEH0OYL6n+kZpwGKmJfDNqw6pyZQCUb4d
	 s9ZxJl/ZxbJ+SKdcUSo7EISXMqXcWSMTO698BDQPtsv6Yj+KFgxrlFw6oDKXwmoirZ
	 UIHAZT2Hh+l9tOtlGLXw1PaJY1eYkIFnUUpCgRwsaHI9gJy0ddwbMZJ0lgvul8vkZV
	 8SNn0WAosZAkyH4V6QoPMQ9AXFu0ZICeFUJj4bFVY6div84smidzeZDI6cH/BdFl2g
	 QQu+SMPCItB14xEhuYBZ2f+HIVmXI2AhjEHpKlqHB9TgSopvZLkqLkY1LXtYnWufah
	 G08U+mZOPnHsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD541C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465851369.29280.11460069899511357603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135cbfcdab0959af01f30d3201be6d61a8922e07c30cea4cff3905755e7376df
Date: Tue, 21 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784658513
