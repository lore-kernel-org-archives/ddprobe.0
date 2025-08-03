Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188823207
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754228994; cv=none; b=Jng+RtLYqSMEd5iCzSX+rKMwYr+v5R1xmK8t81fvSVQYJaKmxIc0EbjXH6lXc1v+qiXpgDFnZ+YUR26NUrc633h5vrmebfZ0jXLiu6xWnAvxdX8xWv43TNRZlGkVasN+2iw890vEz6VAxVy5yktx5Xc8esi2r5MawMUUho7KPfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754228994; c=relaxed/simple;
	bh=xpEHtlQdMgScm/nAf2ysY9tN7AxXQaNBcm8NPswcbOU=;
	h=To:Subject:From:Message-Id:Date; b=br/JZx+pYehfjOzvewF0kLLwJqloeh369dibvunDF1xy7Wi088BLCuVyJpYJQMBgmhOZJAbO8OubeT0hSJHkB2LN3P14fsfbGnSKyKPV87kGFwinAQFitBqd1b+naQFGd+2+YXap25NvmgEzvm2Jz6oo7xOUOKF6g5zCRHP+5pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/iDBJAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/iDBJAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F81C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754228993;
	bh=xpEHtlQdMgScm/nAf2ysY9tN7AxXQaNBcm8NPswcbOU=;
	h=To:Subject:From:Date:From;
	b=p/iDBJAYnvRSOO7+RFJKFDGxjN86aAzujouU3OI15LzFRphFhYnVMyuXD/cgMEszK
	 5bnnqKy3J3m/2eJ+lJV4lQvv3XEazfZ6P9Q08/QS4CD8UMvWs5gi/z/QsINFI/DWKo
	 exY2RfTjHq2APObqNcdxvr54mOjuWmdlMGSPR93gHelj0T0M4ZrtvipHX/b24MN6R/
	 IcTSHsJJViHcCWnXJ/Wdc81Vxq4xbkX7tDquY8DaocPavjhnLY3FxySMCeSoiImV7C
	 RMGDvRGcH0P9hHAqquxSd7lSWpr+4WhkfA9bGmk3/56ElRu9lChBHQNurzFxQ6eyop
	 OursPsZ7CDUNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD0C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422899357.8524.16012243537438267897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c0f603e139b46fd873d25f35a2060be562b47ae9037d6e760bb5d57f0e3a82a
Date: Sun, 03 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754228993
