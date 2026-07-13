Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D4E36F8F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783927714; cv=none; b=nmpek8AncxrWdKFhWfmdc5ugZzca1EMuUXMNFE5AOOQJ+IOYCRL9fp3qbgDmsoV0R4iacByKmbjMNcEIvGyOnSWtx1wRIGH9p4Br/xjuAn1YGwLOq7zToJENK98M6+RSTHvV8QT/Oa7iqVteNEJxfnoEMKKM1L0lWEC5sjZU5rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783927714; c=relaxed/simple;
	bh=tHoPi08f0YAvdXEUwqiMprJwPsNQWsMNQIn40jJjE9s=;
	h=To:Subject:From:Message-Id:Date; b=Ol/UATqKzQsIejX/qUEfqteDrP8L9mp2zj2m75uz6UFlHZuJkOCQPtzsxsIdMzNB4vDOrS4dOG9quM++B4zAVEW5ZMg7Xg6T/yzKFAM+aKuUnfBzHDf2CTZyhBQyePCcOs+sz+YrpU/NAp+9CBH/6sbR304c8/u3UvgJrvJcWXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2KW8BkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2KW8BkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA200C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783927713;
	bh=tHoPi08f0YAvdXEUwqiMprJwPsNQWsMNQIn40jJjE9s=;
	h=To:Subject:From:Date:From;
	b=X2KW8BkIVJDZQIwcHsE5lxeqVi7NCjoCrd3nb3w22OKK7GmTFKBpJ95jT+GlYDcxu
	 1yUxZoEsXmExnvc1Nqw1SObKprU/EkTD/eVn2dsyWqeRFh/Bm3fDN+I7oZPFSLRwDn
	 7kAcf9G6I9zVvE1UEHZYrqOEPSfcoZysRR+mPRpjEtnAURAIn1k/2ZNZZ1Vda3t+Uz
	 //0rURDh6DvLONQifNuyNADvVZrPppulM2ipTWksY4/1butJGbDVU7iWKV/h6OD8uR
	 ICc0oOvykAt0B27YlEFJfgM+AhO/PxMf0ISZKrJ0milDvyaiSg8xntaC/RDmIRqsBM
	 BDJHc2Z4dH07A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BCAC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392771368.26811.11861696838615007495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91032cb96f89dcfa02cb9f0a644a7c5b93a999699330078894d2109b3b464aa6
Date: Mon, 13 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783927713
