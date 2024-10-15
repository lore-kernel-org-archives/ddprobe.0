Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F3C18BB8B
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728976554; cv=none; b=Hd5w/g2cs6zjfqMfZfHWQ3qWhlLIWAOYTYmc+ycfuivnhZP42OtnpxA4niPmOcn88BQbLsPd15AHH25GEuxWTTnw2yLntXvWJ+hR6MtthSoZL8N4KMzLhZ/vZQWqzbUhCMRw58whWX4tx8Fy/Gz1ZG3KNSS7ejiCO/lwNNXX29Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728976554; c=relaxed/simple;
	bh=lCRXC0djvrj4G/WnyH6nRLlCYODCf52E1inpN2Qwc8M=;
	h=To:Subject:From:Message-Id:Date; b=WhvkaT2Gr7QMTfu8yz1RCNxIS3aGIDkZe6dH8PjQDXnmeUFwWu0o9pZKR96wOPk1exJZbVbYbe1fTT6c43QDtnJVU53yRbw7STBnTfBT9qWNUZsapGwixpsZGHllmf+yCQ8ifZxOcNdiyVmvscUU8wJxpgZ2ejXsgKr1lfXm4sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8W5BE6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8W5BE6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDEDC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728976553;
	bh=lCRXC0djvrj4G/WnyH6nRLlCYODCf52E1inpN2Qwc8M=;
	h=To:Subject:From:Date:From;
	b=p8W5BE6iwkoxFGxG7n83SCta2zexUZLmkjft142uro5DwWDkfvg2M9UGuLl4lZZC0
	 +CgfOcIWW6ndoMzavn0rAxmoUx6R3Jbl4bQgAqsb9mZnciLpP9PFr8t6angwH7Dzyz
	 aTpD7GrA3iKdVZ6u7s1V1+7hwzbcgd0Prmp4mj0rxi9vE3agaUqHHMV+8Qm1OZZfEY
	 I70qeQepEAvDImCEk0Kt33+jhtG04RsOUfe73Fcf29BckmicGRgK8pse8TnQhitqj2
	 k5EZFYhovpIUHuArf8o5LIr6nJzM0CSEdXIAlblJoKDz89M9/nX+UlAm6C1mkY3k0i
	 dU8Z1Ym9wFi/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978E4CFC272
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897655360.28818.18285647665374888131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c853ae2e15ff96479e99135f6fec03368dff2147552b209684f85ee824e1b9b
Date: Tue, 15 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728976553
