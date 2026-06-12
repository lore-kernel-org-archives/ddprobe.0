Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55271404BC1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781282794; cv=none; b=ulUkX1VNAbMAclg3T2WpT6DCn7osHfcaUpVi6a+bDGErf6ICJPsNmSt0hntbFOBOpyzlxtsOmgJwRJUrS/coQzGGtb3e6FfdBCEjMfDT6F09YThbhmKiJBDbSAhnwf3ELugRbE7ZmmBhorMUDemwjO+2qC3IO2sWUoK1pa26+U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781282794; c=relaxed/simple;
	bh=DlyDD9pIuz3DbZ6GRAL9pxKvnkhzh8iqqI5/8poWKco=;
	h=To:Subject:From:Message-Id:Date; b=an/DuoaPnTwbrpGw/cpsdNJigbIBRkcMipxn3D59Lwq+1SLcY4s8fx4HtZmMZP1MX1K9IcUhy4otQFD5aQRhbFeaTTldgi4lgd6gzQhpWcXbaHNyNJ6FsCFISjIfwTHNNP2kAP4Ei6KfvCoZJs49ZU7WuiNf6rSArtJxBpZ+ZKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb1Ee8z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb1Ee8z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8033C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781282793;
	bh=DlyDD9pIuz3DbZ6GRAL9pxKvnkhzh8iqqI5/8poWKco=;
	h=To:Subject:From:Date:From;
	b=Tb1Ee8z+zBbHBUoO9fZn5uyUNNUdrRqCutGauO6xT8FsZR7N4qNK6wX0d1P3F4rLJ
	 ZXs52MCtdmTSZpnUSNvEsoOMkOOf+9EzRSZCMIo+kjKQ6K23peD/8z2YaVukuBtXME
	 ETrXpK9xTeJl0D5HfIKJqJMcjphjaDUG0VkkRmOa3EamcPxc8ZYCDuyvpMqdjt9zZm
	 FyudkwsAQiraed9Izi7F42PnmzaQ7xEhfBn2u3w31rjQJ1YGEDT4cjlCCkm3Y6dC1N
	 nF2x00wYYiyQimkFCPp8XrhkatC2T9TOYLi6nYVltY0rdHhq+Cnhz3wGd9BIdp+uQA
	 mFQwE7lfskNRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9BACD98D6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128279369.13996.9188407572052304979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c072b3e91a94d620845e5a9c9617d116fe80650525466fe1246fa268a18faf41
Date: Fri, 12 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781282793
