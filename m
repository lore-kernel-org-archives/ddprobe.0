Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DC7DDBC
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751337594; cv=none; b=oEys+qktqfdd/DESW+w0sCnugRA6R3hrmfhx7JDQYZO+tUiM60MgFQgPdKfGLxrKs4Ku8L+8NUsFM7aoL27vI9Mzjgr/aOYYjXD54HhIi03XGnyblN9kTCO/+2vEYNI0BsjMlH5v0a87tF4pjdfTLit01qN7CmOdS0ZrPcA38qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751337594; c=relaxed/simple;
	bh=k7jIJhWZPj/2W28M6gctH31r5M4tYmahF0kVJnn9Iiw=;
	h=To:Subject:From:Message-Id:Date; b=TQ3Aq3uvdYyPFAPqnE4q/v2yPUZopPIb+2BAm0xh1Ms9MY4OW90lzNFRLXvvrIrz7UUPzLvz2Uat6a3tC1S641z24v9htrEZMSiiK1nQyzm6cCzQBtc6JiUqPCk3TH6tMG9cEsxbuiGnWqLpVG+5bvszAt3hBUhXeTtrdk7dvBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHU5Jyr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHU5Jyr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3424C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751337593;
	bh=k7jIJhWZPj/2W28M6gctH31r5M4tYmahF0kVJnn9Iiw=;
	h=To:Subject:From:Date:From;
	b=WHU5Jyr0Jm2L02jb5ub8fe+jHMv8es4D7oIjgqRwkFN/bzx5nhbJ/duhZ9qq8y7S4
	 f0uHsPyUgvit9+q++pGWbBnRC2hc2A2IK7Rox9tty5HUi/iyJh9CwPe9hwmH/CJzOD
	 5LJEam5gEfRSy2nm3f8rDY1nHbzAvK3A+c3GkGyHT7u4ZYUyWQBBotPa9LpAvz921Z
	 d3d1njV/Zp5P/3QRiJEwpqbZCO9BnhQV1TRCkYQGJKeoT/hPyKMrqY4CoImCYOnmBg
	 z//HrNbD+Nip3KL0xwXhib8ek7FhEcFMQTdMCXD/zwAUrTGdwsVZjdz0+zUjrLAKLI
	 tS5BXdzaqfDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D2C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133759357.16824.16842728185667781012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74401cbeff76c395c6f514934cf7c52123d8d4fb2979840714eb5563f43d0fd
Date: Tue, 01 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751337593
