Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001B81CD24
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709089097; cv=none; b=J37H6kIGVWgcRbPxj8EMhbKiSPPIixfXNDzcBLsXcefPni3pNE3Kxm+l8LCS38XzWaJW4Hm6zPLZpw86kpw/KkcwUDeuIeHJ7K8t6qiHJ6iOqIy6J/9gfmd70myGIMCT1tCOQYSvB7qSwWarWWUkKgp5Bm3U7B12IT5xXilolj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709089097; c=relaxed/simple;
	bh=OAB8+FKJp63cbEGnmQ4C2BJ2UTSeLC+VAkKgdK0cjkc=;
	h=To:Subject:From:Message-Id:Date; b=MaSQt2UxvnZ4b00CpA/Gn6Q/YAYcAAjCIF6tJdmvAR0tI/fwALEQOSTPPs/y//OBKkpHsfwFsJgSK5zVvtzpAdth72IO1cR+hb7M56XSgh9DrUotVcqg7X7hP6Kv5UGVy5H1BRLmLnXJgOsT9H3JjEcZOrIbrLwVK3vlh7FixDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh04rqFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh04rqFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D631C433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709089096;
	bh=OAB8+FKJp63cbEGnmQ4C2BJ2UTSeLC+VAkKgdK0cjkc=;
	h=To:Subject:From:Date:From;
	b=dh04rqFDTWZL24r2n+A3pCJfMSP3+gy6REPyYEhQqZOkZTBd+f/nYm04tTDbOFuLa
	 9PhvsFnF1kFF6VvDGYwpToZ6geHRhKteUOM5R+k9qqdTi5XysGK4xjiDf6hXfgLV3P
	 V32nc8L7JNNDT2qun2PIv2juAcqthhHgnGiiB1FYl3BYQvv7yWZoa8/k1A7E57MtUj
	 0hNX2llkUNwrMcYdNflUGwdfKm1JDY1Kw8GyQqLeB2q+rTHLst5yzraKMHjiaGmedr
	 hY3wBNWBgHKlHRMvNpLZMgJHW8pEglAuvZft1UcBLpeo0N/ue3xjs8kOQQoZBqgxWo
	 qHoNYDoOnxGZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DBA7C5478C
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170908909640.17307.16926653705377127611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f7a15d97f64bcc2936ae387b6caf95858f6fe3ec39df4864d361533c0f812f
Date: Wed, 28 Feb 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709089096
