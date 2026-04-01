Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287A535DA5B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775080534; cv=none; b=XEetatzDHX3aYV0p9evPOXU1MfL5i/mPp22CT71lo+N0nVKMx05diktYh1+QNwW29zVss02Z6GANBMarPusCJYOu3kH6MBq/3p0chrCPszun5yMqXOl+mk45hqlogSXRRj1pOK8+uPEy5UPgoHLeOFR9lVeXV04NmOuHpcrF+h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775080534; c=relaxed/simple;
	bh=I0Lm3262uozVbe4XuWdO+pp5tzWhN6/Www/pTug/uSI=;
	h=To:Subject:From:Message-Id:Date; b=a/BP6Hf+VjOh86J+BKQlHwM42BAmOpbRvcwmW2rxFjdjxkfJedsiXJz8KZRDfJiNJdVu5pfAZ9LQAZH8KjZrnKgLMOFz/oeOc52jgpbi4NiUJ669ciQIk9GN+/n3xAguP1rt4SsU+q3lJmasvZyn3loKMX7eUvxOeyUDxwy6v0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jReS0Eq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jReS0Eq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D33C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775080533;
	bh=I0Lm3262uozVbe4XuWdO+pp5tzWhN6/Www/pTug/uSI=;
	h=To:Subject:From:Date:From;
	b=jReS0Eq2tBD+OensS5gpfcu78zKwJOORbek7Qzf0mkn9RJlRswWXJbTiok7vrjsRe
	 aqzm6SxFN9ysrneFI+oja1NoCWZZ/73YLLwmtTcLdlrRIQ12WegsDshS+jRC1hzc38
	 aJoPCknLzB/8KtbRmnGpZOQdmfIfsd8XaqXAtwXLiDEeMQ5F68NLhakk1b7MRZyKJk
	 FkuJg7hZWeJwcXCgdPS7irCkl/dpkkpk+bPFiXVFOOQOt+bf4sbZeeY7Ze7sLmOAan
	 BqOGlSUH5rz5hcjhR63svFQoW9f60QinjlB11lGL7EdBBDm2bnkhd5dp5aOKWUHr5K
	 cmeFXKQT953eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC5D10FCAE8
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 21:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508053369.30728.14178440463263905159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6bf68d594e9b39dcf58af954712786f37533835a7a9f79332928ab8b09aaf6
Date: Wed, 01 Apr 2026 21:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775080533
