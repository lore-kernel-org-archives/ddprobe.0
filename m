Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0526D1D5162
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734816354; cv=none; b=eNZ3L0hm9ogflrgiULXq1YYhKuDdJ7zJZI/x0mD7fZZw2wZ8QvKxLDuTku0x0yVEIAIoX4d0E9oacCFTcxWm7I8/sn9jhu+hau1DvYp4mEicnBxX6K4Wi3/BY7i3SMXNUVG7APm9WvKTbb0fO7M2bLuUDeKhmoiI5+kRIezgPEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734816354; c=relaxed/simple;
	bh=9jbXUKebH7RYsspcIrrTRyZSCZj1MAge7Gqg0NhpP8c=;
	h=To:Subject:From:Message-Id:Date; b=BRGOos7GZJ5lXHYv37SQOb0XmgNRUAylm3Ew5IdpH5EGrW7CzybYivoFwTT8gSe5gxSpafUsayQIConXGI5rG7KMbTvDS18686mxIaV0aIuaXILE5kMmso6hhdtWIbaLz0XoWTp0TVvtDue4ok2m+m0GEum9KQy23vLq+K4j+uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=De7V/39b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="De7V/39b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76E9C4CED4
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734816353;
	bh=9jbXUKebH7RYsspcIrrTRyZSCZj1MAge7Gqg0NhpP8c=;
	h=To:Subject:From:Date:From;
	b=De7V/39bFNuS+r5yGnOxxB2INsfwbaVKQi7f/nyuLp4tNxtE3Ji5vv+fvlGYnJpgF
	 qMsLl+M0YddM5I6eJtTWzH5BTfr0Vu3IZmobx2OOnXuieAbIteFJw2hBv8HTxnj17m
	 7dzQfx1c81AcEhFWDA8NmjsotPT8Ccytwo+RtL/jwWBOkcCgp8pbTkyCHppMzh1Dgh
	 X2T85nEj3T+IaaQU/P5M/5TtDLAINAaw67PoqAfuiwwEPHi2CkLuLzEUWoA2FFarrj
	 phVyg/sBoCudB2YxsTwe9T+rqnfJC6eYL08T3JmUnzsdrb1c5WXQ8nJpNCsSXh53Op
	 O8v8h8TfUjbSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9843E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173481635366.16430.14962451799671326616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f18f8bd8f9308ab23aab2d378253371c4a8043f9257b3ffedb4130d7cdee69
Date: Sat, 21 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734816353
