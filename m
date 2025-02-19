Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F30BA45
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739924334; cv=none; b=owRA9UqCmwNlccgb4SveJ2UwidvZ/wgHJEadEpRaeEcDlN3wl75qLjMyGLmvr1Xcqtwh/E/KFwngE0hQj1Cp4zMEOjOkOMOGFtV7pecyuic77jDAMB/BI3z4z3cfmWCw50+ZFNkbBAsMngJkpsP3IXiwQEB2NsrxTr7UXZjbmHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739924334; c=relaxed/simple;
	bh=aEgrD2VIJX5sqpG/ICKVvrJusUBcvvSL2M2wvJ8zSw4=;
	h=To:Subject:From:Message-Id:Date; b=Fa5c5KAtyl/Na+Q7f17YANmk83i6vDc1D07TQDGMaQOT4L2gn8+7BOoBHZVPV4eM9d136VC+QXw0BMT+jqwKzu+cQqzZgGhGTXG6fi+/3UJ4kz168imTSakzzVw3feqFg522ophJH+L+ZYHTi635JYmmOnds7o465NSPqCpdEbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nem+4eXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nem+4eXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB63C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739924333;
	bh=aEgrD2VIJX5sqpG/ICKVvrJusUBcvvSL2M2wvJ8zSw4=;
	h=To:Subject:From:Date:From;
	b=nem+4eXjGxgeoa1Zdr5BeXbFAmS0FexXjs155knzW3iydZ/zGUvPX/IS1dDnmxOjq
	 HlCYoUSo6HWjSnwhLZ0fsKsIdiUQ35rtBMjVioPlu+IrCTaYm1lsZa3PoWj0tMwONa
	 3qSQn7rNPnbdWWBfiaBgxVLFTajmt4vSd/G5yFm+1heBCykJiYRkfpzGTzyhxRZt+I
	 fIY97Rcts/00+ASnEbBzqMcHbyUZqaN1B/jz7pEKiGf2JL7BLsBUI7kUApOw9+ZTlb
	 rXSMwh8sIoGLXxixB/FBgLn2m23WwVpLbLQktM3zEXmAwHFDJW7C/BoT8MeNd02W4t
	 G0bHGQuJuvLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9917CC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173992433358.28154.11339283947506386801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2388583a770adb096c28700aba9924122264017d192032a0dde4c8b5efef2c1b
Date: Wed, 19 Feb 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739924333
