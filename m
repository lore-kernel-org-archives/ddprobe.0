Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3323357CEA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789940434; cv=none; b=XXrb1jmUb4SKqnWs0OSAcx+T4Gii5RkcIs8n4eO0J+UwZnqr7u2+R/W8YIl/lgggP2HXw/gDGvLM5Kqv0cofjHStNrkUPYQ3ICSVDl018dJICU9C7/Ntk2WNUaKYlj26KSLHs2HrWTrWUKRTd5zkK5yXGSc2UXnIgk7Nrdw/ESo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789940434; c=relaxed/simple;
	bh=R32qlDrocAqIUYCizKB/GjLeekSQ8LshKEBSsjr3K5E=;
	h=To:Subject:From:Message-Id:Date; b=gSyqcgrVm6C/oFKCLrzAQVKUGLcUZ0S5XFl2tPzdysnsjlhI3pWeGz761A4GTDbbXLIhGR5SkSvk+J02N1taPcfHk+T3RtyDVQc+0pOseG9IZ51xO/EMko9DWtuU1X49+mpKpDrA44Cr2IE3epGnFqa1gzNH4jZ+axr+hDfvLRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbNUIfwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbNUIfwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF07C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789940433;
	bh=R32qlDrocAqIUYCizKB/GjLeekSQ8LshKEBSsjr3K5E=;
	h=To:Subject:From:Date:From;
	b=KbNUIfwBiNKvjDic/Xv4dIc09wFBtXi6XWXwOq9CHivfraadCOVH8Qn49RbPV0IG9
	 zXUN1BNUckwJEKMY/nKnwXt2RdDFB9zUt7shVR82/oflAsbLWjlTlmKUKvz6zPOBSE
	 gzN37FyKt+2pL7L//bZ3rxdvvsaD05rfJWPMypnqiHX2uXipILIwjUQrrAeNNN0PIR
	 j/uP9u6rCrIXu5T+rF9SPdBl9YzCCUbLB1t0k7TJN3cLy63ivsxeMw7Rytgldhuj31
	 +toATSm4cOfdahz5CznZdbPdxCAzPzbiYny7LPKgxaToUQQreutO/5GsUMVfbRPmst
	 wU4SveHUCYYFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA390C982E6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994043368.6303.3765195935182247797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc754867c6373d5414829cb9fb10da06b845fb52ea9ea3cfb001e46146f461c
Date: Sun, 20 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789940433
