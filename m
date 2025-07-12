Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1C1199FAC
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752340794; cv=none; b=h5gdRQVGXNgtI4y7NtNeKueGFuzBYZc7J5Pg7Wc2mkHVQBDjylTsFJjRjU4MDbyqc5Icpd/IPSant3HrqkaEFqnoFMz/XgCkQaREylI6MpjiZbzXlZpDAMqjhygkQqQy6+fylTaKEbgrc+c42lnrQ3EZHPI9f2v854pggFPebJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752340794; c=relaxed/simple;
	bh=qeDXXx7Y9x/6MdpoSinUVQtABtGNv6Q8fKnTdoIzRIE=;
	h=To:Subject:From:Message-Id:Date; b=EHnbi1LMFJz559mpyWWmYdr2ffRetE7yqBqwI4TVDEFYc1v+jeNlJkzjHjZP6Zf6ZWzxE5Ylkh8EmGdr51Ca4yDVUJAdMVHWlrFZWhpGeKoQK+KTC7DSr6LMab5DalCDtYvSYqP5Eu03lW6SUC+ETAano5wToCCbfFePKRE43xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5NtNSoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5NtNSoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5463C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752340793;
	bh=qeDXXx7Y9x/6MdpoSinUVQtABtGNv6Q8fKnTdoIzRIE=;
	h=To:Subject:From:Date:From;
	b=Z5NtNSoLYY17+zs9sZwpjTc4f7mOB3yvlPl1bbO4et7wBGC4GMNdfKBIq5pvg8Z+0
	 Yro8BT6Ta2tQFWM/6sSUtT9eFfsAhjGvwmjopig8qygBrmRvV5eFSK0x/D3wFFQgMU
	 yU1pGJmdTPTatHmwVM9eiodngBLqevXjjmE+pQq2Cm/tSTmNOjFXFyE7ipD8ot00/w
	 H3GeNHT/d8aifyGZfbReF5VXA3bmZCn2SrSirCgedm+1jteBpS3OyTyxR+yykQeA3m
	 E4H9HxuhgX4EiWg72DTHICawdbz6fCPHp0xUS68CXKVnjI4dBD+6rjEmoymyBSUlYi
	 pS+bEsY/YrX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94514C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234079357.17999.13559625191590607756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d66259fde02c30ec05559c886e86f7e218506d50361a4c7a4c893ce4b1522c0
Date: Sat, 12 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752340793
