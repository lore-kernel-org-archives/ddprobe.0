Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3F9148FE6
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750484394; cv=none; b=tHclGrCMmGufmorrCH3xzxhAgM58SRhy1mMTpyFh1Hx3DoZsjZVjfVQQ/v1TiTotl90LIKM1fxyH5kr5uYcawtSOSVEq3pAI1hjHp0rAxFlt+D0ITRuqHBf2I68lOLrMQN51VrWnAYbg9I6CeZA83GlWwTlCy3SNhB+XjcX6hPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750484394; c=relaxed/simple;
	bh=YxugvhMbv/eaN8gSMXQB4Xg6ckf4m0W8e91wpWWx6/c=;
	h=To:Subject:From:Message-Id:Date; b=oyYNPM+m970JSFkHWJUHnkgd1GiFhaG65ucReLWY9Z6rfTm7Aj+l8WFzkbFX1Qeku5kmP4R+JOkNSf/sgBxiA/Cwy4GTXIYrjatcH7etp3Ne+42WzUR1uqv/18P+FpRkz+PikC2GfKoPjjdiimcyMwHElbsibF/ZuE9Ec+7nx10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcSP8q7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcSP8q7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F332C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750484393;
	bh=YxugvhMbv/eaN8gSMXQB4Xg6ckf4m0W8e91wpWWx6/c=;
	h=To:Subject:From:Date:From;
	b=rcSP8q7en6pUL9AbeTVIWYcQJ63O3GLe262d1S8rkUtcQMATbExXxe/2vXB2kfNV+
	 lXmxAzD0OfU1p1Y3FBXAfEX+RbRwjVLw5rJBbMOEBbltIAH+5+JQgBxvUPg0lFGMGw
	 ieMk7TFsLoszWncM/rxZYZvgz2nwvDNf7yCPuA2007rPeeI8CYAx1Hj3sv+D4OQZ5C
	 HpiHXZIb2c/G8v7ZLJNoFeyXbe/0hEUG7Bjs3Fo9DguocYUcYViirkcsQGDixrUENm
	 BxBRLFmAO0Bk1tXF52jE7+vrgS5+zoeIGLCAuYJJaL/pmaJRCyhzGn7CE1Pb0dcVv6
	 SpikRgBC0iOJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E160C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048439357.14356.1284380046108691769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992531fcd412018cd6b8f8f9a0b1d40c75ec0d198bb297c13acc835c95749a8c
Date: Sat, 21 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750484393
