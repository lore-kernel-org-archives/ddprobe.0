Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2112A13AE9
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706998697; cv=none; b=pBUm+fBiVV94HbwGwaINxrtx72rVLGc+HObCLDuY70pQtmy8DS5xb+w+ywaaHAuwS4Oi1iJgyZjGC+Xeeb6gm9ro6GZ2itcCiMsDfKB3bSGNu40EPXb0M2zBN/PWJdd3V9Ep/j5HEN2SWMWxA4eqtfBRSxWX7ubCWp7EKjSWjow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706998697; c=relaxed/simple;
	bh=VrSpyKF3z+clScWNmJjnH8tEGvN1wQ+hThF0k9Pbep8=;
	h=To:Subject:From:Message-Id:Date; b=n0wvMnpfoKVaJffCNXXvbvxwpN8oTiJ+WCt3KRLeX1fezvk9Yg+Bm+bZWDqMc6POLHfag08oQ4f9j+aMVsYWaoaxK0F+jkx7t1Xu6G/qp3C1rT99V5LDcgfgmg/zWPK+Bqvo0/FxsNMfn+k/RpCQg4tlWW8FtnadneyV4DcgexQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUpITXj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUpITXj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 884BAC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706998696;
	bh=VrSpyKF3z+clScWNmJjnH8tEGvN1wQ+hThF0k9Pbep8=;
	h=To:Subject:From:Date:From;
	b=qUpITXj4dE4Idq/sVH3zT+Dfyc9FbHz5fsm5qseceeacUTgVaI6eGTqOSmnqRpD2s
	 9/5t3r3KmUZtnBlJI5V8HdTE+KZjuZHvmF5rnl1PiMbSk8k/BfY7zxHppUMfBnAUft
	 i9EKPwc9REp5e7kYrcrJ5BLFM9e7oUPs0mpkIfxjbroqn3ttYK5YhIu3X9McfkXDI0
	 utjHNv8GrkNYzBgwsCzWa8O/Rq2aIw5RI2w+QRZEkN+P644SqCinQjWmIPKEMtFbZl
	 do0p2c/GsA2l9U9RBWY/4pWSoWtmzHvsoJkuFQkDO6UTBW1KUs1Eq31n9KyewfFJmd
	 bMBBIJdwgR2ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634D8C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170699869637.29378.9267978788511761559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f605d705e93c2df65da661ec5ba427ec906b6dbbd14e8835cddeeaecd66f168
Date: Sat, 03 Feb 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706998696
