Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387FB1519A7
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739622534; cv=none; b=Fuh4U16YaMN7jTFEVv30KAVbPqGWRrMIoHngxiqk70oLQkjuXCzwuxPupH9j6T0YOlJ0Xk6lu26eOQye0StChbliJBOv8V9zJr0on4aNOzvs5bQVyeJF8Qv3QlI2IbeiELiETyxNQOuo0VBkYMyiPFajMraSeoq8liIZwr2At0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739622534; c=relaxed/simple;
	bh=MViT2lEEQ1HZLxd1pcO6bDVFhc31hYXzYvjH9Os/9No=;
	h=To:Subject:From:Message-Id:Date; b=SWyAc0L1HtYG20+cblmu+9LZhKMOW/Y4lT9oOjC9fZalPEVqQ3UpCAsp7SMTQHtuzPyzIcGU8QlhTu5sAkW0XBAr/BWstpkeqfFOgLba/dutryeF11up5BXXb8yDu+e9/q70AZZpGJ1N2tkrRVMA7oJPBR1QfvLT7a7Nh6NnjjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFLdSxBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFLdSxBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CD1C4CEE6
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739622533;
	bh=MViT2lEEQ1HZLxd1pcO6bDVFhc31hYXzYvjH9Os/9No=;
	h=To:Subject:From:Date:From;
	b=eFLdSxBlXly8xJT1yJkw4pQ+3hgnNGuscCXOKfUuhY5RaQOANC6B8t0Y3FXAeOrJ/
	 D980zmaDaiuezjcWzXsF93gBaUXnbNcdBQ2Sb4rO9lXFAclauH79OTsNUyveZPqWR7
	 gjNmKB39SMh2tXmIR0TMq8gWSpNIhPArmUdySxCgI7+enbBVS3TCgdh9GJ4wQOpCVB
	 PZjTEElXAruWoTfLqY2y79WWaY31n5CTGKiA9UyvJVttdmZdQ+LN6Vo0PsqaN2/6UJ
	 fcOkMX8PvVH6VzQ894fEwLKFYkXALGwVge935m6s2doz1lOxOvAisij7M5UojcTE7o
	 lvZpcmDsj1WZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCF3C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962253362.11920.16502549243769693351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cdd9142dc9d900da14f3173371c36dbc432e9454704aace54b9d23d0e5a96fb
Date: Sat, 15 Feb 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739622533
