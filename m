Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA6F42C508
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790663434; cv=none; b=EUnuU8CUBRore8dRAeaaepiNUka37pKrl/0OQKnYhRd4VSIl6rgjZ8y1UMxvRL3Nv339c367+SuULfdLcq/b0h1q+7FAYTaJ+D2ULeIUZauqJvP+LtDIJvfvCqEGMTwH2X4pCPhDSS4uyQ+KQ6JoH302kb4lh+vuVxBAdTfbxKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790663434; c=relaxed/simple;
	bh=iu8eKw6DSb55td9Wpub9Qg8Q9WrFnmGCaBaUjG4Gnw0=;
	h=To:Subject:From:Message-Id:Date; b=aqLdruzBhSLGtS+hz2tpK0xk0C84R5GO3tQ6/geuK9kfFVtZLXUu10P4MijRrZ/tpHRFro+fZXvy3ysMEuTxH7xinbg8snu9FyBX7RF2MfcYdgty8OgfZay68ygI9/sLBm4ap1WYbwUMCYMYdVQ9lpBUUZkDdTTIE9/tayO37E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEP9JcBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEP9JcBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD856C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790663433;
	bh=iu8eKw6DSb55td9Wpub9Qg8Q9WrFnmGCaBaUjG4Gnw0=;
	h=To:Subject:From:Date:From;
	b=dEP9JcBwbpb7Ot/7+NUgNIIqaftGogxkUgk+E+iWIwhBREyObFj8xPjotXzq+e/YX
	 wmAQwal/IE16GlYNYuMD1jS82PmS6DXx+4ElQwRZQNLmvgQppwaMA+gv89IYYVC0TO
	 nYvUJbVBdwT12eoKhJxCw0sLBhe1GAoQTYVxhJLJj3+CbKuGgETZ7du6rArzM8KSMM
	 0xM6OoIpCKemovY8dQrwBmZMHXxtw1rjwUdrCrij85D7H8ILwJUt+HST5XLeTun5QZ
	 W/Tju91RJSYYMHSl8MYtjey+rIIttXqiPSix3TUHk/P/IMeZbFP6prjBfljyZeUHBJ
	 TZ9CkezGJ83HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA798C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066343368.1462.17408803331140476532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c8f93a6cf0751c802428ca48a86b522b8698dae1bad06efd07be668fb73022
Date: Tue, 29 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790663433
