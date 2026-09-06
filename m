Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5131D329E5A
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788669634; cv=none; b=jLRAL5Ew38HwowIX8KQmsgV72Kx3lXRcl64v2i6EbzepQISzpzjxLyPSxIdbszPI7TgPtb6xOfMqUuOG6D4pI0zkITbdU1UG1R2YasfXnTVr/gSVrGOnXGrn6TyCtfBCOHaEbE5RgXdef/+XDcTQFmR7RfviEG3/uTmSgVUbGHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788669634; c=relaxed/simple;
	bh=MBX2qTRza91UkYbbOz7TM2kPnQW44qiPIaG/Pqt5hzU=;
	h=To:Subject:From:Message-Id:Date; b=FeayBgxKc/g2aILzYpDiCE88JPBw0P2WzOkDfotbMtlz/h8zbljYybKkmnYCFDYgaLhf5tOuFPuGVZS7F9x2Wslahzb5Pwr1o08PTRbeEnRJkUCNMmItVS45O5f3PBgkYdBu9L3HcJU61WMzLtLdqzUlFLg34rWI45cnNM+hp10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdeDUgmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdeDUgmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAF9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788669633;
	bh=MBX2qTRza91UkYbbOz7TM2kPnQW44qiPIaG/Pqt5hzU=;
	h=To:Subject:From:Date:From;
	b=BdeDUgmTJ5H/MnbJ0t+VAayv9JKGrYJsH+paPj9dm5mlyY20ntTGPuo+wofoDL9WW
	 BmB+O/D20GQTnHeCoezQCbkfA4WfZxAaKbnGtGNTNzEFNR/6YnG/OHcIG/ynG+/z2J
	 rgsyH1z+I+/tT3hArMnW2h4KIxSQD8q/uzU4g3wH1hHbMeA5XcloHhvpZ7HC6Dw7up
	 YB+9H0ZK5o3770my4FMOloVALry03blodmDLPwviZCte+jyfunpjAMvxnsceelJgoH
	 MT70+FuEC3Udbqhapyc+b/7H4EZWcxeGCWJoDqVmtwAKujiY/sOmGrSOwnZzGjwmtI
	 nZoa1WgmZQN/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9055C79F8B
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866963371.11755.10764259054005238912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3c57e488d65012b470f5acc5a3a93e32f041362d5f630b7eb40db184b4521a
Date: Sun, 06 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788669633
