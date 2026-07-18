Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9B2288D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784408914; cv=none; b=uLDfuTuKCEzFWWqvNsc4IIxjc0Wtz8U5Dti386saAl7S9qcp7mMF8Dcb7x5rKZoE5sz/oW5h4sVFvQnzq7uC2atPiJUL9BnVwKLbwl8wYPOhKas5O33b0pFvT8//fZ9w0t0VrQUdKP4Ep2D738lemd4HkHVGQQjQy0E+0tLle8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784408914; c=relaxed/simple;
	bh=bn7d1gy0bqmlFkDfwTFBylDU5x5gMUgUbbGx/ZzH954=;
	h=To:Subject:From:Message-Id:Date; b=fuxQUX4mbtxQSibDjN7TwLrfA0I7/b6v7fKrmmaqGK87w+IohltXlmIzcoRJFvGUH3QRGsp3G7y480XmNuG4yM56Ban8QPRafwwm6TztxSPvnYRNI0kMrkK5nJkS9TdgTv+//86s9detJ7Ft0WjIRR807c3u6aamBy/JjMHD9R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaOtXgR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaOtXgR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA362C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784408913;
	bh=bn7d1gy0bqmlFkDfwTFBylDU5x5gMUgUbbGx/ZzH954=;
	h=To:Subject:From:Date:From;
	b=GaOtXgR9M8kdTfnIxHktRCxuZhdaeqNr7EFhbxXrE59Jqs1vHaRO13uHSzVpj2ov1
	 rB6w33JEYYyH7E1BgHXSpdvG8/ZsG09E48MbJ/IGx2S6OF4GcfGCoArBfNK5UuFdcZ
	 J+QBUX3wH9/Ac1IoSQcqC4b7yQNMItJbFNZDLAWchAryQeOC0twoGXV9vl7h8x3ukP
	 zXFShRrdj5Yt6w9SgX3LpWCRQ/e1VZgZhe+ox1Ejr45+qvXbN+HnmmC6rifXWaPdkk
	 Yad49FKH5s5lxK0zGpP4lmcZsEvPX6iFJPovHedKub/9cfXz8PZm+OAA9NuNovoLv7
	 7KV0JzoVpWetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AA4C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440891369.26874.9156845163843127410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4384c3c55aff6cef7dd444e49567435f9bda1e23839d2120711f520f5ff8ed1
Date: Sat, 18 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784408913
