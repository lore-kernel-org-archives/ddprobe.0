Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C39F3FF8A2
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777378655; cv=none; b=Glog0OSQvkqr+4QP6VZahX7Mo9gJj/KgI4lhb4i2fGlUNfRIcKRt1r8qGUWJW4h1g1FT6LRK9M5BIzE9YjUl34snUNpTDXqNbhdcFlBz4MnVakC5AsJucmQp36w/GNBDQAClSEcG/vxxse6DWCTOPCM1Zi2cUiRUAfEXcKDn03k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777378655; c=relaxed/simple;
	bh=R+0Ch+zAeAQTTohDQMC90CUdepxw5EzMCta9OiyR014=;
	h=To:Subject:From:Message-Id:Date; b=OYQJwxExrUj2lqGVsw5OZRD9qyHR8Sv71gXxhSWdd4vt0t4hnW9IzQWmq4DXUyzwHV7S2vuKo0QHvAW2jmdrNbAz5slhvqNdTZ/FMUoKFc03fbxP///clwdAQt01lQMI5MaBvL7ctSKViF03T1NE8aypfQJh1ZSenHDqDVPV4Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTA4Y4W9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTA4Y4W9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AFAC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777378653;
	bh=R+0Ch+zAeAQTTohDQMC90CUdepxw5EzMCta9OiyR014=;
	h=To:Subject:From:Date:From;
	b=PTA4Y4W9l933S1kYGWoa3bkiZhLcqTWV2acKGCIzesDiKUTY425CsRd6LTTaDl2lN
	 ENyRRJnH8pp9ktwAGIXqSU1yNoF5lR+YYzEkwqw/7zk8RTdjr7egZk/FkGv+TMssMW
	 JgEFhhFLsADujV/FScilikmhjkjbo+MW1J+l0z3efpMWv0rYo21OV9CJcvuyhwFcBq
	 /vFCzyU9UfPqqzzu+cEc8eO7tYewjG7X5IU5V+9KoQHFrw+MSquZi2sC+WMp9wQYbe
	 WtGvIJYSing4GEbXvVepljUIMAW8rBxL9N/TrlirfGWIOWsfLfMfhEbNWsbDfXr2bQ
	 6/9KiIE8c8G4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61C4FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737865373.9688.17329830730825099921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47da5ff8ca4b5d082fe732170178582da36e845d94596748591304df5c718089
Date: Tue, 28 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777378653
