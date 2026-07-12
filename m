Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47431372EF7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783841314; cv=none; b=WxpTNGwAMMS8ePh6lRxmxIm2iSkoqJteTjZwmeR8fbY5ip31OygcJvNsxL78axtwOVXoLRlRHph4fV1y40FFTqHmq+Sg17cJVVfL2c59S/Yl6Y9bJV1hVJoCkFJoBrAta7p0w/T2JJuCa13uuyCWqqICLbOshBUgoAhcO13kA1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783841314; c=relaxed/simple;
	bh=Qg/Cr9mzAztl2rfR4GJtfbjM1DnEk+rNLvVMW5tWfJw=;
	h=To:Subject:From:Message-Id:Date; b=f2lfYbmoWq2nbqqgHUzrvmUbfK38GHtRCO2NBilb1CBb/TCbKiOZFpykyJ8tULz12vFlfS4NcTjZQMB15frepok6vDCc84TzfyoUZ8pbH6mc/e/mWFkVDAMP/j9z76aheIM+X8kKTPLgMhNV+crnrLcpDWyeKwmb5S2jXkT0jkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCrIa/V/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCrIa/V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E58C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783841313;
	bh=Qg/Cr9mzAztl2rfR4GJtfbjM1DnEk+rNLvVMW5tWfJw=;
	h=To:Subject:From:Date:From;
	b=vCrIa/V/yPjbN+ZjWIMascQbv1xHXsD7pJSrvgwisdQeqosy5YF6/n0/+SfbKN7YO
	 DZabGHF4ur1hX0LQRkcWbjgWCB6X3NBfbmRatUThe6i887E+3F1HrBOg6rsd/KTUyX
	 shySBr3wyOTVa991FricjeTv20hYZ1KzGLuoiGZML5MhRjW/D9SgaxnSDOpot/WEl1
	 u+bwWWOwvKjiENcppqnFFhhIU25nfsRsEE1J+To1ReSeKef2bfwHTajLDtkwOnFS6F
	 E+50Nvil/bRgKBrnHjxZxjuomBnW4XzxgLIWwE2KmN6OTnWKD9e8mO5uDryevWp/P7
	 BHpRIsBrNs7hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A834AC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384131368.32373.11332054741169995188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee102790f5b8a95d57531f79e47a284a245c313413720fa8faf2317aa7476860
Date: Sun, 12 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783841313
