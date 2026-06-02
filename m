Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC0E366060
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780394674; cv=none; b=P9Kk24FH6PWzogzGto1UgN6oZMVfMzzLmgA6ulnq6BLBru91J0S2OzBr0cv/j6jD95M3avYWx3jdbkQvE3Hynqid2aYi8xatty3+d4noQjyNtD6yyZrXT61qsrVP5Fi3rvbTgC+RTbfxjqyfJRDfGQAm9qeYKq6d5vyqdw8tGd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780394674; c=relaxed/simple;
	bh=zOzqulp1BssYdO7tKshrVzwWPxL66s0D7qYUf5+A9b8=;
	h=To:Subject:From:Message-Id:Date; b=rj1Emug+r7n60rq+uYhvIct+7zJSDmua2p9YqSNx17C352oYFHBA/Jjbrq0+6dXvcTYrqatNSXN8cbD5tfdHrafoIjlnMxBcEZsxi8LuZ7O3XOfhP54lDzVfVa0Or8CwHn1UFV53aAC+RLdGZbya0R5MCweQIm8EmubxqpYYltY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qg7pHKFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qg7pHKFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7DDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780394673;
	bh=zOzqulp1BssYdO7tKshrVzwWPxL66s0D7qYUf5+A9b8=;
	h=To:Subject:From:Date:From;
	b=qg7pHKFNtHfsxbN2BWt2Ruwoz8b9ZZESKynrszQ5F32faAEjt5yqWZJaVOgVL9dtV
	 U8dEmEfYz5ivErinkaT2Y41fZbp4GwyLoIsNp6SwcIIzAyUlM1Ir1Yw+MzuJuZV9lI
	 vv9fk/rTtmc01xnQYe3la2f7/2wiBDQ1kGtjwLJ8DA/5Bsdg4GP4LRAc+OdPPUrLf0
	 2BmfAOeqKtFAAUkJuWw0qx9AHbYDB7efXM+FVzgD0+UDa+RZl6y6JUZSWpXLR5VIg6
	 DIK9W2Bz8MwkPaDx0EG8OCr6evORGuC3AIpJ5qstWwwpMo1UQOoFWOtgM0L3/ePdJB
	 e7k9U8hMYQoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1DFCD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039467376.2234.12397743835307791746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5f6f92446000be292c03e503596abc559d317c14fde6352d153e4fe7750c54
Date: Tue, 02 Jun 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780394673
