Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF4F344D88
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782734916; cv=none; b=AA3LvK6NOXVOldLTkScG6NEWUGu0ZwdfZVganjV9Oc8+bRGxsSBjoGPbjc4RZW4HXVKpljUK6vlcXThyhtTkuUuEPKBQmXHnOpfunhWltMVRwKxgdcGkc/FS6FpyreqkolTjVK6HbsyOcYbluBoSYbMxLaX+78bj412SF86o7AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782734916; c=relaxed/simple;
	bh=wDJhrDD4NQkISUcD+Jw8try4WV8WWO0nHzTjGvMDZjw=;
	h=To:Subject:From:Message-Id:Date; b=MOY6SD7/rtq5pmOFXXb5/5J0Qxugf5IkqYKVFIONz4Wlbe1num/6U/6OhzolB/sbjGuFkQhk+fdnS81XUKGfyFwjzOmYo/NjwV+pkSwfDelSYBL0uR7lOX54pSEI5AqGwRWjWHagbu8M8wMld7vH92y7wqtAd1XNtFvsV1K2QDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlZD6rOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlZD6rOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA335C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782734913;
	bh=wDJhrDD4NQkISUcD+Jw8try4WV8WWO0nHzTjGvMDZjw=;
	h=To:Subject:From:Date:From;
	b=GlZD6rOGJEZ++2UnC3Bv8ckI1/vPexw7NLD4M7vjoptPFRB/9mqcYJudGXycoAKU2
	 ZSFFtafwdkLeBz8U6EOLJ3+gBWzEyD1q+AxxKNq96oSn4us2NF67yWF1vwYL/Q2WLn
	 Tm8AWQLrfDtL58oeIdh6zB51qYtwcKWu540UsTZ2utEd7kfZnBgnda1rvSpiC4eHAD
	 OzqLOMNEgjbY8RWSSE4WQa1nMXusRifnz4qJkpTE8aUtXZKace7mmRGCmzJ+RlrSCi
	 kC6xbIzU3LTp4FSx48WIIG+V8hhoWcySiu3sH2/eDB14xIzIJ2Hr0RdOMAluVGRtQr
	 eQUV4vt3VGLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBC6C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273491371.10536.17663100538255737182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc5a570cd70c44b894667974fb84cb544856c87f8ce65cd62663c029fdaab3d
Date: Mon, 29 Jun 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782734913
