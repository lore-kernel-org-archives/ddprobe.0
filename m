Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B39D12B94
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786072834; cv=none; b=RreVFADpWk+1y5HvXqG5j8soBkpzjnEYbtz3aXoN2njG3+P/aIOfpBzA3mxYDkj3jLWM5z0AVZgAXoZx2TRhGvXiR9Zkd4BilDW4jCgv1CLlE7U76HlfSC6+XlNgU3Ne805CGrdL1/XIQyuaO1Kdyac1cAyxGwMISP+o85Mefy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786072834; c=relaxed/simple;
	bh=0ZM9y+GCAHuIxPmhoV2xlXTfkyfKi3PVDGes00HzelQ=;
	h=To:Subject:From:Message-Id:Date; b=LWawo7J2NwBHXBoiIDyLCsWDUIOfOWLNVpCMtWOT2Q2vnOUbjMIvgd3R0exrybDV6Z002VoF/jdCeb1WNtDV5UjxlvfG26TQyXc1JYvc2WAAYkg+bWcsk4sGrQyNiy7eDD43waOkPDsI0x+3jzx6J8dnZSCPFpDvFp3El3C3FFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APXEapRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APXEapRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BC1C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786072833;
	bh=0ZM9y+GCAHuIxPmhoV2xlXTfkyfKi3PVDGes00HzelQ=;
	h=To:Subject:From:Date:From;
	b=APXEapRtkFF62v703UBefn6OXmP6YWfrR6I7znFtKwf5sHZ9NdT34npJaeMybiEXE
	 11JCBkFBxMnZiP/HkZswTStNY73dgjFJJq9ntY3CJ2eTfPc7kD+qBTvtfK7Xi+jt0J
	 p3uGkdcDOkKSq5MX6DtP4FcKqT6qYm5x7huHSVPAZ53uzTPzvd0lNGjdYNw3LJ5uvI
	 UshdlVYdwYMNDcK6Z08HycwJwpcMzhhuOcMjD0O9Q1AqXN+60XI+WoBej0Jp82fzbP
	 Pw03C5ji9Q1iRE/+Rjs8gT7SKj8br4iABcmljMa5wqEWeTfq2EB87S5FztiCy2J3nD
	 5OY6D9Ac+O4kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4FBC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607283369.20670.9790599182478909268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad55d008db8e50771732c62666073021af4ab8a205c15f038112779ad224768
Date: Fri, 07 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786072833
