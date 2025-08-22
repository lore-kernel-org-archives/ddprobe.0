Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2509F1B041A
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755906595; cv=none; b=EhnyzM2Khswk9MhEWDakREYRolDAKsYamnYJAc2xR6b1N6k68h8A2MyylwYn5LEOEVRH2yrFzJMTeYm/pg2DHkt0wVem+zt0v/e8FYokWZ2LEsfpqwMavFzfdm/630tD7bCWPPjKmDB+PwpY8N0CN+jHLWdyhvnHyl8R5gVclEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755906595; c=relaxed/simple;
	bh=QHdQUSjaZD8HvPHAdIuFi85agVslscG3P4fXmJ+4kDk=;
	h=To:Subject:From:Message-Id:Date; b=I4FsyHKse85UuXmPeNxMxLqaFwdBqtL2a/szeCv+54VGS9puMKeWMv6tOENHd4Gw20LpIPekDW4d3KWdfaGTp+AYzTxZeFsbcThfTyd31POYsbfoPNYEmNZfSWLXsOptTJxIQ543ionmG54UCJWR4t3yw3vba9BVSXHXC+haoDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbqmGgQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbqmGgQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5932C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755906593;
	bh=QHdQUSjaZD8HvPHAdIuFi85agVslscG3P4fXmJ+4kDk=;
	h=To:Subject:From:Date:From;
	b=ZbqmGgQxQhpEnCMCzeTEt5lI6amm3K0n4yl2d2jy0NulVl4wQEPOSz9R5PWZKI//m
	 PfgkQTrTdz/a5ei4EAP8P77qVLhaL7NuM1rdAn12//qJ/GF7g2wunwP7D9yXqeurs8
	 EEoIB1Rli6DH/zduzabkqY8W6VczGfnvphWjlsa2TRIckt/tbAwRhUjiqhMhTBquzk
	 An6K5swoTOY2iKF8zBazz//BsI/r72b0sTI2Yz6gCnhCfYLUROkPqoaL+ksVH9C4lF
	 NsPeeF4n5bogX3yChHZkxi/f032x29t/nV23rVdcQlJRmesVhfnv6IlgOu91/y8yum
	 zFLGcoswj3JyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915FCCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590659357.2239.12421943300678831051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1f62090390eaa68ec23ae98ccd8a36d915215643af471cdbe0a8724f1b5846
Date: Fri, 22 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755906593
