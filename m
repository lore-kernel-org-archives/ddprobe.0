Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA8534F46F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785150034; cv=none; b=A/odHLoxvODVMwYHQe0lvpOeFkTSIPRgVOAhl5FuKTjnG+JIlV4U2ikK/PTHO8Y1g5xhtM/zZfetoxiFdEIbFAhA5oa7MmPY5irfgru1gdBsz5kFVv/4CXqR7tQg2SA3xFapN1RTVcjQ0iU2vFFm0xnQbE8pcAqEfylIvJEXmX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785150034; c=relaxed/simple;
	bh=AOfLZXyP2Rqngl5ZH2WnDBbnUgDy4YwBjo95eqzVKLo=;
	h=To:Subject:From:Message-Id:Date; b=rtmgYKnmYQGIyqQh5+iIwLU8tzuFTomx0nlcAYpgIQU++WWh0Iar9W11c56wGXRj/z3vqc1zFw2SMGjBwdvKQi2rokKx1rsqx7taAYAls80Qt2VJu2AjebmZvT8sfM4u5dlIzOXwSyF1CTfj8gwb24pV+/veZAsMtWlQXqGNQaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ia9QH8JA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ia9QH8JA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCACEC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785150033;
	bh=AOfLZXyP2Rqngl5ZH2WnDBbnUgDy4YwBjo95eqzVKLo=;
	h=To:Subject:From:Date:From;
	b=ia9QH8JAWnlun7wTW/94uNa9y1VxrLSVnrt6BSaDsiTlePwLh34brjF8VKgVfvtpO
	 UfYG08jJycycJqytN8RJL0SPSGN/YsrtKRTh8G4l3wPjcVKcJD79SMdgumfw/Z0WQw
	 4Qu0SqAi6WPQAuraEm/d7F2RPFbE/10QeXTFpp0M4wP/T2j6hlFlWKhYv+iZ7r/QLr
	 6zW9shWVVftFd7qpxqfsdRxaSEUrismBauXfALWeH0vC8L2rMlvLZkeFEq1pbZ7xH0
	 3oXP1OpgJjNO06y7bhagAV8/lt/2+EoQBsuphrPg9xZW0VwFDmtFwQaSb4TSfx0VkL
	 Ow61MbHu5r71A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60BEC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515003373.17034.6312512718242709933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7fa06063da980c2bbfffffdd22cb44e3f7509486f886cf1144d88f2552eb0d
Date: Mon, 27 Jul 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785150033
