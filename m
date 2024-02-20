Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A953762EC
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708453097; cv=none; b=ip7BsCt1a0C9j6uYiucfSsETEmICFiYVreyYu674eIbIM7G0HEyUjK3dH52Cv8TTs6oPMHb4Kl3eN18ZwVTpzU2a12fWzC6IduxKhC67x8vnmvulZKmlx/VdGiznFaQ8KKDujYIVjwvtEdSxpQeYXqIj9yiKq3mRlvegjUDM//Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708453097; c=relaxed/simple;
	bh=JXxpjIFpIfE6jvwyUYYPujriVJc9A2pDoiKDIECDniE=;
	h=To:Subject:From:Message-Id:Date; b=kYsQg4Fu3HuEkCk2lvcIFY1Bq5o5+/ucytgFnuSWj8zBY70VKSYKrHmkUfhLz6OKMgiPR280N6fRBk6zac0YnXEOFIrugjdA7oCAT0mbwmVhlVMgcrLs2Y42hJE2B/k2K5Fl+4Z9NphdsPdMZ2MDpu8Kbr5l2TE0BZ3Xd16+JCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIG/7d/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIG/7d/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94576C433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708453096;
	bh=JXxpjIFpIfE6jvwyUYYPujriVJc9A2pDoiKDIECDniE=;
	h=To:Subject:From:Date:From;
	b=JIG/7d/pycDeJetDpaXKmRJyKJkMLgIGOZrZyXdSjzcTsa4g3jqedmjI7VhNTsKMo
	 qLG/HzDGDixWAwBAo2h2E4jw9RyC1+Qkj35O0zMH9quK9gt00xynM+DlKnSP4wK7xM
	 /IGDxuN9DhUcKVkd4SVJVy7rldHNNJounoicWVIzAuBkBNQnguSAtm+t8DNXNJT7pw
	 Q9I9cVuB5bAr7AO4R/P2PWxY3tED0lOxQwL7klZstO2swi0KlQdhi5fJQKh/1tpGx2
	 hjProZbqP0RrVj8Bttsvf+GciBeEVS+X4R6RQFRtgSzuC8ooYInABRRoRpNEKR/UIO
	 Ii9iVR+5pSueg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767E2C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170845309647.18890.15683269311806870178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c674ab820ae38b444fb2c68d6f3a864c8cb82da7f241d42b744aa30337d2188
Date: Tue, 20 Feb 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708453096
