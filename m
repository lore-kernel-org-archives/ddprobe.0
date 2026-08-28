Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9625E3DA5C3
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787919635; cv=none; b=YkEjrr1HVmaAH2xK2fbqWQHqAeVpcWtgabAVwBSr4pv3lZIe7gCescAFs4Xy6tEZHjc+wd4Xk667Vt1KgwBMF8KQxqZAeeiGb2u4g3sk7wMHDC0gEmgoahNDjXQS+hlSwYCyr72pb0QzIFYiajrdHcEigFM3dny3HhyKDATeHuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787919635; c=relaxed/simple;
	bh=3nuKXnAj5NdHtgOad+zJl/gQDnWKEWdyJnO0jfsNXqw=;
	h=To:Subject:From:Message-Id:Date; b=o4wa4xv93rDaKlTtLBpMOrMcn8ovhDIU3KhLjvi0LDfcdvNhNHapidOUA7cQlrN0OG2C5kJnYzvAqsryxCnb8QJMOZcDsOvBzUgqwKBB/OXceQIq0QOR2iDStf81kw/2dndUBIipOcjThmXVyrfbj8jHA5luIaCgcaqax/XMJU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcHc4NsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcHc4NsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47FBC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787919633;
	bh=3nuKXnAj5NdHtgOad+zJl/gQDnWKEWdyJnO0jfsNXqw=;
	h=To:Subject:From:Date:From;
	b=YcHc4NsAvMtEUHY5CctQoZA3Pddztkvm9oZHM5/1roUG4wVgyrl1ES+xK6k7yrCOO
	 7NbUKaOWmeExzF0W1X89396/5opLa6G6+JxjD3OHhneKDS+nDURcmAJiCOneQ6rW4K
	 9JaaepaWCKoVl4Hkk3tGFzU6Jy4gDKOjWlEZiFFdf6dt14klnEhUOlyslI+F5W1nyl
	 njmm9wEEdG+hpwR9XJYN1AJ1KiPFwdGU5qDnvG1Ah8ycYTzDE/ZSDE0lBxTaIHnWI1
	 /FZORw+wSXU8hisJY+hk/x7G/5Gg3xiowEd7Q0JtO6ozAOsx7kmUPRPV5XoqCoC2Bc
	 o0s8NQBlc66JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA18C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791963369.16460.13742897226631507178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe2347953b913ff7f7d6d251abcd07b32e15a67d1a0dc5584a08040fa3b69f7
Date: Fri, 28 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787919633
