Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10F416F858
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741619333; cv=none; b=hRjfSL8vvX9OxsQeZc6a6liRkoLb1W7WnYKlV86KP/OJOEtSSsywrnMay/eWu0KvL0vgJkpMAQWOSK+CGRafUJ3NRHhIfypfeRcnaMA8EHUE4vuqMYB1BENMOC/bTjQ/kLSCEcoP0dpCZmo1iljiwJDtHOsSp8OZnQeyeIuwiwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741619333; c=relaxed/simple;
	bh=+qDsXuwD6JUt6ZA1ZvBhDohZRppuWqjD+XjA3imZUt4=;
	h=To:Subject:From:Message-Id:Date; b=QFCkqvF2orGAxvyHqObhLXY5rW3lS2/OKAFgpydOx30kr5VI/qIAl2mcGYWICUm19dDInOH7bLQvxbwtuXHYf/9Box7XzK4zr8o4GtXGfEZWNIsX22vgWfZYJL3Mh6QV8Cgt98MXZ7PcfSzkHh9mS/pITD6Gl6C9wtq6aabDABo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpqW9Q7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpqW9Q7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86C5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741619333;
	bh=+qDsXuwD6JUt6ZA1ZvBhDohZRppuWqjD+XjA3imZUt4=;
	h=To:Subject:From:Date:From;
	b=XpqW9Q7fycKSCPMYB5gtj5QdtI/M8vibTJRHT+dutzcPnh3laoJewwzTaadOJN+Xo
	 AZ3kylIlJiFrxxRA4zzDbPNgeD9nmEiD5AB+U0BPO1gaNrNqEk2MPNsjfBOe98FkOa
	 ceZEmw56XB7xpBPg53b7ayio/VLzUypUVQSWjYJLVkvj1OdP/qPyKkeu5PMUWs+8RA
	 L6DB3wxPNAzlvDiSxAVQ4MTF5AzxcmfxtQLf3ezHUjbnxSB37SUWAnAge28VROl5p4
	 fDM/22c+OuBsAwNEg9x/o0mMjHSm9DVFJnEyE2s71YR5N3mEudVtEGNn8OUjr5kawU
	 J83zlrM3njK+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ADDC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161933361.22150.14992023179860008666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09be72c693599ea69240d5ae548f0705343f8afe701813b3bf84f5d7aff13d83
Date: Mon, 10 Mar 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741619333
