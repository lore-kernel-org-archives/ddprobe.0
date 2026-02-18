Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD2D30C373
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771409094; cv=none; b=aTUHIltFAL6hOyWH6LBKSjNgcLqBy0zTQUPJQNkGLaBbNzQ5m2TVq4qkuwIueUPkZHk1wd20pWSMqOja4R38WoCVlJ1XL+HLA/vc2B5BnrwM89sANyIVIvtWQdK3cue4ABY/+Q/61bnycr5CKXDvpr0JgcgT0clrdCKMOb7mAFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771409094; c=relaxed/simple;
	bh=t4ryPNkW3ql5taJXqxdzwZHeEWzPhLPaTtg3HDzfZLo=;
	h=To:Subject:From:Message-Id:Date; b=AJzjb/NHVQHbrGwahMRqdhSTuZ2BWRkFOhYa3hOYIk6lNGRDbSOYS5LVwMLPWMTp1bUyuysJPDt6xvaig7Q03CEQTegi57HLPvQ6I+jo9Zm5XBpLU/UxXFX617BgjZJ8+R5WX3Z3giXUkRX2spiBn94w88N7vOaXSKOv5H2Xz/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDC3m6Jd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDC3m6Jd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4655C19423
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771409093;
	bh=t4ryPNkW3ql5taJXqxdzwZHeEWzPhLPaTtg3HDzfZLo=;
	h=To:Subject:From:Date:From;
	b=qDC3m6JdV1GXo9G+9o0FpbRF3cvnuJk4bChO7EHn3dRKD4/nfhsNsNQ/XQIU63uZX
	 2HEQKB1CO9gyh6dHsGxvzpnSVl6e0zgsmFeggNj69AVrJPoufCunTYOC8aFnk7lyrI
	 QU+CBTyR+Z3JdT2r70Y6B1cODkOtGXFzjRCfIzMDenJlah2ZyjPPxHzbhM1FE2U/Ee
	 2g/GrgDvGy8wOIxlQoNdiASmv690Lu8yLDMOHGQ9PnIvfzgaOpMYpE0W1J7Qoqo4iW
	 b5ilXmI03TGWfOqnsbZja0AUjBgwLpbYdn82yKOX/Hq8oWmRJSeZ0phJdBMdY2iy0G
	 VLPMHv6JW1hsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A5EE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140909359.3934.1529174900555973197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4a84f506e250881c2cd5b4e78e2f8de35f454df22b9739a3481753bac5f37d
Date: Wed, 18 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771409093
