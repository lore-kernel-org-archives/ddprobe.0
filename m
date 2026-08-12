Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1DE2BB13
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786510234; cv=none; b=TD2JGB1WH3WqCB3dWoDjhinMlxnB5h4y/r/haT1oFOx1PskVFoMXyPGWT9XEanT1f+NV+o36nGZ565C77AJ2UmaIxiifS/I0gDZJwFhyT8Q2qmGnFFAQyKci82tzhYODknhArgcThIUYRDUvuOnHGSYwne0jghOVpmlYcD0E5m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786510234; c=relaxed/simple;
	bh=s5ff5qKz9WmXqEvHeUbh78uWqA38Koc4LdG0hCU4NJ0=;
	h=To:Subject:From:Message-Id:Date; b=kpc55kZt6zkrGWDnmyA9iXJfTDtab/IQDcMyhoP8+5tnrGmX+jUNCboWPARbvIyn355WqBajQ5/JpV5fAJWs3ExWAKtGNSCZG+VMYhcePeF0/W5mriFfZuOYC44fkiW+UBy85Sw9n7/DX7Xd/gtzPT2c9lFxw4KG1tbMWkL8Tko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bs+HXPdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bs+HXPdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDC9C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786510233;
	bh=s5ff5qKz9WmXqEvHeUbh78uWqA38Koc4LdG0hCU4NJ0=;
	h=To:Subject:From:Date:From;
	b=bs+HXPdg2gJvDkmnm1zZjx8ekKwrM7VLHybLQZe3dPAvs7fEW8bYfLUf4j/38psyM
	 kwKd/iPW3GaFmMsRyxjrIIuPfuJ+NCEDYTpQPQ9PWV7aQZLZeM8uFCcJcD/kDRQUe3
	 mIxGsuaHUW6ymjVOnJNHdhA6UBDMGrfM0IhPfslyvUTq++xpak8M0r256WpFhkm8TZ
	 45kmQubdZnvAd5YX22n4xZxxADYu5IqvKB/sUw7QZgw1QJK7ZcLaJq3sN4dNB5Fmod
	 qcVASlTImVqgYmyOspWBVsvNgFk3G4iNDkJXc9836L1w4dNr+wgA5jseEBafnTQsGw
	 EZvKURnoZPAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8BBC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651023368.21048.5004463352054874130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b426f0056ee39e883cbce35d1efc115d0d35caeebe08971e8d4d3f8ccd78ba54
Date: Wed, 12 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786510233
