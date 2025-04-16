Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D3328373
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744831195; cv=none; b=ZbgXUNc+vng3Q0dcFttXE0oQ0mL8atcXGscH+nmBgMqA1rY2wnqLoFqHk/FKqlMqUZD0zNmUhjwOcAJ3VJtPTwTeTgL4oNrmz+7WYnx1k62WF/6iHEjIbZ7jtNoRR1r4Qt7eSho0G8qeK/emecLdUjopvc40I7GnN2agX/aRXMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744831195; c=relaxed/simple;
	bh=nBSmBMHtaNOnawHQAWSkK0yQC7rf0hZ5b8l3w4VwouI=;
	h=To:Subject:From:Message-Id:Date; b=jNyQ3nZkdN6KTvef1QVP4sdhcRs6FS2RelIHSuAVRdmGKd3gdPm4FW8UyITctNpQF4yYcNv/ZNKvv4l5F9kC95zZpB4aPFph7ZY8DsW05G3e5tA9jsVA6KU2VPA7YVCnBTgNtdlB57CvBYTkPpcHL163WGJbaY80imXmhShnBR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUTn06JV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUTn06JV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE58DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744831193;
	bh=nBSmBMHtaNOnawHQAWSkK0yQC7rf0hZ5b8l3w4VwouI=;
	h=To:Subject:From:Date:From;
	b=VUTn06JVS3fwbtXUh+VY5S447jXOD76f0n0OKqJcj5xP/TwvDTgj69ru10CsmEWmg
	 XyRcu3EDGJb/+cNryfBRd4mTTWqT1b2aJqdgHDgGXigBLHUBreAOt0TCAAs9/nu125
	 T5anIhD6u8WbimN6A3KH/Sp2Vy7I2+EXBpSnDdRw/BF2cWG64neKf2BB0mp0hEN4vK
	 kUmGp52VLJoQEE4As0qdb8nQXKYopVQ6jDbU4YBdGWKKCXQVWIypJooD7yUoC6BhC/
	 E/jEsuAxYISF6S/WLqgTVSDiLHpQFNW4yC1SDmLjKJb0ojJmjSyfDh99Fi6Id+9dW8
	 +CkGL1Xzu0yOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98367C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483119360.26546.1866293186861855413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12a2e47a793abf6508a15eb5a9f45d22198808a68aea966dd60ac91ad867423
Date: Wed, 16 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744831193
