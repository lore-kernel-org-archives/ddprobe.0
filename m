Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3146B225A4C
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734717954; cv=none; b=u6KRcw3y9bsG4u8IYhYDAMbu6Hpp/lb9No/omF0jmZhdEUjST4OXuXxzTiPeRKb/UTUrzadhnlPkh4fcYSxb2GRybBDdxEv4EQTIv6z01Ni6R1aq30vFufjoLXAWcAFVOhzKfy8EeiSFHuLLYBHeWYKfSfBw4BRluKUoxuhai9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734717954; c=relaxed/simple;
	bh=x+aUoIzaNoMCsteZmrmyic8C2jBaaZhz/LhXp4Wq4as=;
	h=To:Subject:From:Message-Id:Date; b=rKSk4ie1u2Cn4ochC2BHYKu0s1lnfSpexkLanMk0vlr5p+FxV5Owtg3mpUEvdoLwKln+Dz5jOBCxq1Pp0TcsPW+WKRMGoip1bBnNi+sFwX/aZX3VxLC/koImP1rPIbUeqYzP0xLfd277zPB3lF6S80FVhZldRL0B9Iv/ap/1P9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLUgwXdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLUgwXdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C7CC4CED7
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734717953;
	bh=x+aUoIzaNoMCsteZmrmyic8C2jBaaZhz/LhXp4Wq4as=;
	h=To:Subject:From:Date:From;
	b=lLUgwXdmiLw2MEdcWlNYhzfbadGEuvO7pPQvjHb9XS8B/oC21IEG1iN+JKXwiJAph
	 3CozRgLQt/ZOXsCQG+HkEcPHwIsbErE/Jd6hD6CRcBXcJGMdZN2xuoDYCsAHpkEFpC
	 1fgx3uyyfM9+tuYAE24jUHzlhOICDuvHBqs9LBdIJBOJtSNWro4O/THr70cMqfOoVJ
	 a6fZe64L2yOvNHJtI2+qHJTHhnCwmk8wI4fCcisfDa5z10YrwaGnZFIFXfTU3taNPu
	 bcNtwNDA1+neTs+O2x8Ws0sUjd8GoAjsX8J6gjbDFc1vQl5Q/QIC6kTbOp/gKUCm+D
	 JYG91liOymQQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978CFE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471795361.4186.4396393967041394685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9baeb47b6f0eed98ee1dc094b7784c00dd79ec8fdecce7ac0ac3a940be25aeea
Date: Fri, 20 Dec 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734717953
