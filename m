Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D643346AD3
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772232894; cv=none; b=bj41dO1EHqehO+pWek638F0wGIcRo03QZXq7R+R0d7yjlOl/qxOY/93r0eq0O/x6glFfsoHMrJi/nxatjpcgn8+m56SOnpncCfRsiK4ePhtV0mO6DFaijnos2QoKQb315p2y380hQP5/wav8sOHLrEsxzowFBVbgLb+PSxYU98s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772232894; c=relaxed/simple;
	bh=kvrqBQ0dqAph/x5QFHjjHzmhfcJYoEk6kPCWLk9eRh0=;
	h=To:Subject:From:Message-Id:Date; b=KY6T+yviyZmu7l7rPG7AOqLkq3DkrrLCe388ZL57IM06deuxskvjuXcghKdYlsz0iuYyc8jD4UPTmLpBJIfbHXiKDPw0kEal1lPbQdf/dGwiCiR2OTHezden+S6BAdEMUmK57u8/BDEoRJ+lq1N5aDi/wkwo1mAUSvf4X1m47vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8c+McnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8c+McnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB89FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772232893;
	bh=kvrqBQ0dqAph/x5QFHjjHzmhfcJYoEk6kPCWLk9eRh0=;
	h=To:Subject:From:Date:From;
	b=M8c+McnOGKlUHxtBLBBGOKnMckjGNp24PsK7eEJWMAJXYZD/WTCL6txD70OxMbW47
	 me0DeqJ8jcrtJeWEAXQG0p1v7VSsVF5uBbXZ8gdCg+NtPTlSZARl2OxEtmRznIXCGu
	 0ygFyaL1m9ysGXePx/DWGaisb7HLF/e4NFqrKgTqJc599AAn0Yb41fcfpWfsL1C0mT
	 LqV9F+5Kq7LT0Jh+krBbiQcJlJ1LVATSOLaoj2IU0UtIXFEfFaCBZj8CFausfcNrhx
	 U5E22yXNGAqJ0Gq0XzvVUL+/qNJpwgsKR34M1woWB+wcXbX8Jd3LS2SxX4PIKTVTti
	 9xj30GkEbieQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98104104891E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223289358.17976.7775296828123588579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e616e7034423fee2631bd03ce1eb568079bbd5d4d12c6f47ca7af7ff263176
Date: Fri, 27 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772232893
