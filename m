Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4521514EC4C
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714153943; cv=none; b=oi/NJ+9EiKcOknDATVRuZRjTDm0mcEK4uZrfbeCwjHhfNePpuozMzQcBaBTHNsSfgy0G+Q7ARvsjrjge83/KqGHMhimDfXqAlDttV6PY8qggaQ4m7bWF6IC2SwsnQHR6jIIu4znlSbxHJFPBSiK5sr4uRD1iNZGQ947a+hsUPd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714153943; c=relaxed/simple;
	bh=IBUUoYtHxrcgog1OaeU4AxEhpCLhQpmS1V6GY0WYIXY=;
	h=To:Subject:From:Message-Id:Date; b=hyBJXyVoWQIISui3NQoZhsZ9WpdNbPxzpF2PPEI9anY6ywInWE3OTwKALRCqQddjBGdzc4cI4uwJB0qrJKqxU8aBcUcGcBVM06zO74Hd1qsIhsvCXKee52CEfjyVlAKP3Jtg5Jdm3bG0E9oUT5B5N3tv0og55zr+RBJiDhfTFjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAPyfSyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAPyfSyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF321C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714153942;
	bh=IBUUoYtHxrcgog1OaeU4AxEhpCLhQpmS1V6GY0WYIXY=;
	h=To:Subject:From:Date:From;
	b=iAPyfSyU/QNaDg9biTlGrz+/YH7CtpRPcXairoz5CTGbik/sLOVfZKBCdBmo9kEOM
	 JvWrXmNrsQpRK1RifR14s2ataDD0E8ofd8MD5KYUsRV5UvsiBMbGRXMmrzWNjHo2ah
	 wrTJI7XbBGA7s0KFt5dFM4hzQZmWuLudZr5j2E355oimPAYyLUvHZGWe4Rci6dMbsV
	 0e0lgUXxyTv7twe19N3V0yYmynzdbmTCXvVOSCUIX7OBSTUVcmnDp7jQk+6S/CzEIf
	 hGkM+Of/q3AywFOu9ugUHXZgZFxoJ5rQdD4lauhKg5m7aEOhtitmuz6KcBpi6U7ygl
	 i27WrWmfV4dag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C0EC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171415394278.32366.8376327217933836896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d4898790dd2257e4668ad3a930eff712136eaadd56d4fc9e262e5870fe8a4c
Date: Fri, 26 Apr 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714153942
