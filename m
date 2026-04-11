Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252291D416C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775948854; cv=none; b=N4lKAiHbJvf/jmxm07F0DrM2lKLdiVO47sN1HS5bHGse/QBf61L0zjG92wQ20GDG1qcQ6ZGVFL+pQ5ZEj/feV7g6Q/rx6+C/1kN6+/BOAECyM0SPjkh27a//A/VJnLPNxcyZ/5f4ej6M1kRnOcmYElbD5RSnr+kz6pUPaJluSlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775948854; c=relaxed/simple;
	bh=Rpz+CShKQ04av85Wzmll8yGwIYmxT26Qn31oaMakllI=;
	h=To:Subject:From:Message-Id:Date; b=fu3e2FYboixu9ClcAMW9bXfCpcx05j3vws9CUlSuGIkGOxaka4k2DUQwXLKYyt/lfIrD+b36KN6guGzdhF5ZKXS8FK5YF6w9zqilBP/B6wKI6hddJZU8YdocGI1c9stlbfuTCcDWQLd/tLtBwDEUfKBWfbFs8Z5DW/oC7Ps0/cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nt57l4l5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nt57l4l5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB3AC116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775948853;
	bh=Rpz+CShKQ04av85Wzmll8yGwIYmxT26Qn31oaMakllI=;
	h=To:Subject:From:Date:From;
	b=nt57l4l5kfVw6BFdvPDsplz6JxoQGK+uF9/C+GReC3DjiNq5Htco92GSBIAduwd2O
	 1lPPcPE1r9lTQ6C5G+7cN0+iamtGzy643f2wmSlGmLTB4eUI5bISNV2LO977cEozTk
	 NvxlOwEE8IUdSV6l24fHsrXcpPnOKnByVzPSRnq0q+FIE+mUEV+6f2ymq3B4ZjTxM2
	 sNhz2xSLdnCkaDZ0RkK0rTssYtgTF253OnU0Zam8D2SFJwzjhbfd8FZqnMcZFBHzEv
	 nQQooqyxA6BRkl0uGE1B3OXS5jcaljYR8MLeMDzScbkrkF6gFVtomN3KBjjeAnluBS
	 Xb7gtHB/g4IZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00BAF3ED6A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594885368.13614.4263390744854202497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3233246eb8f6d32a01e05e22f80be2ad0394cf548d076a37fd9d1714e48067d5
Date: Sat, 11 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775948853
