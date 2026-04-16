Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4714E2701CB
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776322054; cv=none; b=uPTD76OJbGbwr9W8GIsOYs7JzaCaewmghQhWUapcD4mGQm59gdMzt/tXnJyO6OhVtf9t79uV2EKIlkAg9jw4hSQq/BuwUXD12kWARjy4hKlvXuV0VKAr0i6kpy0onvNN9Asf4Vs5BLTIUxET8nGFa2BayVtJUBorHY+krO6/N1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776322054; c=relaxed/simple;
	bh=HVDqFnsqdeJ3BvCrZuhzbgcZkYKP//2Ai9olimCLgpI=;
	h=To:Subject:From:Message-Id:Date; b=ain77pLhWoR2P1Zrol/4QTfxuSA/noXW5R6Tw7otoVel74Yi79K9kfegILShqktKmgncFj0Ds8flTh0F/pu9fYWzNo/yhsYQz7f95Z4HefbN5nVfYyfUWUMRc0b6uZBdoGACkbXNpPTxkZITBtI5A2B6jZ/r+9yd5RnJkes1N2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+b47Nf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+b47Nf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD578C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776322053;
	bh=HVDqFnsqdeJ3BvCrZuhzbgcZkYKP//2Ai9olimCLgpI=;
	h=To:Subject:From:Date:From;
	b=a+b47Nf35YULX7J/ItTBYpJa0WC62anu1vmofzNb2i6BgR4IH32ArysZZjLDyAOLa
	 HzkA77rHXyOPfC5mqh+Fc/yVJH7Q6KzsHvqbZhPXpBQcuopwVK4UYon/Qe6UMCfUD5
	 17Ei+7/rx873LqkQ7ZbDjgCnBNlSQNJgvNpGHpN/9GXt0C44T7qgHOzMhoesDmR8EZ
	 pCqllCduSDU2/J89OlQAuMMsjhKpUMYmNXDlxzaHjgxH60+8VxeGBawwTJ+WLf1m+y
	 njsL8xOkQMzovy6IlccHXS/8cfBifBQcah60IyoNwX0YYxCCU26U3MgGwGuTFNUYh0
	 5/LxH7wxE7Img==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AE8FA0C23
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632205374.25136.8377719301484742796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a94c58b46d62be1df913a9ef691b7d1db3ed767c8923b3f7a44b402e4948013
Date: Thu, 16 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776322053
