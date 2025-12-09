Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177D012E1DC
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765246974; cv=none; b=SZ9VBY71MOM1gGtyhcbNoggy2sDbtkKDbrzIxKtALdAYcmXjLCseQLZk47YDMIc37qbeDPyMOLmMKj0pXU1ckffU9mL7gVOQZEsrDM1nXz+JQ+jG207z4L0zvXTU9SdHVAfHT57vsCRxxf/UOBkPa12J3x1RU6XYgni/FSqYI38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765246974; c=relaxed/simple;
	bh=LHaJnbJT4SHbI/NRHbGZ5WNqUGmhxnFrk3Ca4kANFhw=;
	h=To:Subject:From:Message-Id:Date; b=NOzFDnqeOiSO72LN2vPyqqsEKtb6U63FYxe3xJTkzz2Y5LsO6oOED1H+UOzngkwYuVupljvq1biZkFBkfKomwBG0h5yfTJwf+1ZY44vu/aJpLkeCaHHe1RtK+KMgwAhqIb4JNkVwOBeQiO3B8DsbfwobsCp98yIUwfJ7XqYKiW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ME/Dw5WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME/Dw5WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765246973;
	bh=LHaJnbJT4SHbI/NRHbGZ5WNqUGmhxnFrk3Ca4kANFhw=;
	h=To:Subject:From:Date:From;
	b=ME/Dw5WZgfF41oJ7cRieyIyi2ZMmXiWYaZr0ePEUnFR6R066hOTGbsNAaUYvAb6ez
	 hQ1L95QUQXFArSaiiteo4JaTh3Vn3Fr2ChgGJ6YO5R8R9g3be65gwFyQ8ULLucBlCt
	 EPmmAfw642AUk538w8nrqY83CohtT0SyTwlYAtCjh5qPNBJuTiJaMnwnD+l7/FvFbA
	 j8utJdQFsW5Pikhmxs0/Hxo8f1YDzzccZ0Axv0lXx8ABJorJU2kaKUlgi1dJlOlsx0
	 +WdWE6g7AC+2wMoEvx+1tRw2sn/Nv2tYi9UOqmG5POlmTy8zjWFlurmZpqs6CYwD5i
	 H8SBLvSqVIETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A5ED3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524697358.29401.45669085922215971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85f87eaac260d7ebab50832ce99c42088d8c2246339718d2bea9dd1d20d4fc8
Date: Tue, 09 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765246973
