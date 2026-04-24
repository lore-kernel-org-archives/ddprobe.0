Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A657285041
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777067254; cv=none; b=X4H43lVf/N/v7+mUQcTBoWGbO/1xkvHFSkQfv5qIj3hV79ea59SXFoupbzaszTv+vBwTOQneamuK+kgT8YbMFWOB74yMYFrtKKmwptqDSgyVs7pkPxykwXJiDXOCiCifHWl4/W5ExOwJWff6XZak0/eK2mnJgmfJVhcCUf58pBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777067254; c=relaxed/simple;
	bh=8KdeK7lPGnIsY3pPnotb8AnK0j27OKTvJ/gJoXRRzW8=;
	h=To:Subject:From:Message-Id:Date; b=IoxqZLT0TfrR+fayo/+xs7u78FD8xdMOpNvoM6a/iPEsUZYkzcsDD+pEkQHd/VvhVLzv+O7cvosQrgnKLrw/8VVJ+S4yEQp6/OPXZ8eMFgRypAI23/T3usF9wZfJIWzWKFW1zr/lg46ttnOG+9rLs4m6L2FZWDm8IeTi/ejVjK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCjKkcG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCjKkcG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23A4C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777067253;
	bh=8KdeK7lPGnIsY3pPnotb8AnK0j27OKTvJ/gJoXRRzW8=;
	h=To:Subject:From:Date:From;
	b=QCjKkcG+zUj/knCy0TBDwboG6BkxiWRjHuTsV/dFF1yPligBeLoDW8Er5Gq6bT2xh
	 2ulVlzGh60a3anSk0HSHvdDhSIDXoMBvxHyc95k2STCrQiYALCppBAhcofFDb5ZV0M
	 EqJ2V8jbgTmlsoyEn4DI9lx7NTCWF7cql4DNdfmWBr633AAeFwPB8hIt7nHsMiWot1
	 On6iPj4Aj8bUbWAXSuw32EkSpllTuH1mygmCO7mQQWnwq8X8Wqe+xEiUUyM/ccra/A
	 BM6PmckRQAvKiOi4utvzZ22V/VotXbgJRyNMR5V4I5CNzKMsoYielKTwsewlFm0WEQ
	 L5ZJyabJw36aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDCBFF8850
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706725368.16993.8430022861244496138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2724ee58573cee3d68c4b132f7f435723d15d8713f98eb88dd9ffb934d7ea140
Date: Fri, 24 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777067253
