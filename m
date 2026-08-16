Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403BC213254
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786897834; cv=none; b=I8JqztpQ9pLsHL4VjWSM9FESw/rxKWrCyINdHEbb/xL9o3XX0oABr9f6ezzjJafvIcFrfLXA1uojk04BJz51brEf1vGGbdpFrRbWyQTHQE5gxpqUV1Sf3KfnhVNwEiN3g1xGcZQ89TTik3uyvpYX6/ILiYcRGloAoUvSF+e4fiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786897834; c=relaxed/simple;
	bh=LDK82CoGiiY4Afj2kdAqJARTdggZS/KXNKDnj5c8IcI=;
	h=To:Subject:From:Message-Id:Date; b=ty9ifUQHvqHPeq7OvHQ6cMcsEg3oNxha+nFIANOOUB2zajPTBpsF7UTMtJv1lpDvILTSeQHkpynjWPoFL/6+FewKVOVl/V/Lhg/vW4VKtuwWGmAZjxvfXmiOAooUoan40rk8z3pPNEhVDwREH616BmYR9SVndKQFE2SbpR200Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiLQsQXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiLQsQXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE382C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786897833;
	bh=LDK82CoGiiY4Afj2kdAqJARTdggZS/KXNKDnj5c8IcI=;
	h=To:Subject:From:Date:From;
	b=YiLQsQXzzLhpTFGbN28+RdGHxCczCOl1/s8NgUHENc12yycwEip/+kmLFUOu2VGH7
	 s22se2UWqY56/NkiMKzih4pn03TOVv9pMRevf9scSg/Wuey3dXF7NPc9I9JF3YL2nc
	 9K3OEUJKnrr0/pRnxcCxZshgqRujU+aQ/3eWtUd5FfviVf41g26jQvcTBd9vHMSOw7
	 vNrDURsoRQZ8YucRlEo7KUvlc9wRdQon2LxRtwHzXqToysbK3Bwa0DMH4f4ZAHkKQF
	 NUfZxosGMpbzuXyj1XhxIOJjaxiVa5r9Wa0KJXdUz+WOi5/esC84enVihEoidAcbhF
	 wMlUgHA24iJtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F4C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689783369.16746.10816764362892833427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9db0f73c70c403e03dff1acbfb713b0420211ddb650daf0236cf5b5277174a
Date: Sun, 16 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786897833
