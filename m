Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D8343DEB9
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790088034; cv=none; b=p2cBuaEU8o3v7ZB9rHaBvCkDiSNU/MuvYgoLXuor2CLiDFkokwae2WrfVBphecGwBpYNZ4ALDuLvQ/KLld0cSgDr1gEts53oE33RvJLqOsh1utRabXRanYTGyR54+GeFwT8kRpL/0B/f5Rp5O9tKG6woXSy3Otu3BC2V3A7EBs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790088034; c=relaxed/simple;
	bh=s7jAb8eJrGKVd6EhVgunU8aOxDbpEh8GxMLgJUD3F3Q=;
	h=To:Subject:From:Message-Id:Date; b=J70mASk3RbvXDk4N3JqDJYu8kjOVUZ6lsKXSryr8SN8za0ZZZDGXoP8TRT/fbGXKZakJVTJlKVu5gH2rb2G53qzR1ha4PIcQf0pu3EtkfVsqrRSLC7ibZUgNzBpRlAITmkU6KP7oZkiWvZqPCglZLPMgARPYjI0L5o6FpMNNsMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7z/lW1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7z/lW1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB860C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790088033;
	bh=s7jAb8eJrGKVd6EhVgunU8aOxDbpEh8GxMLgJUD3F3Q=;
	h=To:Subject:From:Date:From;
	b=B7z/lW1jP3+NjC8YqjBzIcZF6mTjGuHmNk5OOjojJISwQpogTjX+PGhxkRU0ggqKn
	 ZAxWeODuBJnkJCh91EIQtRH32tvkcLz4Ca6JobW4Xe8D9KdNru79QHLWbVz3S/u0+2
	 +tD+uPSp5XvJjS97ZsObCkgvjBellfN9e2Dvzpcsl9/pbNVS3X21HbH7tRnJ4JbbeH
	 cw1AgZIK30Voc1M/GDqsp+DPJ3w8PkwyVD54nZZ3N4q9OwwlnUcQinlblhiJKQ5FDY
	 i0lZr64qfiHG5YbvTldzXx84mTvS04INUgP8S9ItWWBHfdJTMpvaJc3klNS6l0Zkro
	 cPtTqWQQXRz4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB60DC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008803375.7873.14893850940176940681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d395d935de81c86e006966b7887bb8f996b2e55bbcd4924685c0934fe28209e
Date: Tue, 22 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790088033
