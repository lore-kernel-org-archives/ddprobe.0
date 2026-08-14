Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE30436BE6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786719634; cv=none; b=pME2FNCjIPRh+SLNBg9IcR0uCLhy8EZghOepn1pSJc+rXTI/DTSelSz36osKWmo2j+u5QDEZ+7bv9TyfMpjxu3lFPjR3xmx9oO1L1G0gnL7J4hswXL2ogVR8hdM1mShwAhJLajGTWahGjNHLdOmgHnl2MBsw5AY1CbDOote1lSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786719634; c=relaxed/simple;
	bh=MEu4BjbsQlFXMvjYd1ywc/J9veaT1vCpCWKlvFu2FDs=;
	h=To:Subject:From:Message-Id:Date; b=ucCKCx85kOA7+wq1nIOHro91DmA0czY0B+FvrBtFrRdUwBoC+WdE0rY5r0F293v2/QQH3dWPki8/Rs3iyZjLx7eClt5oiANh3eeQDUTXdlB9qX6R+PmZObRonDKZjhLhxucyEBByHx+13vNvJhge0ZMCJ4bQdg9aVXj6BAuhSPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBdt95nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBdt95nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB21C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786719633;
	bh=MEu4BjbsQlFXMvjYd1ywc/J9veaT1vCpCWKlvFu2FDs=;
	h=To:Subject:From:Date:From;
	b=MBdt95ndly+ebBJIgr0AKfcqjSSoC9wAjPwRk2CHsdsJmMqTqQnBHWpt4E97m1nHO
	 uD7rzgCpKRHdK+gTwSs3ediluokdP+bby6j2IB0w+qbj/IVpNY1xxxN7tYTMUwSq3T
	 IdzONPv8wk4JSMY0RLmvbbEphTPHxj3Rp2MPVfyPrMZBtv6XlfH68S2dr3VNJDGMcD
	 6q7y4bg+Yd4izV9rShnHILgMGuyx1l5/OCQEdj2ulnCF+Rn47hfoQv0FWFS6RccKMv
	 ZXMxGArsn0cBV+H1L2YuYlEkgRLeLtAqp+0b2Cqfj284pfodqmkax+JS9wCdUxrMHZ
	 Nxf1uTypbRtMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DD6C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671963368.1705.18258560845248718932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9762cf1f2ad839da5058092eca74f3f3c3aa512c9cb1f7b619a4a6f856abaf69
Date: Fri, 14 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786719633
