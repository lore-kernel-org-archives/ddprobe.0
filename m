Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E03434E21
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784225314; cv=none; b=Xj59gpZSx6ynKGaF10WjvorB4VWNEl6WvNCZ5psrFEhmiCxzi6cKz8MuJVsbKIdXCTw7intCkiwY8KhMMcCQTeGwGI/mTzO3xlMee/gasdOCTYJOwEtT5KDRkUxBMxcoD4pvYnYEPQdjzrJU2nNsAqXt+85XGb66JZBUFMqE9EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784225314; c=relaxed/simple;
	bh=eqnqu7Gtuo78mCRcNXytKVBSa5fn+evo6Uxmniy+P1o=;
	h=To:Subject:From:Message-Id:Date; b=kdGGHzGPDHKBJQQ4XLHDC0qOUPNGGq7ZTMqpgK3okGpeVd86aXUHVI4TzMb2k+36yqQ89NBm1Z3NichdS8ypXwUZKpX9th30vA/ujKztrU1sTT9E3uZ63CPzuU5+/O8rxmrqIzo+L0zPmdeugzGzloyAJJXBouIYpkMKaNQ2d7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSV+duvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSV+duvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51D8C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784225313;
	bh=eqnqu7Gtuo78mCRcNXytKVBSa5fn+evo6Uxmniy+P1o=;
	h=To:Subject:From:Date:From;
	b=NSV+duvgFbxkoPrrfqexZ2eoKzA/K2V8RaGozDeeerimaJnL7kxI5wBuyMm0XJ7EQ
	 MXQqCNZuZJN/J86tmB/bVO7CnZhGbllNJdcCT7nrtbflPGVrXVA7jjlo027A609MUB
	 Ac6HtQJ8rg1o6ZDWdLhPBYKXZXVcQtlsaqH5N3g6DJrCCgKVPIhpMbOqYFL0kI2Cgy
	 hvG4QYzVK9J5PRkvtr+g1uqD3+sbqTpwAigHwzcOW2vkWydBW5mFqCgdUMw8YaeDtA
	 0Fcm0uFjco5u6UTrBpcyiYvGzA/fADU37lbQoGxDWo+7ADG6ZqI6zWIyjqRkxs7F4r
	 I6Ce48GGEVwYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02E6C44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422531371.3317.12882618290536879015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0d68329f999fe938171ec7cb8be58b0f9e07825e7968be718ee0423f1b581e
Date: Thu, 16 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784225313
