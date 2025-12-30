Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1353D2E093C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767088434; cv=none; b=P2zyHfqm9P3gkbzrX2RJ+QHZzXXis/5zaoYK877zD7kMgeM9JPd/wpcK4/vjB5WQvB1J66GCYdcYb6hdQRB9q/p2TpH74hy2a3DwDSnMHqe9sUrJtpN8grVCTUG0mIItMSEFsW22IXu9zfuf+wfttmCUqMFzU0ueX4TZcI5tpHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767088434; c=relaxed/simple;
	bh=P6YKDYdUMaodmbgbZMujDBSftaoa0e9gQ/axIN4Om2k=;
	h=To:Subject:From:Message-Id:Date; b=Iq5fPzn2whyzqpTyJO6k5s/g4SGkoF0UTtkgi7A12G/Q4E4SEPYj5I7TRL++9HE2+vx6IkMfhisWOrQu++UxAXPiRMxr478FOo8hvxp/cPWHiPU/D9OufFJv5rg5Jt1D4jTgHCygrqV19lS0mysHOn6ZdW0XhPNH8VYeUoDioVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2xi7KZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2xi7KZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C64AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767088433;
	bh=P6YKDYdUMaodmbgbZMujDBSftaoa0e9gQ/axIN4Om2k=;
	h=To:Subject:From:Date:From;
	b=j2xi7KZqIve4nBqOlRIs2lyQGuRpdf2n251QznQKDttul7q4BCl2xza4EmN7uk+6s
	 D0ePBrbOI3e8gOHnIKv+2TE4jezz8g50ZRxvxdeZmW5LhsXhx/EOlI2hSwv6XrAUon
	 uDTxCIFrZeHZ1vnH41TEKILMWnUwJsSURbaqUqaLsMQtWGVWzTFZd0YQMZOTMdPv19
	 uIGIE+yzizH/vrqhjoynUv5pWXEdp1RGIEkoGVdtP82KCuP+UNpBaGKgatRcpjILIw
	 UM7+gKQE8SNvOvllRxVUL20B6VLMqKLKT/iEJ+0o27Nhs0jL1/uz64K80Oq51/nL/C
	 7hNCIyD75PsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E33FE9413E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708843357.17171.3828585290287637782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee04beb6d7c10a6f7fde3468f463e7990f6c07bec7256fe7ad6ec1221711ec3c
Date: Tue, 30 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767088433
