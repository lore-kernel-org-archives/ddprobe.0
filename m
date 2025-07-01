Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4F6DDBC
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751331594; cv=none; b=joGKkflt2MWDSLIZBHcJWbV2jNf3cjeO9VQgje7sxPRdGsCzbpRlgwPrGgK9mclfAhO+hfvj0Dj8EquypJpYfnj5BW2SbYImC+eCv03KiyUklNMUHZ/KoLXHrV+BBZmcJyAqV8imqBW5mog31DoOsot+raRKTZD+/JwzHjArEMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751331594; c=relaxed/simple;
	bh=A3X7Gcx3e/Bjym4dQMACOP/ZxAx2B0Jpkyj2DLn4RF8=;
	h=To:Subject:From:Message-Id:Date; b=VKvh17CnDZVUYPcOWA9p5At23uLngrBea3gtjKuR14as63pp/dfRlH8UyC0n1d8zoOKFI2LXN51oZYSwTwv5H9WFExcOaAkD0059cVyCcTvt8VqYE+uM0ebLlkUH9lUpQ+C1gjAbLb1eYQA32kYxr1DU0gGQyAguO9qEyd75NlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0a9l93j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0a9l93j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D911C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751331593;
	bh=A3X7Gcx3e/Bjym4dQMACOP/ZxAx2B0Jpkyj2DLn4RF8=;
	h=To:Subject:From:Date:From;
	b=L0a9l93j6em4/bTdUfNUkameQJwigbOZr1C+xRUh3XASP0era641jSl76bHrv5PyE
	 DJzwDQWHBAOm4MvTjpVnHydUzy59aEXSlSOx5MSdrZ+Fp0lP1R+opuEB0anAxxrkfv
	 vz+0/lqgKu8lzXGK2HkSRSEKJMaw6jHBh5jFArnK7YlW6xMfZhybUmBRgUmx2Sookx
	 ofN7jLKCbqmfT8AlqHDoljDxRWnBGJEy+1/PWK+Nb4mlJ63l4G+70n30SOewjg7cyW
	 WOPnvF9NrEkiXGL+1BLEmStfdvtDDbNh5zFOXi0oXsIaWhWpxhjrp8/rnse/stB/xw
	 21I9XAQTkEstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE4C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133159357.16795.8658527476088501028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504edd394d3ba1a30e90ad6c1cdd58bc7344c45c965ecdfd35ea89c10b734637
Date: Tue, 01 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751331593
