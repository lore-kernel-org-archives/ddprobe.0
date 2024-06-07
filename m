Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628351CA85
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717753043; cv=none; b=HSv2q6v8SLCdhQWXC2ik1JWsdG6QO7Ie3SEs6kFYS2h+sdpIPsbfDc7Vg8UQCFsh+k/QRpUt5Ea0BDV29njEi9YxNzAjaUFV+zwKurydjy2hUy/sTQB0Dt82l6DE/9/cnoD873paFEgziJUrRicg1fcdSlyMugEXrUAx1H9qUwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717753043; c=relaxed/simple;
	bh=3CG4QnrsSDzmJkHE50AkLdrsryKLHiQm/9mxRqElBOA=;
	h=To:Subject:From:Message-Id:Date; b=i+yg/DI0Ct3ejVqu4qVphXreeLyMqyHDFDuPpqD/PjvRkBtEDIu9ljEWMns+49J7Exb+G/Y0J65yTRP4WubobX5SzDeyF6aEF/OzpkoKSLaBdWkJXor24NlJh9QgifhHqwA6E07tlYXY7yh6ks99ycZAeNGI1W99/gk1/0uqQho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PERa5vz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PERa5vz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F04E9C32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717753043;
	bh=3CG4QnrsSDzmJkHE50AkLdrsryKLHiQm/9mxRqElBOA=;
	h=To:Subject:From:Date:From;
	b=PERa5vz/pnowKLvATvF/Uyi20vulqmn7xaVmsOSg56hCVQizdSGulSs4YzpMTs1Zv
	 RCkTwFo/XMeVO0BM7/P9vqCDtcUus7l5VeDQBBoAdWVSclbCes38MGDTNlFlTyJ4lH
	 84uPZsjvus2XK4lPTnUiAbh/T8zcGQGb8ymB0zCHAjTyvVH5SOJBS0eQsSuWFCT4UJ
	 yvnd1Kue/feyd145u5BAzYsAEQuHAj30n8BsyA1x/Av5vuEDpuOxQsS5US7pMp03rh
	 VnsMdFtT8sZpt5rTDVkS9DVMce3Y0De1moeTTdrwD3qJan8DpZRQTtQmNBCOlSEsPz
	 dWABoBbbq0ScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D14DEC27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775304284.5719.11905175536956501658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94025bcbed4b1a341b158c842683919ce79444a9b1850b62e90668da93c59b20
Date: Fri, 07 Jun 2024 09:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717753042
