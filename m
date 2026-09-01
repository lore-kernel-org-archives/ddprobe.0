Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF5947A885
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788257434; cv=none; b=mMcBBaoLXxahnD09DyrcT7FkznBXtrMagRL+Lqv0ZzvYLgs9lYp46PSJmB68acBOoDTtg415pb/2PYM7BpsCAyHMfbvh8huEYRtCdmWlPb9OeUMvigb5RlKkcZAy4vXhCAxoxaE+QT1tmhI68L+8+m+Spbf72GY3TJwUaSL6Ic0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788257434; c=relaxed/simple;
	bh=9IZesysvaqTOdpXPb5+aLWhquF+iG8FMtaFpalR4GlI=;
	h=To:Subject:From:Message-Id:Date; b=flaEY/vR4BIwu/AvWmYWM2hHNza0o5khq67cxzPVnceeOjyuOtCLZh71z1YFt6T+X3sogKzFx0ku/2jgUXUExrLoeJ1kVmBAXRHlNdSeU3yPJodAOd7WEB/nrq1mRWesMzmOafZyclqIQYiUU21Kqov2WDERkCorgMtqUo3cWH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SND2/9e2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SND2/9e2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD112C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788257433;
	bh=9IZesysvaqTOdpXPb5+aLWhquF+iG8FMtaFpalR4GlI=;
	h=To:Subject:From:Date:From;
	b=SND2/9e2xwvBiSvxDQAk8dk5lXAkZmgEGdS/tdatPI7hjHKGS1fJyQ/b1pVvpoUYt
	 lvpU8NtO6Hurrz4bvMetdBTlfCZs77T7FSaiqHyZPtGpdjd/k/FAs52QwRcG3U7lJi
	 b8PZhspjfL50LJr0l3tYnxG46Tyi8MOFmUNAZfGqWp+nCBFyeRvzrVxmv9GqbWzUPm
	 iXYkybqi8IKQOVuyj7Khq+qFDi911L+bWELZH3sR3WPIcwwGUXfuNhSoams6lRtg5Z
	 EFNc0CXJ8ScZn1Q0w9B1N1/TcNJtRaIPW7vak63SGO0nidIZiEoTmgetVLkXz7QGZ8
	 uj5rgNZ/cszXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC30AC624D0
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825743369.5632.1280529191036194588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b672088ff42db639bf9267bb4d07262e6078a0ace75dced7fa66cc44153f2aa6
Date: Tue, 01 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788257433
