Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D2D14F11B
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715077343; cv=none; b=liCTAZzm/F64sduR5A5cPz91I7hPGBEq84WPlVZ6BsJHRvUpS3ujH8s0u8G6dlWTxgKOEqVlaOcMABsC0sD4BodmHbindXlLPcb4P4bcoYTGA+N88/3BXXcTNC74CoC3e0RoeXiZP62oW8gERpTHiZx3HTEj3D7tH6ifnfKmQo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715077343; c=relaxed/simple;
	bh=XLl3M7nDbL8LSce40YqTH6aIaxAGy6MC2vWX/KPBFHk=;
	h=To:Subject:From:Message-Id:Date; b=mOEdZkEmSGwa5M+eqJ9PKXev9inxNOYJrXa8iQqn8QfJH4RCk15gwUKdd9otx0H17SVtWrdg4siGsuPq2/sTKkG/BixolnQPLv34z3rPp/Tv2v23aTsB5MdHI70bhDBo+xjsF3ykspATwCU2om9mdUob389i0msACGxFKafvaIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yca7UAxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yca7UAxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84B6C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715077342;
	bh=XLl3M7nDbL8LSce40YqTH6aIaxAGy6MC2vWX/KPBFHk=;
	h=To:Subject:From:Date:From;
	b=Yca7UAxrcFpEaSzfydnHPNTf/w3phVUZ3Ix/u/NAI/t9F8n9BrhnZCQVH3dPs+lLR
	 yMDM/rtKLSWSBWqU3/z6GJrOL13tw8N7X4xNU25DYcQhM0hx0NRaVa+aQjdK16uz1g
	 cEEd3liHVZwvDrImWczsAu2JGOnhD2x9sc7XrHtpZIUiFtVRzshQ7iIviJY/RUU5uj
	 +dw77Yx9hmBxFf5Cn7ySSJ6IRctBPO//aCee8zO184KFv+cI6Zann1kgkEOquICZLV
	 cC7mJMQ9Hq3TuCOdivbmsttsxekELZ6wNsMn6bTtg9PJ2FgStTiiSspC+RJ9/1jtR0
	 njeySTSPLgpUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA554C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507734275.25663.13699817704291007201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2db925f1c955971df9bdee2178a3908a71bb89ab78274e0464bd17be6bbadf
Date: Tue, 07 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715077342
