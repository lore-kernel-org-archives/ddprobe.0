Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3483D217F2E
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729911954; cv=none; b=GJgRdLw9j6dMSkN3CiaBZ3i6Kp0vCENiBjW98bWUZZHWL3GhmlK8bOMwW4ZuVT0gi/CoRK3s8VdQUg1/m6aDpd/Ix5P3TvgqYLs20u6ExxleYbAnGpGUOk8Tcpbjfp6AL4C37L6tIIg+UQcieco9omFIScbJmHZvQ5Ui/JHzFIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729911954; c=relaxed/simple;
	bh=6ME7EhItYNy0cEXY/QR9eGRC7GV3zrjX2GMrMRaD4gA=;
	h=To:Subject:From:Message-Id:Date; b=mENgLxswe0LvSu6LKCuq8daBKd3jq3ulqz6m3D8QBafjYQptQVLJoEthr0SAfQfpE4jVqH8F2+WAz8l5IBK2zEyu2CR6R8MoHpHnQv5Xb3j/JTik1jDrcdNPXZLyd67ZwsJsUvZQY/pWEut2IpDAnVsd7/HAHVni9lcMaW5aPkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhWWgcDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhWWgcDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA8FC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729911953;
	bh=6ME7EhItYNy0cEXY/QR9eGRC7GV3zrjX2GMrMRaD4gA=;
	h=To:Subject:From:Date:From;
	b=WhWWgcDt3tjFvEsFhiuvJlcmDTVjrufqqiecB7pOnZgZqUK9V+39CGhMttr1yRkoR
	 uumzDgxAeuytYud2niv5dqQ+8t6YO5rQtdcloLk780ayS2yf0BaLsAkOdM2qRt84az
	 60PjCRQCarKCdZqTXHqh/VwxDDG9ykzTEzaF4EwdiKVUI36cl0687gCCruFqfXwsPg
	 oq9AJzW3LSQuevm2VA0x5P6VRhzNrKJ6yHKUilJ0WV5+BjnZhO2bLAPYvrODn/hQSZ
	 kIhjtYSSj/e+q1zgQRRaGRHlkVyti7v/yizz9Q+pO2u4NMvrPwhxrgE3zgjw5kErrx
	 zpi8cmPVGGHmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A68D0C60B
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172991195361.7211.557627464214263930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba1f3568c3672e939b2eb388d883fd22db37a7b91a2146f5d57abef5c3a9bdd
Date: Sat, 26 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729911953
