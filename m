Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F4F36EAA4
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774793094; cv=none; b=MD7lzsavkTXib70UjKG69mgYKjBKaoYaWZKStRJ8jkrHQRwWn5U9habT7S1eiDvokic8U0B2Qealum5Nwn8xeWKzDle7yq/Qk67NYuqn0XGbuPEMW2mrL1/rISlnSozMUy3UQF3TXmdk47q+HmO5pkisNGg5sJd9GdgL6m4H2rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774793094; c=relaxed/simple;
	bh=K5AgVjd8L+x4xUeS3geGqh4NAm/NnAl4MHQpyjoi7Us=;
	h=To:Subject:From:Message-Id:Date; b=iNV0UeDBaSkgrdZwplpSB2OKiukrY/K4FcFoCG+RUrXsISlLx7DdBrn9VaUS/nrGMoqhP0xgsQp9mMpFOUgJmDQPWrpzyYR2rwplfJFjefV/3BxtkWAzDA9KCDuXcIXn5ZJT8fdNJ6mcJCmcFY8765VRf+lV3GwncZRUYUxBmvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELwQxpMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELwQxpMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE705C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774793093;
	bh=K5AgVjd8L+x4xUeS3geGqh4NAm/NnAl4MHQpyjoi7Us=;
	h=To:Subject:From:Date:From;
	b=ELwQxpMZ/lcftPtqsIeI0Jj7p2vzwr/d2o6OwaxCafZU2L3E7KdqwEWfLa2ohRhdr
	 ay8waSosyznO/3zN3CP3ROAX+LGc05u0h3xGujHGbQcLZ0T2SToUR5tBFa/dScM5U2
	 JgrQYcAu+ChBFam9XgJWI/DD5Qay1OCuSU0yJkR78TItUqme02QT+SmgOxSK8YSyzp
	 vDPH3J4o0NBbrHAyvZGu6HUKRAKHrUdjeieYR4KaFSuq+m3CFzQoN2yHNloCh+fhkr
	 NkTfa6o8PUTKmsrpngBYEcRIAIHG8WPPD+1KnhPZ81ShIyCv/USEAs2ilOip/aVxbp
	 DX3IxjIbAVC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9901AF3D605
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479309361.24077.4770122311938548827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175e3707414d65980772a4c3db1073744bbf99ec733a8f12ce258a1cd850efd5
Date: Sun, 29 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774793093
