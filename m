Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D2B184524
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743242994; cv=none; b=TVyXzfeLW87dcz+bTA5lL4uzLom0CQxmEQuEsXC5SGSYomWI0oRTr/vJ81WqQ6fa229jBazSQ3WTlaavcUaEF50Fu2O6eIejnrcbfYwuQ6XiaLZ88FUebnNBCeWbGNyeS+swpKuS6Ho3sP04ngk2VeNAJ41aT4hrDAFOvMrN+G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743242994; c=relaxed/simple;
	bh=MupOdM0XhvlIV1nCKY5zctUPDzdofFQ8h5Pu6i3QmfU=;
	h=To:Subject:From:Message-Id:Date; b=gHZk0DUHl4eu7D0xpoFrMCqqN44KnnrH3O5sX2fNTJUWSuH0HK80gV6Vd1R8gNe4A6MmlAMB5+Z0pb98YCkJptDqbqO2csTN5i5VZALZOimN1c3cQ+fGUWKlp08wOE7LHGoK0QMcKpKRLVJwzJLHyHXfmO6VvQlKSF2ONMs24fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeNCJ3X1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeNCJ3X1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB567C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743242993;
	bh=MupOdM0XhvlIV1nCKY5zctUPDzdofFQ8h5Pu6i3QmfU=;
	h=To:Subject:From:Date:From;
	b=XeNCJ3X1rLwrh4SBHFq/lN4fJtgvfF4b20UZbc8zmale7sxEesbftud3seoUc53m5
	 WuwEVxlyTDaNaArHn18BGnpgXuQXh89nVhVS+/YA+myUQMR4L+Ao4GaDi0nHwNRuvq
	 2ls2fAw8GSCWhKKeIGTT8PDHDScBgac64LAn8eXHjw+UUhbBhrLtwcPwwl1bdYMjGe
	 H4bkqBr3EXwaKOodC3DamoXbSZJdgh6+howSy2dcO77ZkNs8LRdN94MuQJDrOvCeC5
	 XJgkwXmRMCcQzbNhZDbPKsXdO+nTI8ipkInHc/MzGfO8s8MIbpsv6FIo8M3us1ZjZ9
	 0wqD5Ajj/rtEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FAEC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324299359.21623.15866112103571838155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1822c6db9864064ddeff16342ddc8e67498922face4c49df3f549d25918ea622
Date: Sat, 29 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743242993
