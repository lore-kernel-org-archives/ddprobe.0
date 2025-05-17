Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B962F43
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747505995; cv=none; b=SaqIi3GEaiXyRwF+6Wh9stSkbIeURv18vmbgVL4PQcY0ygNO85/mBkY+mfEOENqNPpoPefvtsR4btQk0i9CyBdkKLYH+v+axo7Ed7Vfu0xhhQ8Ky+5xhB4+Si0sgbNAynZGcReLEqNeLZM5q51c090zt01h8TcavxcEfgemH9Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747505995; c=relaxed/simple;
	bh=wFXMxiGqwfn3Cn+PQFw1k4YJQOHqirQJZ4X/VjFD0vU=;
	h=To:Subject:From:Message-Id:Date; b=hNKphRagM7Z5YYS/iw9KXf5IYrmHkdJ2f38+6nJ3e7+EgPdvKc79VVw2cHf+F7vPt2HpabgzK8zvhH94uolvD/ogas+1wf4ItTnTCvmriDI7toLjPRr1KALxBspKuBy9vIhTP4jRcvQtmMd5msb5zcv3EB96SMOd7kCDrKVRHEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1O/OI5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1O/OI5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E755C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747505993;
	bh=wFXMxiGqwfn3Cn+PQFw1k4YJQOHqirQJZ4X/VjFD0vU=;
	h=To:Subject:From:Date:From;
	b=j1O/OI5gbfQkylXJEXB8WUtJAPNsh+4tz5zq37zM+ja8pzrmLtR5azDDRClgfxVhS
	 gbgsaNK/IcX5T8z4F2nIS7XeJp8vo5PAnvn+EcETR7mwO12cnrK/nkHj0d70x8pR13
	 ozZIMZEzfTB/B4i5dc5eP+SwlHkqFByfSD/Ml9Yb7+hhyurNY0mRSIqW6PB5eUCp7Z
	 EyAblyOeDY0TGkH0vLvOIPB4/FujjrH39VZsQ9cyMRujzwPB/ecI+0duU1mA62zcj7
	 kST6iwjhgjQZEqS/XKRpY2ffUXiNRJ09QCtSrpnZYDfk2qvz/N3uvyPH6UOEjIUSGb
	 Uw3rXqPv8F1cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0C2C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750599357.20815.13227594223658494391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ac3e97bf44a5cc3a32b389b0f535a89a0dbe262f6ac9237d1b71e74aa0c4dd
Date: Sat, 17 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747505993
