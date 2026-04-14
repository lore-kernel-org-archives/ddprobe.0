Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FA139657D
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776163654; cv=none; b=JLXjNkhlFRUj12rOeK/POzm/7o76kiZZ8eum+PMxlAkrg31lZWpEPM/HGPx8Ssb0TCAgOdFPnbQIEWxaqKcUYq+bCe267LUxOELsximxRJf+ckOa+JB9MTWEZyEAOD/zVlvL4boEZo57gsO9jGOfEAvZDFgAiuKR5SVCN2LnZvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776163654; c=relaxed/simple;
	bh=k+gfRVgITyn9mSsi1dM5uKcB5y4HhWol6+r4tiHBRXs=;
	h=To:Subject:From:Message-Id:Date; b=h9dGrIpQ67IKDyOPdWdaNenw1YMslKQFcPW2Krbpv801VPbGYVGYka+SYIyKSBeNt3W01k6gd3DcO5wUSzIEBR6+TNfL1Sn3tLlkzoW+O5S9yqE6wqhxRjhbj1lw5rRjQkxqT90fHP51uNS2KS2Xi4HPpiy6oaFLwuFHxGD0nZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSsN48Fa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSsN48Fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD63BC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776163653;
	bh=k+gfRVgITyn9mSsi1dM5uKcB5y4HhWol6+r4tiHBRXs=;
	h=To:Subject:From:Date:From;
	b=gSsN48Fa7qb3Ei9ohNFwJt/arQGWSv/qS1EPnj+xBLaL9OBJEUcmjuXV7hP3y29bz
	 fskDdBJ8Cynfo8Tmp/jJeevLab3zCLUPHFFAEgjbLvcSKczEkyWSGzDdTRmFEtMz9X
	 j/6yBJPP7bTBsBVvLGkQ7PbizJPRxmJb36sPN6SrfFb9Bv+APJGA26W+Br68DTt/hL
	 BuAggQb9Qb8tBhCdvofZ9Wz7HPlIA7Ba4lNJ4Y2/lKE7lggOhYXVX0sw8Gqn9nBe+Y
	 0x5rJdGBM3Na28eLIKFyNGXVrIEBJqSVGNr4lEfEjbY+Uf6p0SYva7LDSbt5W/Sg6D
	 omk7BXGAlX1hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9312ED7B9C
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616365368.12983.3849973178239100387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de340aabefd4b3ebc7a7fe9a8356d8d59e680bb366f8bd28dd165634577be436
Date: Tue, 14 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776163653
