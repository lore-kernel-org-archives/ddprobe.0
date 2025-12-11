Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB2017A309
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765415574; cv=none; b=adyUpqqTkTteDDYWaPrOY5UvxsCjqXHC/p6oA3TNv3NIT2JVEndhCXJILU0ww3zyuMVRDeDIYHDbatJUd1x3aJYRFjMPag6usPIFYctp6p05LJYZ0k+N1sqp4VguoqdXP9PO1yRIb8v3IeCTVHSe4su02qftxQRdDS51teI6B9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765415574; c=relaxed/simple;
	bh=b7rM92Eq8HtBqMn59nGH3K9LHw/LM7uIkd/nMJmhY84=;
	h=To:Subject:From:Message-Id:Date; b=p9Ydurj7fAMMLc8D22wCVgz5BAzB1kt2nwoVN5dbLY4ExNkC7BQm7ER4PgdvggCOiloEh2hIp3lTNKL5C/Ix2lO+uaLFKgMs5KwV7aipzwNIkdCSZf+I4ApGp0mO6RomvkrH/42BWyuzLoFcfzVPESFM2vjUCL753qOU7Sc9AuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVp8JBoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVp8JBoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F93C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765415573;
	bh=b7rM92Eq8HtBqMn59nGH3K9LHw/LM7uIkd/nMJmhY84=;
	h=To:Subject:From:Date:From;
	b=eVp8JBoImLFNe0VeU8cQ9jI/h9UaQQ8aHBzbd8lgjGNVFX+hD41pm+aGGuPkiDxB1
	 PykZYza44fYcF2JGD7oVJFmlB9kl6hWhE9kQPzn9t4t3887bkQ+bCyfcM81IUslfJS
	 PxcL4lBZh4ywhHdQoSsOtR9FxYiSKfgXOqLUCSsesFEdH/W9TpR7F5QWEQHDtVwI0o
	 gMteo4R3xh5UyAioX/yVHzrKS/M6IvVkcXSkjY9kZVDKVbmxMo00ms+TyHk83Ko9Hi
	 Whdm7lBdlMiDXxV5b8WbLgL1elJVHFT05JlNIyO/BOUMhpPb0G22MxDXfSyfbUV+xZ
	 4KG1e83MoZISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C2D3B9AB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541557358.25945.7467770107354468715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641596755df64d03b131f0cf8c5001c3d8a9ef9c1d8523de8be1773ac1860f65
Date: Thu, 11 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765415573
