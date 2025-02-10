Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514CF24BCFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739202354; cv=none; b=PGLRVwuWbki7LQYUz6Iqh+slKl0J2O56gk3tvRwy78zBtj886tRjxnYt80xHEVSpkGlNoP6pV/MDcW8lWGczW/iFHjXQ3Pk7eYLEMosBoBbeTOU1y2JFHqtfn/0tWrCHroBENFtEZOdCbHTr7X0ymUrETnHQs3mepCWEiD5rWN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739202354; c=relaxed/simple;
	bh=SlB7lmhPD4La4UNL9uhWyZbXNkWLkVdJ94NLFsgiYXc=;
	h=To:Subject:From:Message-Id:Date; b=OOi83CSYnTjEYiKbBuxKF918q1PC0n80aGUbH2aVs5+X0uTPBeYTGsWUIuSIxXDta5vefBrzptft85pHxh9sD7oqAYgaAUaWuE3b/XIJXHsbF9eIbnS9hWNBPx28QT/cpl8iFmH869s8K6bj8Vv1vtSLK/Knfojt7CVXQOi+nFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkdmgjfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkdmgjfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB30EC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739202353;
	bh=SlB7lmhPD4La4UNL9uhWyZbXNkWLkVdJ94NLFsgiYXc=;
	h=To:Subject:From:Date:From;
	b=gkdmgjfkBn7pF/QiuBgT+Rm9srnRLveIxU4hawIeg1FawpkeLX4l4vd/i7fLHNTik
	 8GebwXo2achCUnZMQlTaHNib2q6SnCPsxNCHvkmjPt8zhfaB2c62KLiBj+fvFcace4
	 /jad3w965c0KR7fOjx9jjt60erB9faFnTGTlJV5iWCN1ZZnKhZpXQ0fcjrHld2xk/W
	 9scdOGIxfDYbCfV9t+ty138uS2V94hmJbW5K83V5raG0URzeF8a1Wgfskw7hKnkitg
	 PIQoFsx1HmlVw2+CG0wpMbIB+MoD9blr+sYZvKpRvrBrU8ubNf8Jh1j6Nxl2GHMoCi
	 0506oHmbvaySA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A416DC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173920235365.4292.18366423652477167978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd440707511feaab63ed25d4a598ea9d3101aa4c2e3f6d5dcdca5b3cc89b7133
Date: Mon, 10 Feb 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739202353
