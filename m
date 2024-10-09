Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5EA18C91B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728472554; cv=none; b=KSrCPytS9GVOk69o5bRHUVP11AB8TmSs8VELy4tTdaQqAoZWMzdwrGlU4qv+r4ZxWVe9YgmKMaEdzDV3FF9OssSoIG/6dbnbIsOlJKh0WpreClM+SpOQTazeJRKuI8oLA8RYSkdA/UhqCVHhgzWKMk5W1BzlRgX5osFMcD4V33k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728472554; c=relaxed/simple;
	bh=kews15tYTuJfGjbgtQruAXz9eWY2Cr3iws4xDcq7reg=;
	h=To:Subject:From:Message-Id:Date; b=RP/8IXRA7PH3r10BxWc2LzyXlXR3zwdoMzHcGvCX6EAtyxITNycMbpc4x84RWfYXalH2d2ULR2/j6zFmPZlGi4GjMiaW1kl/spxGcgS6wBN4dTGx7DcjoGkAZgcLrgypLtPbPxEDZaB2AEFUmfK9LB6HJIz8GH2mvRVM5ZOjtuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPjeY7dU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPjeY7dU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D2C4CECC
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728472553;
	bh=kews15tYTuJfGjbgtQruAXz9eWY2Cr3iws4xDcq7reg=;
	h=To:Subject:From:Date:From;
	b=vPjeY7dUC98KmrsolsUGtChfaCr5dupZL+b/g93Fy80lYrLqqJ7+4ke5xxo6Pm7pY
	 Y4GU0DYiq8EXINSpUA5vGxdfsHoag6mNKBqDHxGeroUTMuxdEaHQGx4VdlTQrxkzlf
	 MhZ0Z9gXXMuBzI2IREwExqLcLgyb6DVz6j3XBLMANNgLmvDbaUaxZC9d5JYSH57vLA
	 gv7BP7seP1OxcptKN6lBz6ODT0doUTrRUcXc96X8r7MLr1QgWSgoSVOCDqTEAK4zpV
	 d59G33JjpWAycUpjafTmWSq9eWt1hX27uzZtXgI1Cuu0XoId6ZpqrPW9lTMboZfO1B
	 XUqeJnLJ/pl7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC71CF0450
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847255358.31413.2318010710294298100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a146d25dd0ceee455c7aea764f2da836e711ad7b2e733d9c70610e3be7ab2e
Date: Wed, 09 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728472553
