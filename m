Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357EDC125
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736039154; cv=none; b=KBZa3SJN4I8cVWYez8nDxkRCJyTXuZ3vNLYeFhEsLJxexD/+K5dGMFiLrfQ4C9+Fn4XcZAR4oQp9kET007yFwLbRgYqeXCbS3W21WKnbXLw88TufpIFqp73NFDD42OEcntrsc4jiZRfNfIlAxmPd5nADpIX3anRT2JW9ThHTYzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736039154; c=relaxed/simple;
	bh=NsBMexYFQ2COKKQTxY0jZrwRWy07bf4e2MZkgMDdD3Q=;
	h=To:Subject:From:Message-Id:Date; b=coGqRmDhkv97B5gy+/Cvl10lgNqOFAVS3ynLwGNWut5GpqTXFst/1By7xLuaCFGhqwMREOAQHJbtFll2nwRazpeKh3pSzuVs2OC1xRgdt8pTkEO+O1h5fwIQ9lCHF5DHK4mz+hYwVqrHZNzrboUsF3EmvjGMqpBMAFhl/enKt+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFPJv710; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFPJv710"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15E6C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736039153;
	bh=NsBMexYFQ2COKKQTxY0jZrwRWy07bf4e2MZkgMDdD3Q=;
	h=To:Subject:From:Date:From;
	b=aFPJv710EedSzV8A44CjIo+s5WQdh02V9BLxwcSRfa8RF4dy1vuH98e2ygKuV1DsN
	 54uTmKFDEiJs83pFD+x6XUxra11s7CoiaszV+ynx0CbFUpzQpQpmOXjzxlatI0CYZF
	 G8/TgvyBWw1jeBYBWL/RtMshCft7D78b2J0Mg+v6Z8gq55aQYErusgokT8v8nN56bD
	 VE5eULYEBj5dJMoLcNKQZb9aWsIBn6Zd9IQu46+NDUUXJ2pGDJz6f4iTzhI3b9vA5S
	 f3Kq1tt9+ZE4v7px+eLnxuCJGGkUe+qU/kxV2ZwmXkRYb3fFXT/x/U0MCuHrojUdm5
	 +a74cYnx4M9mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98961E77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603915359.26984.17242026565057902822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5146af0fd33c2f2834b3db5d006019daa3dd3e27c792b2c0d9ea595b476c57aa
Date: Sun, 05 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736039153
