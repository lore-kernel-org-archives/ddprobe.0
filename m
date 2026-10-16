Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332F03191D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792113034; cv=none; b=NwDKpfqGLTLt986+nqV/plSGqHkmZM5dWzeQ3Wb36lQMSIA4VYHn0TfWRhee/tZp39Kb8AiqnU5T2HS7qXRsN/JmdwgbUuj83SHOD+Z5Tn4oDgANJX7tCMkd6uE9Yj3DdepTwPSoRJ9DfqObd8XReyC1FnHsBScYbkq0xQVHAcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792113034; c=relaxed/simple;
	bh=f9RERin/+n1DQo2BJL8TJSJdGiB16bnlW5G5wH+RL20=;
	h=To:Subject:From:Message-Id:Date; b=jxoKQLygu1Um3RN5tpAEFVWNM+J3iJF/+Xop21/Nw38BL50lPqYuDM3Wzyaboi9badbvu8iLT6OmX9Y1DpFUBOmGlQBql0WNBjXQ2mqL3bfEAp9wF1TUF14FNq97PYdfcwmj7PipWB2I0DXWfw29rbwwtkRAlliL/nfCtQnTVC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/SqERpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/SqERpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA119C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792113033;
	bh=f9RERin/+n1DQo2BJL8TJSJdGiB16bnlW5G5wH+RL20=;
	h=To:Subject:From:Date:From;
	b=i/SqERpCrnSbSk9feLcikspQJX3mMj2ii8Yzgsb8nYsoV2Xj+yTOCfthbIgagaujf
	 9hKA1Mv2Fgp4XByeuhbXpD+X/PpVJ/Oc1seCMU6PR0t1nNUpe+lR8BmCsaL/2ISs/G
	 DbEfaTD6fno376zCj9NsF8rL+eecpF/yWytY/zKxUfubBiU+9XSR77T4hD8o/IDkhX
	 ljYmcMkQ0oZidOFX+IrofKbAG4vqEO3E8Wkhu8dBASsfwGg051YIA/pMI0ccyPKWnQ
	 qlzt1Ne3wJuR7Y4Vyx1aZB+oY2CvFh7WIc/QOeR3zwXDik/tMYRoJlXiJodyT+ykvc
	 uPvWcjOz0DO1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74E0CCA465
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211303373.23636.16024333232020239833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4522da4e090ba69a34d08fb038b2e6594a8231ea68a3fd40104683599b7ae0ee
Date: Fri, 16 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792113033
