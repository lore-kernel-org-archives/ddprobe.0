Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31992610C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735728354; cv=none; b=LhcRw07kTzKRAJtU0HLt/+iHLmKKkEB0b/OWQa59QLAlxg1AoHer0zCnOVyIg7J4lhffc5I3wX409iqoBf46KwlKajMIBPAAdRENHOjQ8SMGGCHzppFYYQ8Fp2lMpyCGeAym02zuVOK10VkB93lSvwISZHyZQKWZpK/Bd9OJL+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735728354; c=relaxed/simple;
	bh=W5owso6fuQ3Pn3+1D0Tj4Zlegu2VU+4+u8lnrMpVO64=;
	h=To:Subject:From:Message-Id:Date; b=Ci+sFTcTEa/z5sw06uKipwDywPOHm1Ie1PHWNAaYoXXzMg5SMCa0xbRMz7c8IlyRaTC05fzuanbP1qHu6qd6CxjEnZZYMBo57O5vnc0Wdm87ziBt50lIdddeT7t4R2hLbMtBfGQLyn0aC05bbO0gJILOfAb0pUSpz7In4eZrOjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdPHHCOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdPHHCOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5289C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735728353;
	bh=W5owso6fuQ3Pn3+1D0Tj4Zlegu2VU+4+u8lnrMpVO64=;
	h=To:Subject:From:Date:From;
	b=tdPHHCOLbFffbPDGO/55RXSVcnqIDuJaoOUMSykgpaeoNMbG0HED+MurWN1XRt5R3
	 rG6YOjns52xGnWy4XDS4uXnfHu7GA5V2Vh9BKxdyMYcjjWORwiEQQjmugTlR7dFlk6
	 TrCroU3dpbfOc6ImWrgd0sareZZjGq7/08SjkcZ4X3BYnHFJq4HmbQUGs/kmS6jM+r
	 63FrZd8ElhJirryv1tX8OFYnf5zwGQpUOFL1xwcNGFzGpMWlGoNlEHGkfb39d5H4TY
	 EA8x58/5brFYdS8TeAdH/iLcbdCh/ARt3VGENJRje6Z4YOLQQHqG9AO3bq/s7ObCN0
	 coFhzAIs4k6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7D2E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572835361.28432.15146463887267647758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038ed2aa8d77ac4d0b59336db4b08a9f92eaee3acd170f7120a789a9db08c772
Date: Wed, 01 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735728353
