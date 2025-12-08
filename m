Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1746B19E99F
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765166574; cv=none; b=ORTo5WGUvkrXmCRIMRptaYLzC9YLPyxhZ9GWmBTWgnyEtp06jwnQ4q1u2u+h73C7J7i60lNueVI9/Lb/f/m26qGvq42+1/BxjCwAXePPxCiI/tuzPK36HFAf9Ygdf7oCmKts57k4DUSju8sWrfv5ZCrZ6CmB7wZXaAgEuPx84sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765166574; c=relaxed/simple;
	bh=AZTnc4bWkJCwEF+1GZdo7PADKOTj92HybhGysl4m3Y4=;
	h=To:Subject:From:Message-Id:Date; b=WukdEk+XBYa1C7r5c0JCtGC6m1i6arNUR7TbS5txR0/XBFc3e/IKDH2Ob2VqJiCuq+uq89iZuNY+QOv+w41nSXp8sHN5lrr00W+TZzwKDsy19yr2yLy+l9Qlnm1AncSP68dJ0ceqvLB1ra30j+0qNq7Njgq9GAee8Cgckk73kHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdrL+r42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdrL+r42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A182BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765166573;
	bh=AZTnc4bWkJCwEF+1GZdo7PADKOTj92HybhGysl4m3Y4=;
	h=To:Subject:From:Date:From;
	b=RdrL+r429vbSLflWmjlsbY3EioYUDaRJISMfJ3rXuzr5R3kMvQeaH3Pnh8f+ncgx8
	 bmsLma8qYMUhZ9l2Hf0TkIIgykqe3bm3dy7VYRgbRXs26zCH3zbNbSTYPVNopGTNWJ
	 iuEjUxLhQR76DLpJfHhF50PJIMLYubmQVzMON60FdWgiOCR+6avLMgj4tKuMYmyarg
	 NPlEcx95emq+E+Yq21GLD8zFphEw2zBvUhaaADg79UAaz9WMkdBud1OqTGgtLgcGzy
	 7M5/iVNV6zwo3gC7nouw4+8ao9P5IVDx5aS+FnoKedjcLsW5TUI39aTT2a2GenPX7m
	 oqyEce3H3lLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFFD3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516657358.3315.3182842704510908585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396857e83071006c2f55666506759cc891b2598d49c9c009ac9927d159f460c6
Date: Mon, 08 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765166573
