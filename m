Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DF214884C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769978034; cv=none; b=fIbSxkmjnsevboDg5mFf0o+R2x/62wEdMVg2eiBXEc3YTB5mDIp+kksjTAodmrzQEHIzTq6F31qx1k/htOFUgXYzGtWdzHgZu/4QATpjpBjUTcoE+93EIZ4QTGQ2x84iD4QqKG2CfqrI9KJqujGT4sN5wFh8cdiXnyivbpKKqaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769978034; c=relaxed/simple;
	bh=MXjGXCU1suhPFT85OWpPw4ShbOIhjzoYdUnrjAhGPw0=;
	h=To:Subject:From:Message-Id:Date; b=lYiuGuIVKLJMW6P3yrdCBDIibUSW3musL/watm7DaCqzAfkwF/RC7PqlagLpmZ6gwVQjlx/1dv09JSDgnJpwNfk6WtO20Wput59GSoLufbHQqn0n3xUvDTYgpX7CVtlDfILcIF/8lX3iK391qe12vFdZQGrG0+pBD305lG+2brQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3aUrlsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3aUrlsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2953C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769978033;
	bh=MXjGXCU1suhPFT85OWpPw4ShbOIhjzoYdUnrjAhGPw0=;
	h=To:Subject:From:Date:From;
	b=T3aUrlsnoHAoLl1VNmxzY+yijwqik+680Hd/TLQ9Et428fYMQyM8MjNRFyTnS/uya
	 06WD8EMNp5qQhjH4dVY7vKM+QauWKiVejfnD7Bang0eI5qaadfTSLkzMzoHnoUFObw
	 mZe5g7Pi8jv3Kcp/Uu7mUy9dW645Tj9HTr8KUHx31TtOrbbCNQCfgywmEbcJBGAFUX
	 sq6LW+2K65SywxAhH6ETHrlG52nGEAoRC6knYcIZeMV/ihBGr++sfSARgqPIHAi8nQ
	 TOabn0V1muGakfBcK7pUDxDWVOONkP1zPG8EzWfMFHa6LCvnu/w5zCd1fVbcyUXPYe
	 PKHZ2j9lSZ+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E657E65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997803358.21832.6876179968755255068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed4073eaaf137101cd253bc1c21615e37edebad2e59c1dc782ddbb9088490db
Date: Sun, 01 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769978033
