Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651AE13A3FC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716801863; cv=none; b=hu3QvRx973baw729u3jf+Lj/zvsNWQJkiOEtI3dP9LvREA791Px0Y60hqrmaPQocXy89LAMsTtqm1++9SqwcUykUvSp6yXI/BJAtjVu7hRIq70W6Hne802pDKLdWfMhs0wo4hPuVjVR5EpqLxg8qKVKMepyUcvIAXWcDhosuM4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716801863; c=relaxed/simple;
	bh=kqr4k6tFCEBvpAHCkhhyVs5hJiAOs9MUP50/kEKKO/c=;
	h=To:Subject:From:Message-Id:Date; b=UCjyNOniUmrcOg9rARJ9mnTFRWvIy6063104brSdKPckOifjru1/Nx/ZVdpZPsSjRZiHC3j3Z5B/9bDrXils4zIf4vgoQmQFSTehk8TU4TsiZ0aopt9h9/phaFoetzC13gKCjKZIVpGKORMoy7BVBmA1IbMinCrg5aCZfD7rQCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoW+9uEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoW+9uEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E490CC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716801862;
	bh=kqr4k6tFCEBvpAHCkhhyVs5hJiAOs9MUP50/kEKKO/c=;
	h=To:Subject:From:Date:From;
	b=GoW+9uEktj6SDskdEH6OQSW5YyCpJBaP3gtpCiF7rA9vyGDWvisheqA8VuXyFEumO
	 mpyoKWY1UxGQUfKrJAVw3YBy9aMmESSm3EnA8q04Sj2O6tyhEwkfaoCbGZV/BjrGLO
	 gbXUf3C5Mr/KXV+m4MEaKhqPb7mmgMu3Sa1WRm8ZQQwRT8QGUJTfBbo2B17LAnqd4Z
	 MbhpE5Glc+VBRXZefo03jEvrj34haYU4aFMiVb0+1yQJCPUTUDhUFzV3DMZ8laU1ex
	 NYv4yECH/vrrt9vokDMieqG56cvzfWeTOgq2p26rSyMDU57zHFOK16e4YZZj93DW0x
	 JEjxvb/tYo7nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAEBC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680186284.18262.12610547270562194891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8384d85586786488345e660823971cf6df991fa519368da2223b60d97c5e5dad
Date: Mon, 27 May 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716801862
