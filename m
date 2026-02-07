Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2683E86277
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770422634; cv=none; b=UuS+zSNYQERmJr3KyJSIUIzipEIBEb5+E0BKc+mSU4NRTtxtiqpK7KIz3BwhxVjSxbkSslkBgyYZ+SQs6s3Km34PhG2KbmReFfNTTJ1uZ7pxefFzScNN8E53xZr7H0RbqIkjcldUYkETzjTeoFAq77F45syaBF7gsESWF3wuY2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770422634; c=relaxed/simple;
	bh=SDB0O4xFhXwmPjcvYjNYrTKWEmwOsCqreOqMz8VskNs=;
	h=To:Subject:From:Message-Id:Date; b=PrOjH+5GklmIrQVWw9j5WBSEPNRy7HpXrG/ERznuuwEiVPzJAIqUzqBPLeZ4mF5IRLhwvPyy0P40oFMNaTFp3ISaqC0PevmJFYMtcO6Jxi9NHOEmVDIgg+Dv0drxLEoWrM6Zv8c2edf1+1Y/VRBnpdoOWclkGtBBI10XcIL0Ae0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EED1+zvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EED1+zvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7740C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770422633;
	bh=SDB0O4xFhXwmPjcvYjNYrTKWEmwOsCqreOqMz8VskNs=;
	h=To:Subject:From:Date:From;
	b=EED1+zvPPL3wCX0Edv2z0hCIMWZlvxjEY1bMKYxJQM0kKgASC6XX74qC9KpKWqKI0
	 4twn+ifmAJ+PuBNxdTftwKyMB1Sf8t9iQvK3o7sGzFCszUwz/2ozqL21RM79QAz3D4
	 y6L6kx8BPXe5evfbtlIL4Gf53vBpqAIBW7nBNxm8LDH9pSX4Bi0YWnD3lwk3pCZC77
	 3GtoUdVje0m7kVOfcLyIXCNpvGp4xys4eUIBCD0y2fQnoGfhg340ETh4sZkKTO9CLX
	 pQrLDmUHkp2MUUqnxjPmoeVWWLN860CI53I1mO4lltdtZVlw8p9usqD5RxgSo4Dhme
	 b7DXKVs1HUqzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A285DEE6B6B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042263365.6654.1137137222948953988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8feb3bc504f2251ce17aec961d35360ae782a0b73dc9369f0e6fb26457dd1ef8
Date: Sat, 07 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770422633
