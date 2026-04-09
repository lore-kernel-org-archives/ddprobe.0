Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EB03DD532
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775749054; cv=none; b=fmU5l/MP1Pf96wa8/TevkuYIHo3k6w54lH1DoJMlvy4yYV+rC5d5TS/nI5ZW50PeYzzMQlwZmqpOyqEXGKJmFjRpjAVHkSK6b/s9+mm3lxugWDHE3jySBdtBkcLhwIq68j/3W+BTVc4b1JLw/pvqstKXrIVVwLiKVPEwNPkYLtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775749054; c=relaxed/simple;
	bh=4l+886Z7wln3wILajJQLRlZjIQMoLiDLObSYols7JI8=;
	h=To:Subject:From:Message-Id:Date; b=XUV21y+CvvRf29Hv9b6PRjaZS6E1U10L8buWdzbFcImGlyv1ICL/FsT00upC0z6U3fudpSxsJHb+tJG/97c9aHPrg4LUxh7QfV6yn/It8YWW3nSSR98HJDnZKPVOGzNiPppmgzUSEhRqsMYQP835FNSMDzkI3FR6kpYP7vJ4NLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnuZR+AM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnuZR+AM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AA7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775749053;
	bh=4l+886Z7wln3wILajJQLRlZjIQMoLiDLObSYols7JI8=;
	h=To:Subject:From:Date:From;
	b=QnuZR+AMtA3aVh9n0SUGZHgczdszRfbRHpANJmnI4ZaG/5XF19vjAHImGX//wFSll
	 2b9VDB49TT3vyHuHWf39AB455F3X3sB8jh/yAC/OVwMfnRZ8gHdLS9Y9v2jE4WCoOB
	 Zejznzq/Wrlmb7BPGTFZZnxdi+kgSmo65XZkVhIa71c0PY1Nz563qFSihpVQPHxxVV
	 2k2T+xunf5DF5hZ0YtIgGdUTMwHzYcoDOxQ2Rx4TCXr6yvjKA8hx2YPH3IUQlByTOz
	 yu7KNryCfUGoFBhht69UWQJoPkd5jyNxMeZt3bpTo1nv7OdC8Vh4AIfdQ9H8IWeg1R
	 V4dbw68jFy6Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B02F31E3B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574905372.2408.12578603075272849326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5aad8530f778cfb55af16b726f2a5e1d76874c1948aea5594032a28ba6aa23
Date: Thu, 09 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775749053
