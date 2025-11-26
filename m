Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4822C0281
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764144774; cv=none; b=A6XF2uRY7imEL0JgK8k0GMhq4B/1S7HWiOCOIJIUdvsjQ7bFZbSR0cDS0z1cs5d9Q+TwuGszzJ6ylxtAORBWpOAE+hr6AobRt0Jn2014DJtKpsx78QXfPqyPru3R/kiBbBhe1NZwh38t8IhI78V/cfVaZCYe+4BJ8Mshafx0vgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764144774; c=relaxed/simple;
	bh=6YRjqYS2rot52ZhscMo/m80RJmHX1nb32BDF+4yCaD8=;
	h=To:Subject:From:Message-Id:Date; b=VRdceTUjYwOxCSluIyVIq0R9eTwAUrI6DyeC8YlTWXrWe1/MfWfCpE57MQJ+fs+1P/jCR4dkg2cAeUqcgwWOqR/mZKH2LCQsvHWbkNxLI9JHlGaO0+vxjWu1FkX78sMXK+AR62a4boV2mp/1SLS46U5ZrWlg6tLZPeGkdoFmDoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9EIRbvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9EIRbvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98A8C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764144773;
	bh=6YRjqYS2rot52ZhscMo/m80RJmHX1nb32BDF+4yCaD8=;
	h=To:Subject:From:Date:From;
	b=e9EIRbvvxHhUOVyxa9b4hhZ/+i7stsabsc2uwG0HfC7U0iMM9r8Ri+LKZqqyQhvWO
	 H9c2u1mcuMcCqzw7c40JeuBMSvLO19YEVR3ms3MLAW9K/jvRz+pYwPxWEi3ITjHY+q
	 17OD9APG+KbFs61xXFRQts0+x5Ro47c2BCG4icbGC10b814Z2Xt0xwXIcdM17lqqO/
	 tqvRAw9xZhS7bknQKLuGihGHQaFbVnL84cQoeu08ESFI3liPFx8WVd/ZJpmb9CTpQO
	 JxibbszY8Nz0VsIYHav/B6NeKijkrbolQvIAyb8kpJkFd8bn8+7lxbBoeuf1gqfngn
	 d6nkGRkdvYR+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91489D1038B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414477358.10148.16529752203551297617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a2755039d8f1cc5c8e99eccf330f60ac000daa4277065446f661bfbbe01bd7
Date: Wed, 26 Nov 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764144773
