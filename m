Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C66325D211
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746017394; cv=none; b=WI6MgL2CKC53G35+D7QHlQX3J8b79WrjT1OxZ/raYXPBMmUgupfBzcH7nHrb9HNTbZIHRfOlioC38OCdJt0i2aeaSDTri+dnqagzJNlDYwNB4XIWuAJaM/h/wl6Ks23zLsphCNvqQqgG0g3fZcFy5L6MCZ/cSdMIH473/2El/iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746017394; c=relaxed/simple;
	bh=2iM/Qr+0EE6tmYdJdzarg1+ewlCmw0pucESPVaMBzEA=;
	h=To:Subject:From:Message-Id:Date; b=CjtYlg5q5HZw1eKkLzur6Af5iSV/B56ONbo+zPOpVCV/cnwrshmv7MfVfrDyzYB5AV1kfcZTQz1Z9eg6CEF8onFpMMEqb+R98dCtBf3T6mAVV5vA0U2qbol78O0a45zJSWkdIZN2LF0GbRnS2QkEZStT//2DMpUNE+B8Ez9MYG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekBmTCeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekBmTCeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A076AC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746017393;
	bh=2iM/Qr+0EE6tmYdJdzarg1+ewlCmw0pucESPVaMBzEA=;
	h=To:Subject:From:Date:From;
	b=ekBmTCeqOrWfZc8mqorRwwAbH0YICW8JoCI8M+wJQdvyBeNlnhCJsGYdoW7U1zeaP
	 ecsBS/y80vcTVFfuXyGmOzsG3wbEFAnHj1O9HfRW9bTnK6KmjxDGjuY7dOu5NXQr0m
	 B19fKlOJvCmo7H6H3/61/TnXo4XfoaXW63MPWTKYJtTSYKihZNcvqpC9eLRWVHp8Ac
	 56xrne+S+LXuUJcgE8hyoUewDfWsrJGAA92tpcxJ0J1CW9EXKndoSU0cKcTPk9MBCV
	 y5cYBsJNjNwILR5lLleFnfAcyFWpn3zkGeQlQvRh9zJx+kme/MH1gES1/13YMvND6G
	 RWGgR8yEeKCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E15FC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601739357.10857.12309112319342766075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c94c2139aea6ca74e4d0a393a911205e91f25f3f6d0ac14df6470613e4c5195
Date: Wed, 30 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746017393
