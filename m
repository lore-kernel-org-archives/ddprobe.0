Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6733112DA
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783954714; cv=none; b=a+JNG1BWoNkbem+imZncTyDisuODIXIVsa3fb1YuE8NiYApNWTStZlUgBHq+q9YEpREzH76sJkH66TTWKiQ7sby1JSmiA832qwny2SI6lbhUkOhCPYVmxJ5Y8tV7TXluFY7jjae3lCNFoqrsQly7B7Sn0jkOLIiZTE5cbIDzLPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783954714; c=relaxed/simple;
	bh=Lk2EhF95Tg0dVc0Y9i1lcOqz+sofV4dFOhGB2txGuJ4=;
	h=To:Subject:From:Message-Id:Date; b=kK2CFZv7y+mI25HWZkekch1pxSmeO0392LRzyIgnueBOzWx4Ufj/pXspoBiXdTMRdxyaJMujKBuXqzhlm41AbYyDI+MBm+5xPd5SzFXRtyGuuy9iN5ItjlW0K93gZ+YGu8rGUhpt/SSgDaKVKJpJg5LSFV/38SrMM77wDXJyOGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9uolvWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9uolvWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF188C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783954713;
	bh=Lk2EhF95Tg0dVc0Y9i1lcOqz+sofV4dFOhGB2txGuJ4=;
	h=To:Subject:From:Date:From;
	b=u9uolvWZfTSrlMiq1+CU5npFjIzmwut+dR8wNUHDIhBCtR5dTnzur3PfIPdBE6F90
	 Ushdr8hlNFu4JFFeZ8v4bBOeckIGmFhKJ4AaVkHqjhGxhSeyq+jzdAuheuOhA4tGyh
	 23slSEDl41/0/5BwzqySjqAK8lL+iGKyzb1XTtmSfjpEMmJCs2IutGHqMI68AhhMAY
	 RdDsVESIDGu/mIq02JNIrdOWPGAqrie2sQ6ZqZiSZBggjaGspDxs0975L45X0/gHX4
	 2SnB0+W3rBgvofyiq0xVwMGk4BP1MRUe4akEwnEHI+mTYkbnp8hUEz+c7czK1Ji5lT
	 kV0WM2iY0/0tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB320C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395471369.16826.2612999057349902716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2a87551795f700ef7517f0cb6e39b783583ca32a0803c73ae2cc17822411aa
Date: Mon, 13 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783954713
