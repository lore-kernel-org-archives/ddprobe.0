Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B66517084F
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732357554; cv=none; b=STzDGcQjtB1NZp3OruhALyxzVsrfZWtLsP0G1ZFIoHbXklkd+PSRdYSTEoEpUoqlrGNxOua0XjqQsjN7QlDxF2QZD509mk3niiAJJBz/4dYX9fuFK//1etAIsAA0gs0o8aiUQEfb0p5wJhKOKFU15No7bvwGDXL6mnEm7CDRLi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732357554; c=relaxed/simple;
	bh=WSwJPoQOKwA3yijDSEKpx4C4gC1HlMqdS6xEIY1i+ns=;
	h=To:Subject:From:Message-Id:Date; b=FMl3pJEajO8+XJ/Cw6gdiQaZq+EEqvM2GSA7nMtrOQOeNTfEbpkbDjVDhfl7aIErf3JcZAII5+A8p/TEt4z9pYjGb++628xLvNmk3+XoDsFPZ/KbzoVwrvlrRTmiaaLHfX1aXG51PSxq4+jGnfCXOzhG1Ise66ampdpa9PvfJ4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SybGFCml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SybGFCml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A848CC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732357553;
	bh=WSwJPoQOKwA3yijDSEKpx4C4gC1HlMqdS6xEIY1i+ns=;
	h=To:Subject:From:Date:From;
	b=SybGFCmleFWLcpd0i8tQcqmCjHHeYI7roJ/cNxwjmQD5w0ooE/ox2aUHnT4dt3lrs
	 rpOlTRpEqRg/2QT8EAZTx9/+ESj8OJp7eZtO1n/VsEMS7htyQVQMFD1k0hlxwjFFcP
	 NimoBBJ8Ru6AsvXY1d/fOYVXfGAw4bXcmUR2ykMuhC5hi0OmVMV5xsD/WQa72NGApC
	 DZQlHTM/aZJcf7Bg9v5uRBYshQvJ40JL4sdAxNKane4nP+L1NseoZ7AtVZlga8P9MQ
	 2dT47uapo1qh2QkCRELeSYXh43wC/Ru20lA9RJZXYxWZ3Homi5jKA6D9fBe0qQsbhP
	 BOv98Muk1T3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94774E6ADEF
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173235755359.11702.5435285419189400307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4824c7edd7ed752f5f85e60512ade038b449e7bdf832f720627c4d47f8f92c0
Date: Sat, 23 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732357553
