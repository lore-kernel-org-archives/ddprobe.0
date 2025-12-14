Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1663E47B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765710774; cv=none; b=NxmRWC4fbntjmHxbLF+8yxbZzAyEJL/dqAfNsVjKUcYTRwI9wI3lvxEBEtZ8ZhRj/LQEOFCXJA3PnDUqf4eXjnsEKcQgRGG421OK37WzeYM9N72+fVJBaPFiH/U4iLNMfY74CArwRzfrVkvu6vOklhbbQliQY0k9cKzMSDtw3wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765710774; c=relaxed/simple;
	bh=uo1cAS5PwIaKESZd63OzDffpaJtc2lf1+q19KWDr5kU=;
	h=To:Subject:From:Message-Id:Date; b=hyBDyuvxgpHsOuSa71EhvVPu5FjtNRdgDmVFpI2dg56EhL7JUL0TgEpYF2aSssyX7xv5HriB/bahwdxDrYEK5NqgIZceopnNQ681+Gxog9ywaVL5/as07O2oTiJC2LWDMkY2CkeF76flCgcYWYK0Sb5TcrJN98z4APv1A4A8Gs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTs5nOdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTs5nOdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09B8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765710773;
	bh=uo1cAS5PwIaKESZd63OzDffpaJtc2lf1+q19KWDr5kU=;
	h=To:Subject:From:Date:From;
	b=uTs5nOdUDH97dGZV5FhitxS4ACoFEOral1Ccsj5lAiAsD7DzBmjWVlsznjDt0Bp1G
	 wwv4HdpgVkk0G3zvZ0uBfnQadDenU/SjcmXyoZdC6CXOydrwpvVGmZmc488aHCkF57
	 z5jF+sDWFVOm5zUtXSgDPcXFeQumVJl5Kdq/JQnrLkb3orQJWNwRlIlVeU8NFB1rFN
	 eCO0JePG8tbSK3cVYuqzPHb2hXTUsOtDqEo3+eFsFnbA59KMs/2aAfodWKAZjqb23D
	 6CERd9QKXDZzGXNwzLPJ8uSvteJsefKNnvvAU91VGKRPfbsE9gPV9P/UEg7qKHpmfE
	 rAdWYFRY8aR1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F356D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571077357.4049.3801674226024038388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52f4fb13d3ddafb0da9c35e1bb4f911d32b558b89318810429120bf3fa47541
Date: Sun, 14 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765710773
