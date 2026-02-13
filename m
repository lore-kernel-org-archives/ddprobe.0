Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F2A30DEA0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770989094; cv=none; b=mImV9qisUHWmq4UILVH/YgbKVN/mL4x6TKMu11+cizcqIfp2qh9ZQzZAtYs+4Z+Rieurl1u3NXg9YOz2PMpWYgk3VWnkmLqnuCFr55HS935q+wJIJtmtSGhvQGGJIjJEIIRnUgB+/F8PE+A+w2RUY7XizLf3CCAuv+H48Q3Waao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770989094; c=relaxed/simple;
	bh=rdK6hl/rjSLoUo6+sLVpvJaJjeu4UOV56u7MbOpOOfo=;
	h=To:Subject:From:Message-Id:Date; b=XTVRQjHBtm388S2ANDR0fBFi9nHva5C16BUMIiohRisqezKIQqyw2geme8GNJhZ0koNTmd1gjyiP3yzaPx+SVnhLgYUCnkgVrZDTfjWc72G4X8Sh31E35Ht41uKN9cbeuXTvdh4GowarsyD/QZXybDs8Qu2Yzuf/nVPsMl03ILk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG3dGIkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG3dGIkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1569C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770989093;
	bh=rdK6hl/rjSLoUo6+sLVpvJaJjeu4UOV56u7MbOpOOfo=;
	h=To:Subject:From:Date:From;
	b=sG3dGIkVUJa+yl9XNRbhZ3r55UBSiyo+RZMTdPSMjq8eGE5/6t38cAG9EXmECwhD4
	 uqqzejd3tDXfqsSnuVTihV3I2VKlLJeQWhFubd0wLl1cpjsQxd4mo3WgEc+5kzaspw
	 d6YGo8KJaQXVYD+CpWJKAZoWGmIpjNxXfeIiOzfMoYSTYua5CV8Mrn4IBnhgbFZwiH
	 WUOxx2mWlnTwUgyyBkVedUTaLPwIxu/BANmVxZc4PZMfO7ish9XEXFJI0EwMyXUhzJ
	 Zz+S1eEabfBoZemx9YG3bmRstAiP7qhX2Riirew8qnsuJoinliGoscnvdIxYzWVpbK
	 /McOY7WmW87aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A07EDF162
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098909360.11023.17326757231987588072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301ffc0640c108f0ff5c939a4380564bb810fdb471cf6e12e20e638da4d5698a
Date: Fri, 13 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770989093
