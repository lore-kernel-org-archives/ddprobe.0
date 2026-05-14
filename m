Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D94E36999F
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778778034; cv=none; b=uJm/0tCTtSjrp/rsH3vCh3bfMaBtJltqnocAruJM9YSMw4DZBJNkvAtzDoRmu3JdjAbqU9d40upJXp8tTscjcyn27w33Qf5XOSZ77w6FVp9fe27Q9DPosXKlaebFwApPA0a+/9izW5pwz/q59xmPK/aWrvNvdwdGHj4LHXl1pd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778778034; c=relaxed/simple;
	bh=6WzqJFVeVo9X9oEDFLzlmSd95b9+WoEdympvpAFU/Gw=;
	h=To:Subject:From:Message-Id:Date; b=sIrGSdvTshc6N8R84z6ql/iR02LvV1IDwVDvEYewhoZFSzercWJB/zHy4qLs0adCxqq6bcSqoOkfm1VEnhGx8J4BQS0uGcha6A/EY2Ujq+mXY4PrOwX2brKDXtnbf1z6vz+/Y7MftICmWGDulp0woUtP6SJ2dxO4Qb43GYGlVac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=se8dKV69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="se8dKV69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88C6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778778033;
	bh=6WzqJFVeVo9X9oEDFLzlmSd95b9+WoEdympvpAFU/Gw=;
	h=To:Subject:From:Date:From;
	b=se8dKV69mF/bUddtsz/5mocsMetEzOtclSKDfvMEUHo5zRVElYXc7YcB1ynLuegbw
	 eI6CbFUXI9exznsnasxUkmT5XSwMIA9eS48ruJCgQw6WVG0Ewj8vq4Xwappia3/b7e
	 t7bGi31NsoNK+jLkkvXTSRyq+S3fz8+YbJW5qXdimNeYBM8CI2J8ojRLfIcJGK4+ZV
	 gk+vtxobtCE0FWI+/fBPPjWtPOrg4W3Gh2Uts1xuzFgVmYAJdJIoRJSwinGG3iBmh1
	 LYoTsZhXb5J7Mt69WwTel7sr5zBH790vAUoYL/vmAADSxel8rVr6BHZpTYQFj4snkb
	 G+0hT/qgdfXXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9835CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877803368.32314.1421963405431797456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0cd351ee28a47ce72f64b28679bf71646ff7e64ffcf0c3197a3c9e13cd8982
Date: Thu, 14 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778778033
