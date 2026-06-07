Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325D030DEA6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780823074; cv=none; b=YRjBhK+ai0O55Wluq+S8EdtaVMh3DK2vHmQ+IMOIa0BobpUuhi/MUkgk2hL6XxlY2vN5MeUJM0d4vOVGB+FZlUGEjK4d0gzO6ch/+kVU5V1D1dFG3pNewA6WbHx8o5+ng39UUY4H9eNfS09C1LcPXCzOfIWY3ntvJQRLPKfYgT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780823074; c=relaxed/simple;
	bh=Kqt30OMcYRShd+cAfAXC2ijRRHEqkVKK0S4HDm9oanw=;
	h=To:Subject:From:Message-Id:Date; b=faU1txw8WDv9vq5Rn2VtczriA890hWZdZf+cWS6R2f98q2PzBbrkQmrmJuGGo6hk42THaS+xsgdWiJvUHY865wlHkFPV+qY8ZLFWgt9vN2DjuwsSpcYbEuWFHDLJ0L7LvHd0PSZdroVVctHcYRXGOc+/ZQxK/dLnACUw8YqwDsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h41r25ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h41r25ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D06C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780823073;
	bh=Kqt30OMcYRShd+cAfAXC2ijRRHEqkVKK0S4HDm9oanw=;
	h=To:Subject:From:Date:From;
	b=h41r25kutdyf85etk+aVY6JTYVHQOnJVRhWUMqAAcXbonwd4OIQhy+G/cTc3cnOTf
	 itniMSJ2qfSmdKTAIWd3m4jH/iL/UqxWu850RmLbqtzvLAUblxi4+1wO/GbFtR7LIn
	 FDoOw5/Io8KgQBW8R4WhBL/T2TB/caN5Ck6JzX44+Ubnhb1oKwuwtUpa+sVHNwYnLL
	 GsBRJWD49c/uAtDGIARbsaNBh9yjknCxv1hbrndlYTI6OLj7sniIiLbwj/h+8amMzI
	 eQmgFbTBecqKOUYQy3JkqzwgzO3735U9ZS1W/tHEr1OSb5QpjjFxqreTWjj85WguXx
	 74UQf9BNfLQ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9982CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082307368.16179.68275090544831360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8449d646e54e73704a53d22c9912b5e2df9a54a87e43210ac1d80504c9e51f08
Date: Sun, 07 Jun 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780823073
