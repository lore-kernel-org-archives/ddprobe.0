Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B29A92EEE93
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789700434; cv=none; b=VMNbjK7N3Q610lFDtLPvX/JiMv8oT+wG02Rt8eRNN/bs3UNvH3052byyjAvBTIDzTmha9jnp8r23UXXoumVbSpD1HZaXlMpKfzFvWTVoTFX1+DouKHineetFHr+KswejjFNgic9PBpr75bRBpJbmHngLx3uUF9sc0sriyelpLx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789700434; c=relaxed/simple;
	bh=U+HG0VPUNhcONguccZDvxXGiM13UANJqJARIitB1Pnw=;
	h=To:Subject:From:Message-Id:Date; b=HspuYZ/UdihflfWGqTVTkXA+FDIENQIpDzqkEbbuJ9EiWvfRLsoqgkvbhkMdQEBWRm8w/AtPSpWW6dZlbv3wDjHRewrVKfdNmb4+uIs74rSERRZ/Tmc7pJcVN20ij0mTPmFv6ei+LBRnJsIapZui4yUDhWJOUo7dRS7GWZMvFrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhwFynET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhwFynET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B9FC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789700433;
	bh=U+HG0VPUNhcONguccZDvxXGiM13UANJqJARIitB1Pnw=;
	h=To:Subject:From:Date:From;
	b=NhwFynETyec45eT0TzUdMSV27h67WvhBAB7uKJzkyPnsdc7s9t6+W/GhW7hcCcq07
	 iNmb7ayLHKeZOBuwnVJSAqWlB2xxBL9fgBVecr3/WNctqG4BArjhgncGpqmyOwMIQK
	 onYaoXtXL40hYaUsnJK7mcZXAXrWJerrtJCynz4uwzgyffgDkk9AcmRsNhLHRupy0c
	 ocCmVocJE/Jj4BqSjDJA7cMGF9RB7W8YEMKWg1aLjkQFjbumVOS6cJeyS1WX4FVEcO
	 YGrJJBg3Dvenl0DxImyNaUqZzWTTn6jb9RZfZZwUIztFaAJhoRl1GKlj9FrsG6ksir
	 Q9UAWXHSuYWMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42CDC982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970043370.9690.12653974411541756198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03467d8260ab2c80f7dbe45a749af2d65f2151bb98395ee9a9fc19e63d0787e7
Date: Fri, 18 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789700433
