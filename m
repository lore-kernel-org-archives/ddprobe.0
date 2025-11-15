Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C76224F3
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763233854; cv=none; b=pFOmgAl4etZ6TywS19D8XPQffxOk0Zs9kyRCM2UJftPJQYVJaSzNKyo8aelLVp7m3FfKWemR6vNfHRSt+R5QBi00Th8M+o1T8pbVkqxdA+7SmEW5/SSelqPj21aFr7wFypCxVElyiBdgr2d8ReXX47Lpmtk6r0RiEcMX3ZhbPKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763233854; c=relaxed/simple;
	bh=R5VXM5SkZPGnjVbTCDp8bu0e5HCRWJfcon51CC3XyJ0=;
	h=To:Subject:From:Message-Id:Date; b=mmT1PgR4Q33UMY3BQfvPBcweNx8LDSEMpPl9XksLRSgs1F0QF4w/oH8S/FqOSqQpSY7aBqQynCqXxAe5W+7z5eOkX7Rysu8UepGclQ85LHyZvk+6nsTdd2uH5L0c8u+OLhXcjPbpu1CTwMrProJwU7W8PVXxtzxY6VSDPpli7kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg/++ofS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg/++ofS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A370CC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763233853;
	bh=R5VXM5SkZPGnjVbTCDp8bu0e5HCRWJfcon51CC3XyJ0=;
	h=To:Subject:From:Date:From;
	b=fg/++ofSdF0YnFwyDpc1ea9GGL0qsXSxWwb0LdzMNdSTc/lSXuvhOCmMljJ7iGYUU
	 +g09aAFcPWF3ea1VfuSBtJVrIJ3smqiR6E0Jquq5MgEZe+skqseLDDRZ0WgJJpSf/m
	 fBMXTYRkpqBgkjV+MYw/KiGU5tMxSQZr0zEzX314B6vqJ1oyW2ke64kp7rFsqAIFES
	 65FRYtJ9ITyZ0vX5T+by3nlaB4RmnDDWcCFdVp2qxnB7z+mpk01JSTf+pXJDr82lHp
	 rpRdRGNhkhHSSeEmnIoY+pb16AADgKfNRHyAEey49fGxseXuoPOYZZHA1UYa7Zb1/Z
	 zwc/Rj/PwKvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EFCCEBF72
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323385358.32539.17101315730081463224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9867bd8009f5ea286a41bf0b4166785e2bee765c4dafd7c530a566e8c9cc012c
Date: Sat, 15 Nov 2025 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763233853
