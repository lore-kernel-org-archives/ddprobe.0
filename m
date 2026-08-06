Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBDE32B112
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786033234; cv=none; b=J3AdUqtScNf6bdrlxpZkPkivxWqa1WNIoQjefn8wKXx93EPNCDGr5yETi1iTgAoP3/t0Tegeb84Vc2oONTA/+0Jc3sE/cuKXHWDPWF3yffy/xXCtZkZao0550R4Hfkl/BEtXJ2+6WfaAEyKJC69YgX46v0Fztr14bsQ5/XYJOXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786033234; c=relaxed/simple;
	bh=MoMFuCQA7IfzZ6ZphBtSCpOVrvI5HPFSxuT2MApmhCk=;
	h=To:Subject:From:Message-Id:Date; b=lOyo/wAnaN+41NTr1m3x99A7lBSybumLb93XiC4hvRva9KOFieuVJcpkw6K1r57cVxeJbUZeIq5ZthGmmDa1Z5nDPanXZfW/VLi9VCwJyKLp2FLNkcvdbOqdc6G7NQCyhEsCP6ivm+jPWrlqr6AQcshZ4Y5sStB45aQNkwo7zSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tN4eYFy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tN4eYFy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D832BC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786033233;
	bh=MoMFuCQA7IfzZ6ZphBtSCpOVrvI5HPFSxuT2MApmhCk=;
	h=To:Subject:From:Date:From;
	b=tN4eYFy2DZxVWeSb2CwVAFR+QzVyeJ1VVpmM5AXHPDf3w9QNCQZL/c4W5bYe5tga2
	 1lAyA0Qb0S0LjNOGveNml41D9nG0FtsOtfzpD2Bgl54SXmDAS+1m2kZyhssX2CPtRR
	 PDW0pDudnNz2xtK0UwEQYXkgX+ptnfqmtfN0vjk0hnN4n+mxGnfUfmIoIIsXA4OcUh
	 kG7opH16tb5BO11fhhpd9ND0l1PRgRb4oNettOVVXGHffPe9k4BSpqJjMmY84Qbxg7
	 sBa76WwWu4vziT517CBkS92rKHLw33cUtoe0HJG30hqeRzCZayF9Za0zfBhJrX1Sxw
	 nb6Q4uOHwKEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DECC56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603323371.20622.1918126347999608602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2e3dd089f96a165db4f18ce3d07e1c247d9d12c78cbfda3c989cfc4cfc27ab
Date: Thu, 06 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786033233
