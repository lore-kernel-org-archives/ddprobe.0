Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7081717579
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741919334; cv=none; b=nfRLiHMo15ky7Lg9hCo1Nq/+LKMMshu64XVdGwZYVT46Dd6O2mvv6/rEr0eDVPJVT3u3mqDpFdK2VaOyHAV9urXOqH+gvBG08UF3mDCeaiZIHp7KWVv+HaXxd70Qq3YohwzMn01BA2vXCemXvIGj9kujw7yjk2pK5mhAKwiCOr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741919334; c=relaxed/simple;
	bh=lOBE9yGkxbrNC11SnP+rc/zXYtRyLEGeDDw1yLgQ/fs=;
	h=To:Subject:From:Message-Id:Date; b=t4QyK6qxKwDtPmdVQKCCrZanxankXMfBbKGJfeA5xyrc2QMwgieOcIiCp0L0rk0em6iB0OJ07EZHBhJBeQdpb6uFxNeW/M0CHW31qMwUqupHA7UHruZN5C+PkVSPZqEOEM38x6sg7dTECheVy5lwsHB+tHkUTZHJY/fCGItO/tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuE4Ex4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuE4Ex4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2043C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741919333;
	bh=lOBE9yGkxbrNC11SnP+rc/zXYtRyLEGeDDw1yLgQ/fs=;
	h=To:Subject:From:Date:From;
	b=AuE4Ex4XqMqLliEsOJPr9ylIecOT1bd0Me21lknM64l75FBSgpdp/okseT8IFhi82
	 7e7WhtsYvDeJ2vt/FRkvB3SKANKyaNcurnjBLxTe6XYJfKk7/0FsdIXnkLaz7dxj2g
	 MJ/SGlbM5GFuRvshKnuvkf2cmpiFhTjtbNgPDBVnUQaHa7UwU/Ze6yluWxxjBi6NM7
	 vZ06TB1rM6Bye4NZNoWZU3ZC6RvQbS3J4yjwKtJULPNDiedwVKdgXM0eEVerRi+Hws
	 vCBvlvRp8TWAOLl/VVPN0YteNqRPaJlqd661/S1B6DoPcWXHiNHKs8A24lJ5oiRifh
	 np7Y5WxrB9z8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A800C28B28
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191933362.27327.14355820780577744140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4bad82eb0febe2a6f4812f22cfd4bd494e64e4731afe1e104541d16ec0b07c
Date: Fri, 14 Mar 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741919333
