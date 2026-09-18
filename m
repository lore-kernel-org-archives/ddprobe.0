Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7220341A91C
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789750834; cv=none; b=X7f08P1ThsM3TnJVjs0WJZfRBI86Eb5ybmrWgHpfBzBgMTlBQ+P9IsEnmrmBpxI0cHSO7J3R/I4/sybN9u9cre6/J3vTS6R/6oWsF15yMeylvvDNgnXreF9Qn7H5Jw871MzW2ItQrf9MLgBItlZfmWo3n0NdU44nRJs+T+ynYo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789750834; c=relaxed/simple;
	bh=Wq7n55TtkIOOxWJSd9XSp3JjUEFL0D7W1ZR6H8d1EWA=;
	h=To:Subject:From:Message-Id:Date; b=aJcQCRBBLsO1HW/vWJ8d401+mIsCvIYrSZCbPmFpnlbnex3Cf6k7ZDk9lbpwca/E2CrKu3zWGSeGnUniWiScaQu6E1anZEJYRR47p9dmKHum9614BqxmLxAFDSznUwHeqQeqmZn4W7Y+Lu2W0T2jpqj1ZZYQq7QDvArryNFFUWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UycdT3PA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UycdT3PA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D599AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789750833;
	bh=Wq7n55TtkIOOxWJSd9XSp3JjUEFL0D7W1ZR6H8d1EWA=;
	h=To:Subject:From:Date:From;
	b=UycdT3PAz94Bn6kDcTb7yF1l96S1JJdlW2uhVEn2EfBczySF0QDM69SrgoElBSK+s
	 WEjM/hZ4cckVJMYOl6wKF9Bfj89cgyl3ZAOYmkjE7x4gltgM45Q1Uw1btPL6rGJUzQ
	 t4qz/4tN+ZVo7Hin/vi2PdO34r25nau19fTI3C/H1A1c5pGDv45ZZyl0Tix7gmMZJF
	 0HLFDTJV5qSK9CJEpU3F6+fDuu6e1VOO8OtHPcLHd6rLrqu5O3swFx8godfXc7XWd3
	 xAAfkvNeYqmQ7m4VKaD1F8m4Junhk7N1A8CsqqQ/w3xCJtDdGcqO42jN0ofxKqGMrn
	 WxX98OObFzWdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18C2C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975083371.25002.17813852043670459676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055ff6ff6ea5ebf43b0d02cafda22d8e5b6abe804fc344a9911efafc14c93589
Date: Fri, 18 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789750833
