Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C1BA47ACD4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791798634; cv=none; b=mCU2sRpp6iU4Jr0ixvWngGG+JCxPVfW5VFrcqFzm6EKiYghgHqoyWGqhsKP5ZCk9GxEreEevQ7I5xDHMqTXewq3YDbXRD2oklPgFXTkJ5mVFJAaoS3qvBnve7Lrn/3ZF020jKsELmCMfTk491xc01ONJzKqAJaD9AQNhm+PrAOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791798634; c=relaxed/simple;
	bh=WM177yyC1ZdWq3I2h7mmUyjUnH5clXLvkVMy4H+y0EQ=;
	h=To:Subject:From:Message-Id:Date; b=dvb2BmYCmp4XAdl3qcYaV2feSXUQOo6tQNnTVSJWCiZAwqSe/MZOG35/aP7Sc3cltlQzilMvaja8+G3HRSr5Dj3kvOU07TJGBGxfASz19SZQaURzv7uYFaOP0jeenn+gmN2r7A/I0rqVG0S9PnsoM7upE58sPtJMgbWzbn5CGMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfGgUGeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfGgUGeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB8EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791798633;
	bh=WM177yyC1ZdWq3I2h7mmUyjUnH5clXLvkVMy4H+y0EQ=;
	h=To:Subject:From:Date:From;
	b=rfGgUGePimw6pHaSg1ANrnCg1yGTaPJPeLsY26EtmYR4CAecSesmH/UWaAjcerP1E
	 YTwCcgw68uPGXHX58ulQY2o5r2k5tAXqiXaSTvLrXnMpJU+hf41YEpHM/y7nHu54to
	 hhvw+lOF/FVbXyRqUh31Z5zQcgcCvGTVB/U9gixPWs/7e2y8zOujcdEbRum4Bd8rOT
	 LhwHFoVKMtyQV35qgnEhV9yE7BzPzFf5FNRnPk75VkN24FpDQ+7P8EPszrl8QuBKPD
	 ET41XGUVPIqsizu03YOpeNZYWjDxpoLQ73wkysPmoKnetNm6eqPObMg/eOonEHk1OS
	 iEmIzfjY8lKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0C8CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179863369.26481.185485959755833459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8324b22671cb70122bf50688b385ba5af8a76e3e66195e7c635411ff6048a469
Date: Mon, 12 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791798633
