Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6561917D0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748212795; cv=none; b=e4ISyvNFek3SE73u0PKK9J17goXsLEPLu9oOp5jgb46/6aJGoH9FkohWZ0DQ6fbI5UGX9EJDWMIxdBM9NLcrpgruO5/+M77Xk8P/FmnAHBANHkvJR9R6z0t5gwy3Al8ZLtxWvLL7dAiG5/ROPKUhVdhAjn8LW4uryVnoikleb0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748212795; c=relaxed/simple;
	bh=lF0RyEOFuaYX5sbVY7iR/VKImnX76pRiqYLjs8EcmYg=;
	h=To:Subject:From:Message-Id:Date; b=uRP5oiL/zQ8PxibzjeZOcl0/Dv96hT60PLPNHwl9bJaWC9pda6Tw398Ko5Ertp+CbJqnqJWPqiFg/Ba4dvg3RiLG2cIymqlveDB/z+JNMdnWD5w6hs1INA1zADRNVZk25SYCgnpzTSAN+XOr0EPqd4DmI39CYI73DNZvNmNCqUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATQUXVrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATQUXVrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE429C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748212793;
	bh=lF0RyEOFuaYX5sbVY7iR/VKImnX76pRiqYLjs8EcmYg=;
	h=To:Subject:From:Date:From;
	b=ATQUXVrZBtk2hAcPxb21HnGYp8XnRDKHeHH1zFubYPVi5o/ic+6yFSg61YSwkW5rq
	 olkCg0fzr5fpG9eMsl9sgFJ6gaFUdz1b9ABWoYQnODBN+pxMLE+lUJLj06CT6ZNLKo
	 axi7fbhws/1bPwF9vz/4AucJeiyRjG746F9iaJqoYRPduNg/WC4dtmWGwfROpBSEND
	 bBn1SchD6EtSK7q6rv3Lf0kt/vkIu8U4OsXHZOJ84q54V5UsX/xLpTPrqw86983rt9
	 NcrYEchRWBLINpjUsFsC0mPaRL1qowsENijCl+DisbEbr+Y5+/f5OIY5V1fh55wjC9
	 JBd79ly/mbd9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250CC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821279357.10914.14245282426289323446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ec5891b8e71eb7b651a844e6cda3f764e77ba2dfa9e3bee0b39ee8fc49255e
Date: Sun, 25 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748212793
