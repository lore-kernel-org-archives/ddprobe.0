Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13025372EF9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777048054; cv=none; b=phQVO9O+1DRYRNTAENU50BeosofGg/QAbJvRCJWpNaAty+ceBvHmSdjgTST6FKlIJu9i19Ad1Gr7gkZq4mbRMXBWkhjhXKiibReKFfM4uVqJFwxshNZVHMzcXtBL/x6gTxKpvBBXzWZR9IWitTNxYREsQNolhYsOkBjbYUTkUwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777048054; c=relaxed/simple;
	bh=a4t4h4RoUvaiIZIrWZko6LypQgyuRos+5tPTFyKuUog=;
	h=To:Subject:From:Message-Id:Date; b=g3xPzRmetMqs3e8QFrK5pOJk9lw7zWbA96cYDxr7jCQy4aBK+v+fSdlFPFEYkgWnluU3vMBijraYPcWBMCTyvFZ69JaXa9YDbmTA7Fl0lRXTbFXjmeGapVPJ+tolFNtXStS1esiDZuGFsSN1BYIKhUD4jllbNHLi1JvHyBMkehw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stU0Fl/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stU0Fl/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB64BC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777048053;
	bh=a4t4h4RoUvaiIZIrWZko6LypQgyuRos+5tPTFyKuUog=;
	h=To:Subject:From:Date:From;
	b=stU0Fl/AMdhMZV/uWwSJNJ4wcHCOZyh+v7V+VBdQfXjsp9FHxFJVQw/Riu+/9MSAu
	 3pSWDrkTnzygammpNldzzvT4ZNeU0b6UY9W9wxkzRGfdtAkDOnyUCQ0ULvv/U+t/y2
	 xono6jIXaUyjye4oc3UK0klZKJcmQiiTxUZldabySlVgRIm+0b9L7/pCKTfYye/CWs
	 OARAtBu0IZOD4RvPrkeVWGz+4wan6R8iXqtAuxbzE3PFUxwIXCZE91I1ziB+8GCcGp
	 bIH6KhRDgDU9Va1Ub1aegXGapjgd/6PuBqxJb5lso7tHjvo7cEV80OenZURZ3lOY7/
	 1JL+IV1/rpnyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC306FED3EA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704805369.19164.25069497493411235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54eb93f1f70470b0dc32f29fafead05323614cb99a9c5d8460fa3fd06773cfe
Date: Fri, 24 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777048053
