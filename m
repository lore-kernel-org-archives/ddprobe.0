Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0048C153565
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711575497; cv=none; b=RO71fifpsMOyrNrlre/5KTKySruu6CG1w7MRUKIIj7+se3IJbWMtqSgbuCV8dF8h1tFtWEs9U88xsJ5+xJM/VeU2VcslJrmCF+yNi0tcbvfael3zW9tm5OnuJok+IpSpWlZyGEP5vhFNOhGvSP06q2iGY166WBZRXrS7zbq7f9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711575497; c=relaxed/simple;
	bh=bCwgSjHg1CzN087/q6NyxhOpU0KRc8kIIow0cWjVf0Q=;
	h=To:Subject:From:Message-Id:Date; b=EZ52HqJsSiof/KvMGd6EGIAyXQpiwcRZnBqHmPAKsO3kqRi1+ld8VGIMyL1Wg/kobIm8vJeDoHyxvFSVjVC/afP5ssJSJTivLmrQtoMhq/2pmLwy4/ZBui+GZcGK73Lt1EleJos6n2RA0Hf464MvbRwESbcmNOa/XPqu4mZAmJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tr4qJdWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tr4qJdWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784DEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711575496;
	bh=bCwgSjHg1CzN087/q6NyxhOpU0KRc8kIIow0cWjVf0Q=;
	h=To:Subject:From:Date:From;
	b=tr4qJdWg3rrbsvMZXE30ss8JtDcrsJr5H97EI4g8z/jHRolovMC7rccfskyfNbd5R
	 kNLQRL0taIdgaI9tod8xCyv7FUt9taWZ896Kq0xy9/ztgHFvZH0TTlXU42yEF37c1L
	 V9rlOrVBlUdQkrgpW9/W0m5tSXra1Y9ikdiibd1Pja9Mqf+33pNSfY6jeayEje5ZxD
	 gD8lMDOT7UJ1uJrXQjtsVLKapWPdzzbhBHXogwF9c0Vch/j3dHe+4k5/g/nmv2YImJ
	 aEvCqZpv68o8aeb+J/kIs1uoO2nUF+sNundPHmFNtF07u/g1GKxY3ytKDnstmyqfWy
	 eeJ1+OXtkLHAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AC4C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171157549642.8035.8165162925938290928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a544827b865d217d1ef5abcae7dd1b5f71fc1265e45aea5fc0ce2eb9d7b0c5ea
Date: Wed, 27 Mar 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711575496
