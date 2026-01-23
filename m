Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0730BB8D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769186634; cv=none; b=IXeMrklfDRvU77HXxV+vTda6mM3gZVy+3YjLYK7oYlAB1SGGb2niwX4oPHB67LjU6qxqRVTMstkw5o4OIYiZCHBBuv7SXx/cSshjY7yK1jatXPWq7gA3pDqxRw4NfH+FhTVN7HXDLReVLBEC9k9mU/+JfLnN/eS6Y6l4N72xMPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769186634; c=relaxed/simple;
	bh=y4QAVakZbdpaFt9pmtihV1c4q+uNOtIxMK2Qonm/p8I=;
	h=To:Subject:From:Message-Id:Date; b=hj8Wue6rShAYK/4YfvdeGPv2WI5SNS7a8F/uYigHmaRzD+e1nkgAZm6LTkpIKCUPlA4CC0BZKM37HB18bf/aGezcpmO1wBhbihA+soj94OcAaRCLEyF+DgGg0OF0p6FFyJum9vgCtfClv0G630/ME5vktlStjRRg1LmTBtMfnH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXxYeKSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXxYeKSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42D7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769186633;
	bh=y4QAVakZbdpaFt9pmtihV1c4q+uNOtIxMK2Qonm/p8I=;
	h=To:Subject:From:Date:From;
	b=bXxYeKSOaRm8w/4iPifLk/1BIUqBSSHnWlJPKwi1V7Gv55wWsZw2p22Boy+5lBK8i
	 HMDe9fQ32xvJl5N1oNVbIW+9mgg5TEFpgNuD5paAfnupJc6Wit8ddUZRMS+3VI3azn
	 7hq6cmN1DjVRCJJNzX42dGo0g3LphUoypZr1blLd3UJ+twn+69WYStszPlCsaWv3Ix
	 DkDkbZvz+PzO10N1JH91GQ41mazEgz3waSvLsB+LflsP+0tUbgRjlXuuJMrewFMlbt
	 ksfOspH3fqjtm5OUn42P6Z1ODqBYLGA/u+ChPS3m5RIv3MDQgnRitcZQbVfpJERj7S
	 zBVrJU75qyMjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9555ED77881
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918663357.15252.146357198812601850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca263e2bd6cff83b215bbbbb8b714cf47f21243f72449c3a7fc14323a7c66f3
Date: Fri, 23 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769186633
