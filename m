Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D07ECF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736661354; cv=none; b=lHB/vMBDJGdKsmemzZWMne2HhyURB2V2Y2QnLb9GzZiqRbt5NBiPFnNyEsPpj78t3gDgKPYmvCDlURAyuFU8npUflnGVvEbijUW8sEOOwOI9bFGOrd7uKb6W2gPFntDG/hkPTCpeo31B1ry14F3fWx/Z3ixOS5iO4clHYi8qzK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736661354; c=relaxed/simple;
	bh=jLIl0U+PWTJUQpGvgMPZOPLAtTnQ0NSJO01zc84cdS8=;
	h=To:Subject:From:Message-Id:Date; b=ZzqTAEt+hE5lDrGyvtiGV9doEcx8baVHstHlUbuDfVhmOZvqA9/Pw2Sxj+dhsQgoiUZAPTMdDF61EarAa8l37H17KNsowrgrUVJwzIiN0fc+00eht+DWtyB30pptiROuWiuxqcWchAFl2z5Uk3gVYAl4+TMHmc4ejsrsxYATzKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikihSp2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikihSp2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA09C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736661353;
	bh=jLIl0U+PWTJUQpGvgMPZOPLAtTnQ0NSJO01zc84cdS8=;
	h=To:Subject:From:Date:From;
	b=ikihSp2Jxmn6OEOsROSUsWP84SlkbKqm3YhMfxmeOh6FlR2szSHGLSERkrGAT7EpZ
	 iA4a73yQTG/Xomh83WAUD7Bqh+tcayMV+JVYYKVxlaelWuuzxkCnpynQTlwbep49Qb
	 KC/mCEOmXAP4oWfFSVo6CnhSOTQLZoThEOBY5KCMhObGXkxs17CmFDPwmLFqgzLmMf
	 Q2GTRNwpU5cA1oQnVs5G6cM4qLub3jYppMdu6KlyraPeGRR9/Z0hookuyALFz6bU6d
	 UTehi9Xtr/VDaSl70SCvZtZYYH1OjuW2XoVkPCCmBLNFddjMyfAKy4EDbIZRa2VOGJ
	 cQClQpreqdttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F34E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666135359.31103.13233709812652233003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed8b6198665a4a914230241ec7fed417f9ffb1cfa8e4caaedb82723d891655a
Date: Sun, 12 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736661353
