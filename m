Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0470E3FE1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709999297; cv=none; b=iyPZuMeNKZBL/lIyZDrNQxy4cumKAoTPcJJlk81UEY6AV68aHe9v/cl71dGXhqDe4cmeoHLRpd7HOrIji1JZszi3M1idqwZgxvZazeB1IG59rvyqTNBK+ruWUslSLsqo+59sut73yjQ54z+8weimVrSej4EfHHlFtKVJFMvwBSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709999297; c=relaxed/simple;
	bh=NZwnu8yXgr1CueFyrW83utTjeWuzAyYBEWNxKgdWL80=;
	h=To:Subject:From:Message-Id:Date; b=MtrEpPWNK3iGjEvKFmmEVo3Jol6l1V7ccEimdbJhXQ52si9V9//oeUyMBzFdYkyYyk4zOYEYqGgIBngl/U3+owsRinJfdhk09DwA46eGpsY/JJYtN4+LjFlqlmGZ68ZR4syN1h0dbRV0lDDFz176eZ5NSBxaQl1XY/Gc3uGErbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSq7ruWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSq7ruWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C9CC433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709999296;
	bh=NZwnu8yXgr1CueFyrW83utTjeWuzAyYBEWNxKgdWL80=;
	h=To:Subject:From:Date:From;
	b=TSq7ruWj+fwGB2UjpHRO+i46Bd2cCFdR3D5c7eKOqRddL4ScxKqSDG4UF+UeCEJnu
	 3K/WUQy8WoBjpTt6m9oUmbWI/lIiyZlFLYkLqYt7lJqsdXBkm1ALTn2MajxllIleG1
	 s4vaVCZUEQp5YjzwvaqKSht86K+rttnBZ534pvuP42Aq9cYMKrSABXcdcE0MTUXS12
	 QGshW40SqXo1sLwqCyXr/WanBea1VM+5nTaO59s5t5t0QV0/xiuzCBLoxqsFCo3Sv/
	 6P4kln9jMFqVG3HQEkop9HZXxAbciNvLvdqz6lr3W+OEKcchf4L7eLaVA4oD7fWVg+
	 uhBEcuToNLATw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62007C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170999929637.32158.16020267053037640541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66af0cb72497eb1aba0c73aef2f31504fb4784292c8eede7b4eaf9a400e7f30
Date: Sat, 09 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709999296
