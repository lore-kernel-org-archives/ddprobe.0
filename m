Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066471C6AF
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718917223; cv=none; b=GFkewdmFhStBQdgS+yy+cwowLqD5w9gerjwphPNgK60tIcVWX72p0ipBe6FmB6a8E8cqCsy90+B16WK3RCnD7CYFnzvKCxJh45Ew16GYVWe2N5woT34rW1ZMamtQ/o4ykyD9Fbm3A5ypMOKr6uweZp3H31npcyfI/nQvVsDnrek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718917223; c=relaxed/simple;
	bh=kzkgm7LDa+0UKiXmHBiXTPDRxeBWHX+kZb2Vaiqk2DI=;
	h=To:Subject:From:Message-Id:Date; b=TLMWfxgqTcWheHw0cG445PJdBWROoUaVjhgYS9KM9aDn1xHG7jlNi9/6DHDU+YZ0o5J8fHZhORinnKzmguU6OhO8oHWexEl0+FyAJIx2D0HsyybOTYb+z31/3+glcgdeDlIYp9Q6nq7xCMIGFWAx45C30LYUS3CQRM0NgqHyuyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loyyIY96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loyyIY96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E58C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718917222;
	bh=kzkgm7LDa+0UKiXmHBiXTPDRxeBWHX+kZb2Vaiqk2DI=;
	h=To:Subject:From:Date:From;
	b=loyyIY96ypgrAuNOxVH9cP5PBP40w7PzCHmMdON3xZqo0EXUvui95dM3tE1XmcZME
	 0qHOu6/SFoT4XLRmTyGrGuMDmrkzYS1k4CL6d101ThP/oAhILRsyPDJNqmVzE3fWoN
	 RUicgVcbbti6n3Sq/SzYvhrkMVafdMTCICxX+ji+9g8Kui3BpwOGVT5rfdftEY5sTV
	 GULGAFOWIWRs6zA/pRkvvrsJsHLb39xJUFJgK7ojbj4SNX80+Q7UhHGiG9kHrgJZWD
	 zwqFY+VMxaeYHK1+jOVPXdM96PFqffcmEm21zWbo13R7oZzBAm5FiGT19N9cEc9tlC
	 OcwwVuto6y0og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAE4C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891722277.26051.4678431998252993923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bf335bf6fc31b68673a6cf26f9516634d6bc47ff86cd19d23def3a834bb0bd
Date: Thu, 20 Jun 2024 21:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718917222
