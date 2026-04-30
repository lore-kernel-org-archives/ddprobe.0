Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76839176FB1
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777549054; cv=none; b=TE0HM5BubI/x1KKC6k5GV3kt709UpZmGQfew2n5RFFSqxcCWm82bMfJM1mCjuppwJtlpDoip7ISBBL5M1qFSALbwEtO63FCiptVhpNC5l2jarOpDK0YwbWDfWHanyfDJlJ6OHCt67STLYyzY3bKZmumkFLnGxmyk2lO58X0IEtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777549054; c=relaxed/simple;
	bh=PYdXpwdsEQ8gEpBIaUoj5+0ifF7J/9Y7srWuQMvC/Eg=;
	h=To:Subject:From:Message-Id:Date; b=j77Rai47MDKbceIT+S+3txXsgw/60o/CmuvA4xbSLMba/mCGN6rgk2DTiksf5CSw0hVGmNaWjsx1ybnQ8VX8Qtp4VONaA8A8HXlGAFnfXELoUSQasxuqRiBLwxahwdWoKvDblOYiOhbB5E+S2JMwSeGhcyw3xxDyowuBgpztsyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pY/sm48T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pY/sm48T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BEEC2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777549053;
	bh=PYdXpwdsEQ8gEpBIaUoj5+0ifF7J/9Y7srWuQMvC/Eg=;
	h=To:Subject:From:Date:From;
	b=pY/sm48Tbj4qlhdfqIKD/M5oE7EVPgk2VuecMSrgHSPjx02rx9HXNm9px/iopag8w
	 rGHPDLgCEDqLPJu5+7zn7OC9qTgjv8ai3RgUaXf+ZkV92xprrpg2hBJlgVCGSJh1hE
	 UfeOBqX4nueliQCs6LthVo+laLSw49dyT/Ya/M8yxQCYXz3vkrdTuFR612J3+vEu0Z
	 24125egXKHZbGbulbUad5IZhAAShIrF3Hq2L7+XE6/HjIIR7vKrJ+spuefy70qzuma
	 d0+Lp3NdStO4u0sU9kp8UUW3KJyy2VpGCao8G6C1TQjeSsfqfGs7DZocowtKUw913a
	 QGokLdgU951qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4E3FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754905368.32388.4327490125413950594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e33af2a4ddfacd3d1d6bf0ebf32519922d186e29ecfbc351525c5ad3e0dd74
Date: Thu, 30 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777549053
