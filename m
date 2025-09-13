Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176FC2ECD1D
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757777994; cv=none; b=WEPhGAcbjYOaGDBEMGPUDgL6R/HKoakVRs2c/89tIaoimTlVwoxHloMLRUZWMpJEcQrPMGh0l0aA4L69mEOlMhy6HDtpaYOMwkoINDt0WM+gviCQvBsf+7hkxRU/zyvzi+ZnFvEMlTXARoGvK6t5AIjAO570LMRJHpQKWDKBhSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757777994; c=relaxed/simple;
	bh=VHFRirjTdlsHtY9gohfGGcXMrODXw0bNbX/TZeY9+/M=;
	h=To:Subject:From:Message-Id:Date; b=lBmmG6bh+/HZJisWbdZGwhrJ/DygIiaTiOf3KiXUPgUsgWSTokJgsZphlpN5P1AJimAF8jJtZRjKrZ0jpKAn1RBx+hSkwdZpgoTic40XcEBQdMUiNyw1uqCt0DzOig+SYgSDVsPVf2oQtvIxcosugjtJfHcDwFZZ76mSWxGxz6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3hP1woQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3hP1woQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7726C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757777993;
	bh=VHFRirjTdlsHtY9gohfGGcXMrODXw0bNbX/TZeY9+/M=;
	h=To:Subject:From:Date:From;
	b=Y3hP1woQ2bMW4fDL1j12cBg8m/ujRCh54U9djJdJPpgq2Rq/hUN1WqIiBjfSWNgnN
	 gtOdPqOBRjk+QK60t7mhsC8FihHscjZKcg/qhePQjFdIJCrxjQnUO/jWPJa9P5FEJT
	 YWEFGJ/Umgr+dvmeJoYRZ8XmCYRfzQglDcwU0B8/mkDN6+t7bDBh0q9biq8D9UfV4R
	 b2v6N21MScOD+wVBiixHAb+sJHxJI38wW51MDEEN7969TsF2xKQ1caz+4WXuGgGUY8
	 OxOeEYSwVFJhN5nhe3wle6Udbm3oE1dZFkWHGQyDbxXKBPNA8QtLZpjZUquU+yiouL
	 er3YHLyy3abTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B3CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777799357.8727.3518834820247844824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431a8bfbc2d74b9f04e3ab00adc0547578851a1a8de8286c7f04ed3a9f0884ec
Date: Sat, 13 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757777993
