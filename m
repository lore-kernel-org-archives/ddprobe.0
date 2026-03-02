Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1525F317161
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458494; cv=none; b=NTaSW4g/ZeyfZe9LF4JL3nTp39v5XiwDMvKdVdpaXvmECebGX/8fFdyOnFEA7PdY7fk6hxWmfVtsY8Ke8tlAA8QLXpmRdjqAfxT0VPru62cmCPpFqq+TkDmSl34J8MKjG6B5FrYcWMc8HQwhy0jRtgyBbl7gIwf33t8Jb7Jy+NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458494; c=relaxed/simple;
	bh=wW0IalJ6Ir/5dpQzB8MrPawczXLoTSV5+CsWZJRSGpI=;
	h=To:Subject:From:Message-Id:Date; b=rhyW8u4qDwPfxmeQBef5L2Y6zVFpVOhxf/mSJwxG6CtYVB32lnBwAeSt3HhHdP9gp1NeGGxSwbRMh7zr20Z6v29wMMEUiR9+mJbabxeJgCHIYiyWz29SdyZ9XR7kijXuo96rjcV7bPwIWdS1DmO3PpfCFgziagnO+D1btRNDJTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCNhrgTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCNhrgTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC700C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772458493;
	bh=wW0IalJ6Ir/5dpQzB8MrPawczXLoTSV5+CsWZJRSGpI=;
	h=To:Subject:From:Date:From;
	b=tCNhrgTVv/zsO7QgqrCV/xSkLGulXBl/uBFhOSxqTNbTStp32KUYEYRGyyW+Ns+KR
	 Qwj6DL1pOaolxKRlneCTNTugVCCPCtNx7mmAlSNMtHzwjc0IAr6P57cNa7rw2VYctp
	 qpUvt2wJKWBkx+XNAZ1qgXnc0CSy7Hu3+wJ8lAZenZJzvwr2FeLqPVCXlAVPN5/O42
	 amHjKeZuzrJhpjBbKBz05rc0ZNNqzIwtHFbaIySRlWTe9rldwWx77R7e3o0v/85ENk
	 UBNdYqPKSbs/K6diLxMOLqyp0WFPF7Y6zUoBwv10VtcPocUAKDJcrgDxpnU4XkfnDS
	 dZHsC3dZGhWcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96872E9B37F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245849360.19375.9881919485705800960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418e878244fae9a8baaa74a880ea0537fdd42ef3cd689d04ad78a6de0e45858a
Date: Mon, 02 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772458493
