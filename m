Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD8828D8ED
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767208434; cv=none; b=kU7jQ402TzL2l39o4kdklld+FO+Scm9a39ZvFoXRzP0fx3LDLR4As4RTTm96FMC/8sI4sOvZLj+g4WB7KLY/hMP4vBhFAURPPlrcz0n9ZhhuVQgYWEjHNcsPYVV4W/7pE4jOLxxBaRb6NhyOTi9lKbRo3Ycjf3pJYonbb5FdA2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767208434; c=relaxed/simple;
	bh=unWlYjizhCOTc2UVn9O5STYquvgck9mMO81N2pXy+JU=;
	h=To:Subject:From:Message-Id:Date; b=O08vEB+tazIUBC3xQHThuc4NMiMalJunJQC+j3Q4LLDj9wdB6yt5ZaQcrSA5uSUITOJdKTlag+tgNSC/O5etD3HVlrCZPgDAaqHa+1hCBjuKvGaS+sjJKfe4jj/JbydtQeay3ctXTlrraAZwjvPc89XQNEWEViV95/9pgJnf8gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEHlR+yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEHlR+yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7749C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767208433;
	bh=unWlYjizhCOTc2UVn9O5STYquvgck9mMO81N2pXy+JU=;
	h=To:Subject:From:Date:From;
	b=jEHlR+ykkQz5m0KMPmqDaZbvlMuB7H0/EJEBzJCGjznYnkidYVhvq31PLTh8B1P0C
	 rCUA2gZEKlnSWB8/GgpASI8Wnwqs4+6fcKVpZzNIbrGqFx1K++MeQYGJVELhSf1Zzs
	 DInwDlyw3y6J27iJbvfpGiEprzda13RcAELhErJHWlsbTWwv8TZ8oiFGGzxpeFRpjs
	 DGytI1IspsJrFXa6v1quOXsQF4k9wvwn/VPkeYeXDu9FRJ4xIxQJmIhhhScIkaf/u7
	 O9W8QtwUjkVExx/yQ3FiA5hZcGXA/YPkgso0ksDTq/MxF0sujNK6R2xtEm+nESr/0n
	 BfeNnMd5JDJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5AEE645A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720843357.20727.5629819912570179411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821b12711101383d7d15056f0230a661fc580cfe90c728ed8fe3da08ca169bc1
Date: Wed, 31 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767208433
