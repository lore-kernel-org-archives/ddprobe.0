Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110D436F41F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771345494; cv=none; b=LKxW4o2jK6UTiMmFovq1vGsVqXAAESZVGuiCFYAiehYcCGD1L4t8Ve/+tbUeAq7RCr/WDdqiJz18bfOW8Hp/vB+BmUQdv/l0zF8w6KZjRPZRYvA4Ea0x+mWEQR0F3bppCT6fMxmYDZDjWrUtcAH8QX5a80kr6FVAc3vEnxbMW1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771345494; c=relaxed/simple;
	bh=cppuW12OYDqaWzeudTZ8HXV3td2RkQP9TydtgTO/4VA=;
	h=To:Subject:From:Message-Id:Date; b=o3xlxiCw9BFnKvtah8ofbdYAaUeCFjYsgF+Pec6pz3B2dfHnaCJF5s2P81HEjSC9XxhmaaYMkXyEbYIFTEvXm+YBu7KIe78O8X7ByQUXzrrEkT1T88LULhnP7XgXuyhXnVwFK7EwYRYHVYmcmgKTVQrCQOhBrhFXRgec6CngB4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mv0rYk5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mv0rYk5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69FBC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771345493;
	bh=cppuW12OYDqaWzeudTZ8HXV3td2RkQP9TydtgTO/4VA=;
	h=To:Subject:From:Date:From;
	b=Mv0rYk5//9aRIHZMcxOpf8wevkArBTY6sKuUP8YIaUasaylkEYAmVf81H3ui2QR1F
	 I8m8/uune6Od/1KiUT/Mx6HXtsWvD+nJskuDL3tcTZ0U2PFAouLeZyLJKsa+BhJ52x
	 JQRwO2TYTqlY1b/oneBnYQiA5MU6fCarWjBuTwWm704RoEBHZRftIX9kB8CKM0H0PW
	 BWBWl82s/b27kqZnslfQeXrhzWWJcc/abB+6yDbl1ejVSrYKVIq9Ddc8kuAgmHQLxA
	 8lDuvpFaXLwnfU4pk/mDgIvXgills+qdtGztXEhBboXJpHQ8UodiwbYMr/71y7cO02
	 qBIMc7NEzLC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0310E909D5
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134549364.31517.16243957103058526678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f56fe5d5aa7e5c50cda5ac0f81b4aebf241b59eb8c2e619c164738a147945bc
Date: Tue, 17 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771345493
