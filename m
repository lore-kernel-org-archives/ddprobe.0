Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6421929E0E9
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763304714; cv=none; b=DDXHCXYpDf7npideNwUmUw8qbUfj0yBYDVFItkK6MhgM6Bj6XLdpigNdy/CAkYpAfMwKErIdovh2DUUnSw2aUqmQo4MtvIg0/Nd/+yxkIWWeJPGAY+Eb69uN3ya0LQ0Dj3TJS1Xh7SREEB4oJB5W5tukujniPqLJ8En+oqksmL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763304714; c=relaxed/simple;
	bh=ywXmRJRkU36TYrK23SlV1YB0Gxpwn9ISbY7fDmYN7Xo=;
	h=To:Subject:From:Message-Id:Date; b=iJONO2smnHhpUnff9yQubu8MdWD0XFxFBAzVP8ojh/+UGO4CfEbgjzmwocbTwRedrDjuo7cle41lEl9yEsjesq0m8Vo+LEbQ7bSJWqa3UIn25ddiAq67SVmvxsJEisacEYIuuNZyMWVELuvZYtcbFkkk3yU+2VBzRBUta0aKfIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5xB1WF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5xB1WF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B63C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763304713;
	bh=ywXmRJRkU36TYrK23SlV1YB0Gxpwn9ISbY7fDmYN7Xo=;
	h=To:Subject:From:Date:From;
	b=Q5xB1WF+dHTAWa2JVyf8eNmhEoejlqorXz/HiIQIpH+Iz26a/NXbWCwTMNRHTFShI
	 DR0B7TrLGvWWQALjtR2OYkzma7Og5pR+Td2f/f9Ccm73aGzjWCQDPklnhMQsdE4iIi
	 kZ8V6IEfPb9TbQQyvxxn44mLGuCv/dPs7zCgOjRKDJthWfS/CQqoX2UJOKEVivQCZU
	 kv+NWTvje0CxzrE/hdmVaOM2pqKxAGlBH4WDMU38BbhFpyuI6O9+YDKM0jo0LTxy2v
	 fBI6MVOrZP5XgxxxXGFGKHByU2xXRy2kDlwaltPQj+akiag9bEV8LF+Jh+TReE9YgT
	 WLzVfcb0Jt3Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCB9CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330471359.22649.14603422906172612979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2ae5104a6b4b24d2d77dbad3334fb7895e6c7d03a41e7b1270cf090503e971
Date: Sun, 16 Nov 2025 14:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763304713
