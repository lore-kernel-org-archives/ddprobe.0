Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDD5433A5
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752937795; cv=none; b=bme7UoqzqYlJ6alLkPd4gmVpSTTu/lL0z4X/Wk4yZ1Uhphh8F4eH2AuZjgRJfZpFJ5aXQaAxOfyVq7jxmrlEO9WanJ4uzeNRurncS8H+HVW7bp1rRbL/KM6ReR4OSxUOTRjTvcjRevvvMxMEQIo6ieYVBqk/wH0vGVkA6K56ARk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752937795; c=relaxed/simple;
	bh=QyXRgF9He4zwZqJQj2P0sOUYoiDxSFcpESRVaOQ/AyU=;
	h=To:Subject:From:Message-Id:Date; b=AKkaDo6gPiJhCjHn56ouFbhF0R3e19DOgbuJxLv+Ws9v/NvPaLbCVtGhPRzrfAChVCuhN4d5B00Yc4rLHWKXkFEYNWD2S3OnOcVWVEBsMr84dC9DOFAyNKR65KrTlQRDHpilyeanE89sn9OZMvxY5EPa5LukR1jjkmXtJB2S+U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROMZd37c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROMZd37c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F88C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752937793;
	bh=QyXRgF9He4zwZqJQj2P0sOUYoiDxSFcpESRVaOQ/AyU=;
	h=To:Subject:From:Date:From;
	b=ROMZd37cLBWqE5KNP+b6mTb2aDYqtsH9RpYA0FqcAy7eCCXYVrs+j0iD6rSgkps+C
	 HV/TS+RBKunqCaplAM0VmI6h6Shm6vzV5cB8q4vNsOjGs2at/s0hoP0zl1xR++DZNi
	 qUjmkQ0n4ef5udCV11luk4NQEAeTFbEBSb2evyKLm8TFPGetIhwjrl5kSz1IoBnR5m
	 a2HADRpd6YWTx+YGsfRKEmftkWuY4lqy7SmEg1Hv3Dalqw0IpgI64bilbK+Rc2gf0w
	 ul/jjGAEL+oN1gNHdwD5o+O9yYC4p+Docor9DObs2inDNsslL6N+yk9UeLOHqFZ+LL
	 vlbEJLSN3i5Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE2C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293779357.16702.921939311623242024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca88b32b842e239a1454524d1b3de186e2e4cba2b72fdc9082d77c61228a7b2
Date: Sat, 19 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752937793
