Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387A0151990
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744597194; cv=none; b=lkgTAkJHyyNlale6KQS6zOMaPTRdkA8ps6nMZGFttlZ5LJnGKY5rrZhZ1LZUyMyIen2g+UtWGNEMo3oYKQ6CRYS4WUvppITq9NIJeTCi0grmWPgHwUsaBLobBrp6Xgrol5JBBTdxzMW1U/pCzpvOwc6Wtk/vhrAEd//azL6Y9nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744597194; c=relaxed/simple;
	bh=FDaIOfHiGejfWOiRupHguEbQEhJXXhM9dAIoA8SMsaY=;
	h=To:Subject:From:Message-Id:Date; b=B8Crt2jEF5ol8X7KhHGoiVHjFiJvv1qgx+xktFc+7I8hdLubZNj3sXW5QGJVP8ogJN5FjSgZbbVOPKU5LLEb+p7hYWmpJKqa7eTkSCe2djhPqj8+/3R7a1Gbi6YGcy8TuhwQEgVDDbkWpo67MXEtJyCfVpTqJ03XK0/0qp61Jq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phZ2Fipg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phZ2Fipg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF25C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744597193;
	bh=FDaIOfHiGejfWOiRupHguEbQEhJXXhM9dAIoA8SMsaY=;
	h=To:Subject:From:Date:From;
	b=phZ2FipgVtfnZtRGBZrEZ5Yh9rsaRBN/wb9iuKF5qtmyGwoMFBJmbIjMst+5xM33O
	 oyOi5fVdN/HXxtS6O2K4hybsBnREIxKQTBoiIJucjak8e/iqLt3+u3mSNjABgXENY0
	 ZGvcC55JqpfM+O+oh7+lO1JbGupn2PbxZMZ3AzhKzFs3AEe4rAe6eeP2eF0FoP1S0i
	 aAeGu4gEPRhLpd/0oG0a7unHKH+FuDlr3wgucO5DzskpvTtusTEf9/p/zyU12V4MYy
	 n7XBeX7kqo/a0syr+unRgIZuZxNB4OnJhTPuppKiuhf8hWcs9yutPQkXvzIqtwCL06
	 oN3Q1E23yS0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC3C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459719360.22513.7708511972593338138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebbc5d227d25479fce20d2d4f72e0b7ab4c0379882a056b70e4ed8ef18b07da
Date: Mon, 14 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744597193
