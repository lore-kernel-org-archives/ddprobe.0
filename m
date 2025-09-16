Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CF419DF6A
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758026994; cv=none; b=B+iKcJj7M9UQRs7w4PpAftrX69NSBrH2ICmUYL6JG9FIapmOD3yTv6ikUVB96hjSgBM3RP2hCSE/Zlr1ZAvRpk4TSM2pXL6Y3L3K674nn2slX6Zkem7sQ6ptQz6DYnxHKZZwK4CM3VbcfFx+CSZt3+wIR5tLO+rPcGTWkH8Ddik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758026994; c=relaxed/simple;
	bh=ynKr2DlmczBxhsNgjNYXbFjhTj8cWmfGAJgfKNIThaU=;
	h=To:Subject:From:Message-Id:Date; b=PA2pZeds7LbNeqvLCnMcto8BFYWwrHKgtAZxkuz3vx5bIRLyLYuK1iZJODT0eu1H5HSkOcprGuTfuwl25J2RXjm5DohAHTfSFBZukpfqjejgcisdToKeGHTxlOKtI0y7pszg2uu/trspr1OI8h8I4hAth857odUputcSkS9Qgrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2XqmpW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2XqmpW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E804C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758026993;
	bh=ynKr2DlmczBxhsNgjNYXbFjhTj8cWmfGAJgfKNIThaU=;
	h=To:Subject:From:Date:From;
	b=s2XqmpW5KV0OAdk8uKwavzMALVU8OD6GMgf2v9F3JRv8VfVfJ3Qk2T3W+Dz2l4q5u
	 fATMpVbE7z5VuT7YPx8mw+YjyR8wgzLvAXn4BkORBe9rjkd9ISvMsf0aR5IQvRYyON
	 j4zyAXltTboQXxUlU5mD+TS3hrQITT2cnCjiL624zvo/Zw0aofhWe+WPfii5cghOzk
	 QIbXDC0rT+WYjkqGuSklAVho9+NRruqOh+i1mBawRo91xMYhlAMrGDObS6wV2SzX9u
	 mIy7FIE5uTRc4TtpEdGX1UpMybDUPUVHbZ7kco4DhZf9KVpm10XyKXQBNa+iqXU/C+
	 m63aJ+LFraBLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ABCAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802699357.24352.344941459080387970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5727b0ee205264e6b1540890e382772b1dbe0e3d029c1f99599300f99c5318
Date: Tue, 16 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758026993
