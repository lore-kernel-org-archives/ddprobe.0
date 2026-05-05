Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154643D1706
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778017054; cv=none; b=i3y8okmuAZCLiehmHbxv7dDz+We2mMI2oEeD9wqkLT0eRIwsv+U8gR/40sOaczHdgeN0Rd++JqT24hDjGdfQnN+mJHbhB0hN+oCQQa7ghDxS5LSLE0n1yKRWPmcQ9RmTgYZieKiOOb2MzzYtHtoK0DQluvs15h4hyPOQzXOaMhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778017054; c=relaxed/simple;
	bh=E+NRUO76Qnn7JAOusDiEe0CcOG4CK4b1u+Xv/BYLC+w=;
	h=To:Subject:From:Message-Id:Date; b=mnG49/pr1fLxSMnG16B1V4/RbHrG8H7zMvlp3Fw6H9gmH/TQcQ6Js0Kf1w3olVPslwsIOYBPhkwHNT5bcBYWpc5yDCGMDZageq40yvYHljBhs4Se2JmLexhVZiO54UgNT/R/e0z+/gEwt+RQOgRh6mwJkmIuNhVVfbulvkjqT2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho9UmTwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho9UmTwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB85DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778017053;
	bh=E+NRUO76Qnn7JAOusDiEe0CcOG4CK4b1u+Xv/BYLC+w=;
	h=To:Subject:From:Date:From;
	b=Ho9UmTwPGmeWBxgb/JEcSnQem5tGUIY7nUPIBBoB5m9DejW5gLRWqz146zfIsBMCZ
	 1fdxNR8BcccozrQ0o1foLoNbzRYufo9tqv454nnsVVq8HagEqAAoHnCfwG3LkITJkO
	 rROYUekfl9VE7HOomcK8S1o4G9dAtjDRX15vmuBEPxdgt7xQlbQmoea/+lOU+X+wtm
	 WhoPImNh/UAl70GSR+zniiG/DxJ1tCpKuVmz1bQnOcVP2xYlUvgT/j4NuMtJYOaDSd
	 BdX+hiGMaluXa+Rv+9Sr28c8tdzfAIcYAhysWUj04rjxFpppPEkXLhahn/xmZkhHxm
	 Edq96yUnpL2lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A47FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801705368.26934.17483501418842079017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43d60ae50a59006dfc8b01c2a43ba452416ffdcc10b5d777eddf6d81fa9abd0
Date: Tue, 05 May 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778017053
