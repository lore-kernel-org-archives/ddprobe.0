Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2182F11CAF
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764291774; cv=none; b=ogiWz0KxIcoDZ3wvv5K5mVb7pcCH+GQFmBJL3CHruBubwngpYQIm7KJ2IcIXOiW+/KvyHeGF51juuo+tSl58B0jo61PjMJXA1PtIuZntD2OjieEbpX3lck9r2hxSL6cgUsaXrNt1C5LK6k2hxgEW25tdCmzFfkUh+ogNz+212fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764291774; c=relaxed/simple;
	bh=/ttVjX9H8SHQpOEEzdg/Ey54TlnzsOlJ01mXpZx9Byg=;
	h=To:Subject:From:Message-Id:Date; b=uMaFOKklRVPR3Qm8rZGwYKQ6I5D2uOWkqQ4J/mff1+p6jAkcT9SX7u8QpIuLY2tmTpR978eMIXVa8x6yZDV670j4mcCPglTsD8h5X9ONJiO69UiRNel4PM9LFp0ygBB210/NtXkTLEDKHu/LCSSn21O/Tqd53069MDuQUXRwyFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qp1+ffW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qp1+ffW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF134C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764291773;
	bh=/ttVjX9H8SHQpOEEzdg/Ey54TlnzsOlJ01mXpZx9Byg=;
	h=To:Subject:From:Date:From;
	b=qp1+ffW+9zBEByLHT0u7UEJ8ozszFZyg7s/CLl24txEW8g0g623fa/HIdTC5qe2KC
	 5jTLDJhpuOWjtDMFMWL3z8wE8eNw2SspsQDomp/U9WbOtDr9VAS3Gnh0NN/CPREekj
	 kF1YnbN4fPiy1nqpzHoJbyF46T1ZSc1U6CogODEUWESLo37kg1EzNUnnAh/VnrUwti
	 RvKlVj2dov+9H9EFtxl6e14lu+ZeApzZUcQBsaO+UXYugXMnJv/Ed9hp+/LmswvzrT
	 aEI9dXcRVQ6hGLfiOMWyDnKHiyzn2nnQbSQ4id+LyPJVuE0e7brBN4p08gRYcen+i3
	 /2alufRzCWV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9C7D111A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429177360.25567.6816909776823087570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a5dfb825635e64b527d8486e1fb1f8e60e87e18d6dab33b99038b1fce8c446
Date: Fri, 28 Nov 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764291773
