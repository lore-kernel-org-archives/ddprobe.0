Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF8D47F782
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791369634; cv=none; b=EjR/Hw8oHqwuqTbvS92ZctYIJpYomG4fpnAF2+HTaq2nOjvnuuw3/kmiNQr3GhJK+4fKKe5j/EIRBITh71Fo2q0rRSZpZcr/9OY+jRWPJUiOQaCKyBMUkToXkLw8s2ksGxGuW6iV5eB9u00zkFgLL4Ey8yvtZ3VlQAYU8qsIg0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791369634; c=relaxed/simple;
	bh=4NVUBwu2gmm4FL0hrdGeoQtUL3NXL9ljMn0XehInfio=;
	h=To:Subject:From:Message-Id:Date; b=br8U/+ghGdzof01U4kDxCT9pqlf90vJRByaZdq6khxmtKSpvx00wrajCelojhhpvuV9mGQ+X3hs6XAM68fnQqeG62eRZJVjpgc2kTHnfpxU7DIJcDKHHLrFNkkmGCplfa0oj1ZXYWIJHqeCd7iIvvOMl7s6P5np0Nd7ym5PBMaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FM/QMOmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FM/QMOmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3431C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791369633;
	bh=4NVUBwu2gmm4FL0hrdGeoQtUL3NXL9ljMn0XehInfio=;
	h=To:Subject:From:Date:From;
	b=FM/QMOmYvitSzAwBWTwJzn8V2FuByNWCstwMETVcF/brpbbMCvrHJ0yVQ0R9UNPLr
	 47hfmhghHGdGaxCj8K4UMq05r/3dz/o5wAxG1YwGLjR5FH6iaUMzIbscpefDkTwxZm
	 CfziPjKPr/GHN0a4KUPj7GHUk60X726bxnQ+Zw5Egvf0VeJu4RviCbrZV/hqGJLBtA
	 n3WAkRhDdWPpC83ICCbYEHPOo6iOkz+4ZOAhcRgCHE+7d8BQsWnrI4cHqYRA+Ru9P4
	 PHksYsZNUjLBjCvFBDoAIva7q1vtRAZyHOBgzbsOcx2o+1rzUnzMhS9EClkAIqx9Cm
	 S4hgkPwC5cmOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABDDCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136963368.31424.17408235014251487647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162d29b7005f3e3446369e014bb3d8345dbab8b1a764197b7b44cdc48b506007
Date: Wed, 07 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791369633
