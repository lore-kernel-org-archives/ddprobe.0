Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF501A5B84
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769976234; cv=none; b=eNZZMlR7R0xt+DljvltYnhWmCobfK9ko/3CqihFbQekTBqef0NnBo6YSjGYWY/6hd6fWU2ODGjmHE8eebr2+2xmeM2Cmxna505qFvdEmHdMWViR3EPm5B98Bedh+IZQx1zLqHqzvKYUKLLW3IeLL8AbklSTejMTWhuMqw+ktqcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769976234; c=relaxed/simple;
	bh=4F9wmk4Ch9qavSI9xM1db9ayBbJODDPLuqPDHZYM39E=;
	h=To:Subject:From:Message-Id:Date; b=X55qLhIh0eLF8hFj5Bh4NIAGlwGoE4k2C1aougF8IMQk673ms5VaFLQv6PzeZ6IF+m28wUwWp5cNjK+MwVqsHaZZoOFzYjBn739hETsY94PEOavh5p7nWlENdjso6CmR/i6aaeQo0a9C81zHv95HbYDX+iPZjh4QlKWXTYu1UzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHQh3NFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHQh3NFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32A9C116D0
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769976233;
	bh=4F9wmk4Ch9qavSI9xM1db9ayBbJODDPLuqPDHZYM39E=;
	h=To:Subject:From:Date:From;
	b=PHQh3NFY7uDLCqbBXebVPfPScMsZIdacsR6a0jc3c2eaEpvMvHxrEKNLQk3y0xeT9
	 6ylzThy3aER2KEd9YSosm1B1FY6wHFki6x2UfTUycI/OtFcVnkwVgCzJAdBe8haq+B
	 M2jhgsx58GZB4n3AokdoZ8zO42XqRTWqcLB8c0UaJpUIjetk9AtYtkQUpVI+8k2WlT
	 4gYN4bn0A5FHFCh8HBSc2XbrpJ8H2wN7a4CrGQaE2qNQ4oZiWR1s6Fzo4g82lylWAj
	 d34G1aOspfSCD75ucvxDwhWWO94DAKUHbkwF6NXems1CNfpfuvekGnYgqGykNqu/Iy
	 IAaPnk/+QWHsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CAEE65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997623361.16811.11916150222072600031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c926dfcfd09178c419116b03a5ae93d552068ebdc3a519e9509e9be5d6755060
Date: Sun, 01 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769976233
