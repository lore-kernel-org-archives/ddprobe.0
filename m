Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D025A345EC8
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785670835; cv=none; b=A1N/UUEv2ajn8tUGm81ksQQ2BNV4tVfuRQcVUvebRtrduzHc4mEob46OD6D8USKr5ofQF1ZmLvKjbXI4C/USeY0pH/EJZ9CQZFGOADZBAAlLSMg5hqn73lzdfz2ZrprXHMmKA8yvHLr7EM/9wrJxTCosnd6wVlStr8FSWssn6Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785670835; c=relaxed/simple;
	bh=Myp4PpimKDajfh9xk2nE9wFD6kwGba5CSoW3uEoymY0=;
	h=To:Subject:From:Message-Id:Date; b=LfEfjiTS/bTlpm0RD/Zu6eV9+mIn+3JPRtOG9qg+mr7zFSCTNWSxu1vOG033iyhNpcYMCPfuwgWl7ao0Sxrkwz7B32XulW7CJEQmqp47bPYac10BU4MgMOyeyzEX0uD970de51bx4fxRfO5c+ihmpOSsLTWEp8vjXA4XcBlf1LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qr5X77Oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qr5X77Oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA3BC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785670833;
	bh=Myp4PpimKDajfh9xk2nE9wFD6kwGba5CSoW3uEoymY0=;
	h=To:Subject:From:Date:From;
	b=Qr5X77Oo04WgoSmYpyTkmCLLFyEVCJwZuvPZxw0kkyTjwiBdBMJT6WbA5y4BDIEup
	 IM66bKMgtqWg6SEx2pcWkbkL8Ys4Inv5R9jBd3jkvtJ4TWHSRtwmHSaLXI4d2LjKej
	 0fD9JrWKQwEsdE/n8/rhB4GD5QFK/mdFCP0Sa4/akeA9UZ1yru/8dXZ3HAKAYKi8Mv
	 hczf1rKOAwsN6To1zHtKQV5IucdwV3OGL3a97IX8P2QfHfGSZ6frW6EJU9nDfOIOyG
	 dgYQo+WrKQvYMaqF4oDUV95Q/oy9HibJ6gtINjvzVUmcK+fPAO8TDoxz65fIeZSyrs
	 YnuVOIVnbPzsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7A3C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567083368.20019.10499061119683200652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471c14a997aa26d22f1f1cc19e1ec76197b1e5c13b2851e99201ea88db4078c7
Date: Sun, 02 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785670833
