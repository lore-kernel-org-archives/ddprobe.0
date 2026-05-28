Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218C235CB81
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780004554; cv=none; b=oodMJoC4eHqh1AbiYW9mSyKnZ63TnDp29KKRiE/cTf0d4bphr6m9vsgnQvk396r/L6ko59lf+ywO/xsLieSgagusg0x3d29Xu3e1DyiIFQxNg5X8sN7p/2mxVlFnuvwobQt1P81Fv0uE2e6m0IY1Q/nFwPKxQnX0Q8L7YVm/gTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780004554; c=relaxed/simple;
	bh=ri/+Z1QV7lEDKrOarOd/RR1XHIaTJI/sCH65AJWJn5U=;
	h=To:Subject:From:Message-Id:Date; b=g08oevEh7GyR/+thisVRfZpXwNLekNX50eF3F3dyAwjRGarIN1RreXSEYV8psQAIV+Ro/qtaxPJ4DvZQa6LhfyZV03nGdoIG6sxsuqIHrGumF0mTucD1MEsLgzd5NPN/puE1xJ/eW+WlY+cqbGAnuzssDLB60eyiusNk64l6azA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8ThtALg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8ThtALg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB3DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780004553;
	bh=ri/+Z1QV7lEDKrOarOd/RR1XHIaTJI/sCH65AJWJn5U=;
	h=To:Subject:From:Date:From;
	b=J8ThtALg2lDCRX6rQVHtqCthdfxdUt0Z39wZYDM+ZiH0kqpWHXIy4TWFsJJe9xV29
	 235U8K2HyAORMZuaPzNmc/RPlcCffBKD+RqD1t660pAR9Stf2oL5fWw7PrPi0IGpkz
	 YabnxpOEDohPrRJcv/DvHo3oQZob6ftpJa1oG8yGFtevdmcoh8KHFa//MCXDcDwXIj
	 7JHu2H5YjZbkbxIKZgtGjqkaixOmzqmJ/ib7T0UksWrmNXHIaN5a1Go6JQhTdls0dX
	 O8YilSA1AhtXWLaaOD2TfyKj2JV1F7dx+M+pfX15vdDYSb1EOuA2Rhge2T0Io1ae+b
	 +bmcL18brAlVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE64DCD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 21:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000455368.8248.16998460684631354684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba94b429bc4076efb15fabc0668e582c4644bc335909238f59e06d30ce0436f
Date: Thu, 28 May 2026 21:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780004553
