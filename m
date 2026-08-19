Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0FD3E7141
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787181634; cv=none; b=pb+pda4wxfI+xRGrsqg4hmJIpsenkPxqZzhTxVCPd+xZzOKcImuaJWMN74MBQTvn64czKzYB2yniAZlgkOwWCZ1XtHCMeC8QEkok4TA/v32PD/7CO5DouWDzblP9GPDicXZ3B0Wget5G+1+0Sm+e9m+KCOQ9OhUZERuHTgDU+ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787181634; c=relaxed/simple;
	bh=Y3BQaf3gEzv003I/5Ox9cCFfpiB9Gg0pjRw9dToi3Vc=;
	h=To:Subject:From:Message-Id:Date; b=bvQsOIRab1GqHBCub815fIDsdivK8o2HQ/UB5mtn/Ctspfi59sdk9ghrOoTnOQO+VumTHPoDkIVVs25FmaqDvreOOi54mAiL3pOQMjLWNBRLPVRfLgnP3Fr2sdJNw4+iAcWhinD+z4P1/tI2tNKzKXHQ3CH+uYsHaOHpVAh9abI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQXiCo0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQXiCo0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB488C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787181633;
	bh=Y3BQaf3gEzv003I/5Ox9cCFfpiB9Gg0pjRw9dToi3Vc=;
	h=To:Subject:From:Date:From;
	b=JQXiCo0DGzhjHFCD2mUqHCi98CQhsam1arZDDr560KzvM5Qarry951xh1XvfqgjbW
	 su05UKixWSseSc/FKzydQ8QoaQFRZv/kzhVJgKb2orCkq0R0mytR7WDAvGFmyG4hPp
	 zjqxUjkkBUpOh9F+ugtOKBkbCAbQqd2vzgsV6dRcPr7t4kNnH8W/eY7O1Yp1vTR2ey
	 0Aw7sCT+T6Ut7t39kf2pzAds5/zUjEDvLLTxGVVHb3L1Pmz9vlFqQY9wLjhQzy/iSM
	 iDdPEqDO3qmel+4DPGmTIkiIZ9cl6FRuU4iCgLXMH/H4tThBi/LeNPzxUAd+pLwCfh
	 YEh+hF9YeGZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD962C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718163369.30151.15498363459655625801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e458292b2be5255838e9f228e5ea6f5ddb8bb4091af18d85b655010ab7c450
Date: Wed, 19 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787181633
