Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177B425F994
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772502294; cv=none; b=M7mcgCXmByp2ljLCKYB8G3tVucBP+RecQxAXc0t54qXdaSxLoq6xomQ+KbMC+s+V1HuGp+s1KsT+K60T9/hJIIluN7I4uZTR2GlKuJMqQnok+s3OZymjSG+6Q0IR09xNSwpMXR15/Y4Ljv0PTncmqF5EFMg215xJXDHkhdYuvdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772502294; c=relaxed/simple;
	bh=VjeyApOS0eHsXmE5BMyw61jNiPxegIO+NNtR8sXyieQ=;
	h=To:Subject:From:Message-Id:Date; b=CpzVBvdMDFs/yH0/pPqcdYmF7B3Hue05s4dwxpj+0Cl4c1gFYRHu7ZcAgmLi772ztyeGeN47sPlfZH9Xi5jaJ+aqk9aOHmk8JYpDwAKZABmIuRjY0qtQ2kiNavtXqwAQsvGLfnytDg1p0WvoUt+TGhwzaMGtEZxzpjaANhjvLSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mN5l5aLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mN5l5aLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9C7C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772502293;
	bh=VjeyApOS0eHsXmE5BMyw61jNiPxegIO+NNtR8sXyieQ=;
	h=To:Subject:From:Date:From;
	b=mN5l5aLiLzHVdRLT17Rf0sLgIHtv8L6Yai/hnLPXsyYDWuSmlHFi24rtfnpOLL2Vc
	 WDccfVB52sCrhpsg3o/Qqn/TzLY9n0Brdgrrl9taOj1CV2goG3pt/2rsYG+Jy51E5B
	 3SnnDqgfpGYDRBvWd9wpJo4WxYg/kysCSF9bQjqvADvm3wLRKbVrPLh2aaUKrB6btG
	 rs0M02YgC2tGInqMZ8C0pDf8gfqUnojlhZOO7xEHYUgjLLr/2a9pwPqdEZh4Z4Hs73
	 wnz/y85+xVxpciCVkvTSSD5LxPkWpGyTG4Hf0dz9yHdWDCVaR1XUYmQDcymzDEXINT
	 xhlEiaUwH7EiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B72CEB3649
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250229362.15436.13966495478004062444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfbb05c8b6083f89356e09954e5dcb4e2db7154914da3b3f4056090dd2655d9
Date: Tue, 03 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772502293
