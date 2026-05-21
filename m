Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A08379C4C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779331234; cv=none; b=jB/np/Udjb1zVA9GcRYVS5Hh08MtT13hUH8MBzekc0kYQT2WsSG6+UTfA6eNqFM/EIrTagDpLUhCzqPmX6v6abCrkXPa6bKTinG/tMYCWl6zhgNEkWkeyUbUu2pD8o9DAEJHJ5MA73PpKEfxLL/xOpUw7XZAhLmjKoHzqp+cvpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779331234; c=relaxed/simple;
	bh=m4LaZU8T9cztuO1BX+xWIEtmjdrBi4VnJpPnXTsG/lo=;
	h=To:Subject:From:Message-Id:Date; b=FJT/s69SKZQ1WaWfgVyJ+o45JY6wI26B8Xyl5SSSA4z6jiY0qLdNCmNo+59iqnnHmouHbRaUY9FyVaJhhI+6SLPERfTT9t7tIZtT3ovM7wL0Ifcd9iL20LbAUNxb9nGvxgfHWN/sLYs+D1/lixxkVIVcW/YgXMQnkUnDbvz6Vug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3H0lZnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3H0lZnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD031C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779331233;
	bh=m4LaZU8T9cztuO1BX+xWIEtmjdrBi4VnJpPnXTsG/lo=;
	h=To:Subject:From:Date:From;
	b=b3H0lZnf/C59fLKNUpfGzfsIb3E+fgrQ0rb/J5YiakFn4k01jVd2nyTWbRyIOrj8J
	 En3MHDEY5qEkkMoMDuq0+J5yu/g/leGbG6yChQfBGWJ6a7D65QXdfuSbKf34tDAiE6
	 IakvR+n3xxFshsbPexArEI29JutF52sw72p+mBO7V4ua4nrrWSkCYmqikbejOms3YL
	 u1I8Rji9Hg1VH7/32yJrD8Ff4vcm3Pu4bp6OzMR/u5zU7WLrWu01cVIqaE+mI/E8Mr
	 oPH5ciPbqaaL09RpLu8SSAxpYBoo2J+J2wr2rHc54K4sU78iH2Vjlc3l11WCtBt4MJ
	 41EP+Khj9gm5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28CBCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933123372.15180.17073455510445489551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daed34c2f5115389f779f120202ce50f436687ed7d6e26e7b5fdc6780a661ee1
Date: Thu, 21 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779331233
