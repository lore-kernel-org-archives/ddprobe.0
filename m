Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71F5390610
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788504034; cv=none; b=iRsqwuSSsxE0+A8hoU7Oi9tPXCJ0PSA5oOUVuEotbaqWT0S2g96mnd6g3KgrKfAncqaj0BGbgyK0nKEmNpyx4mVPW3KTGu63E5fqbRDCwXQ8BDdtgW+C8aWfcgC0s70lZLgXjJSWCNAxfreADSFm2iICzAgegJaEY8FbJFdeS+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788504034; c=relaxed/simple;
	bh=yuNFObvu1JtSoLGObJtdFDcHDO7xiCyyd1IW7lCLblw=;
	h=To:Subject:From:Message-Id:Date; b=ChEp76XChEUXQDNUpm2y8LZln4vKkdZ7maM+FuQUQxp66JMdctuofpVt0MY6kuZirNCDirHKFyI99+2Rv6/myU7SD/QDX96iG50Wvlz/GuyK0+tEC6v8ZW4RFLyXramPg9JRLlmtH1/2wnz/FSldwiweecJbx65EQvEEPxaqQYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmB2bEP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmB2bEP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16EAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788504033;
	bh=yuNFObvu1JtSoLGObJtdFDcHDO7xiCyyd1IW7lCLblw=;
	h=To:Subject:From:Date:From;
	b=AmB2bEP3lJIOvPxL84t/HDL/Zqz8llLAWjCnNbp+sJBtaiBlf/gsQ/3lzESy5E9HH
	 n4Tn1x6/qo32LTfxr6dnapHSm+gMcgpsCfPDLPFI/+sYIBI3zpwf31n+MQqDhEZNtc
	 YefDdIAKvrPtvjNApKDHNL+krDYnWyoO7VgLErxBOUZLVKq3QxCBWvGVDBtvASW6Dq
	 eECOSFBUorcEfcdFnK8XNqbHSPALgrjEGYcmftH8j0dd/ZI6TIk/htOVARIvacbg/h
	 GJmUC6HQRtFxNuudHSfmCOT2gKkXgEo42LKhZUQjvCs/XP56ZyFAf1TvY3ulEW96Hz
	 3A+iomGrxW78g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B98C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850403371.21289.15939400401938072846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c6dc24b12af1db98e0be509594d782e2fa2171ab6bdc6ca1ac4172da911db8
Date: Fri, 04 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788504033
