Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0052641FC
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787800834; cv=none; b=sutEhV2CcfVw+PQkw8bl+c1m56B2XfmeDhuGEda/2R4CbxcS4byEbZc/KtjH/YCveJNfIY1TSH7iahWOsoElna9kbXkYdZJu6iizl0PBifwlGLZa8ZvotIyaj8Esj8hPVNW6Iox8ILWd5Wr9bmRZwrBavV6EAv3VifpbSrX9xl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787800834; c=relaxed/simple;
	bh=1vcsxVSnvosZBUs/v1D8PHyD9K8uW6RPX8OIe9NarzM=;
	h=To:Subject:From:Message-Id:Date; b=bdV/nmkeoWRGJgRKHLYdd3oe/TaJdkWVOmcgiKnutaabH1KzXK7HfBb8c6Yn56WsHOivd1KQ4xAfOM85L1o6fcNLhs/NY1Dx5mRVSaBweErWAGQ1T0Ila5uZ02kqsIestETph6aRcrJ9Dri0Hi4mm4iPYYhhcK9Hz53bOMmJImY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW92jvcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW92jvcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CFDC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787800833;
	bh=1vcsxVSnvosZBUs/v1D8PHyD9K8uW6RPX8OIe9NarzM=;
	h=To:Subject:From:Date:From;
	b=uW92jvcGxtq97jsj7RKEGfdiMlW2URlpDZ1dVCUG9A+4NIjySA+OZDZJvdJc1icKe
	 /BorQTYsZ3lynISL0eKnRyW1c1oF0zsktPGSP+aAa02pjQ6UbUviPoWIxU/xoOhYo+
	 SMZdsWUf/K6fMZuH+BgwqK0med7dlW9PWcNPeRue7RApHj62purv1MsArBvdyj/DMk
	 0mFVElBbwkBsE280DsXeOS8J0Nz7MAv2MEnpP00yk0rN+KqIRq/wBMJoxZjtjD6DaS
	 Oaoy3zt/2LxYc8rrj8BsqWWR/OuOPHrU3/OhSOCXDQkmGJD3DV518tIe79hdbITrin
	 nXL2cc7n7YP1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FC9C61DBD
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780083369.16016.17673256066391915419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a3d6c1189767024a2e41e92a33eceb4720c18b62dd9b2aa128e99427054a40
Date: Thu, 27 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787800833
