Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCDC18C02E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782868714; cv=none; b=raWSfTKlTOaQvlQgWkF5bdruMecbsQk0/uBw9sje6PaVPact/AREdHmSVpUI6XLT2OeY9CvoEFHXt8oUV0/QrD9VVaks2FgYDxmKM57SLpaQftQQwRWGbSREWR8jbF+5XuNiPcpxIVEM6QtaulzaWcuI5DUk6iJZWliZX0EMDPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782868714; c=relaxed/simple;
	bh=24gaVRZ1+wLJauRo+pffagMQlpcynWIxxMYWnJBp+zw=;
	h=To:Subject:From:Message-Id:Date; b=FkbsL93Kx7I1P7rsuJNUJU8CN2qh7r4sEklXJjK1sHl0fSn5CUpAesrfj/gHSmzJeRMMVfXQmATUjGIdSaL2c9jYb5IoPFkuNnlBk7ohaOcy/tbFA7n2FfZFx5LItBMiiArC9YqhMBq/TnVNtOpKbeY7zUHBANOjIXrddlqnE0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrSmyak9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrSmyak9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0432C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782868713;
	bh=24gaVRZ1+wLJauRo+pffagMQlpcynWIxxMYWnJBp+zw=;
	h=To:Subject:From:Date:From;
	b=TrSmyak94+NO7TtOIO9g+DbF4MJGkaEXFOPFpLdAuCjy/7BHaFqnfxmFyulH0LS/T
	 oiV1XYqUYtE0O4UsmyoH7XuWyIFSCP3LmdDLWX5Fl44csVEC54QjG3yRkzHgpIsJZo
	 63nJjefMOo4NSVg+w9q/D4P4eZ51rGMLF5xfQIoTEIevjRm1abjAVbrtCPJehKWtuM
	 9zqJNdyjwQg/JuuS6rPNmekNDkDs8WTAgVwF8MpWlqO4JWiCRwrJnPTjlHV686qgpg
	 ZOh9RfJ8rrQkZymzcpdKOl2w4wJLhtOKLq0qmcTDNS8oEiF909I+cqH8KItAi+12sK
	 s48TrgZahbI6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CFEC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286871368.25037.7283331615212008202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb78d8099848cd9730654d6a6b119efc19556d4f1f61ef67eb6fba165074bd5
Date: Wed, 01 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782868713
