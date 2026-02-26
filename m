Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7F930E852
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772069094; cv=none; b=TFgXQFuSRakHIZdikCeF0AsRWIR2LoTvFTGz9r2YxgMwY0jHf8rLDWmxeFHs+436YgzvRcinY0L/1Wj8AqzTjcZICjYzKSRwaIyR3oh/kgH8mY36IwVlRPddHm/l2DINT1GkxGGGNZOmDwm2UUfDw/illFK5EJuCWzbIOSXivX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772069094; c=relaxed/simple;
	bh=Nxa9EukcftaOvH9VBnKKRrMSgXreTg48lRrImVZnRrs=;
	h=To:Subject:From:Message-Id:Date; b=XjsVBhcy3sZUh9G5tYVcNLPNOk3XA89FpiKMcCcc479JHnUatEoRCDiMfGWApH5UoPRxQgZ/4jt/ONdIsyWZAN0ef1HWMj3De9tdGrhf4c+01YEueCR6ALZ3JVSyRs5wp4SVCZLKxhbJpUdd4thX7Z8Usp9Kzaa4JigE037Q6NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvHgCWQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvHgCWQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DF8C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772069093;
	bh=Nxa9EukcftaOvH9VBnKKRrMSgXreTg48lRrImVZnRrs=;
	h=To:Subject:From:Date:From;
	b=IvHgCWQ06MbCqVtYH5r+K7OKbw3Bq02ol4Da4EBSTY4DvW/n64IZHGTBoOyUpyzvT
	 2LRU+IOjd9IkSCCQAHFTM49Femg28IKBiJhl/qXqr5vUiSlHK7po5qSETIsfOvENvy
	 xJTKCHumJ5xKZtr0sAPOhR+F1H9x7Z1xqCxP0oufnJx9/PS38TrYrph53AOp6JpDHz
	 DkKF4Z+xe40UY3VOKuiRlZEIbqVHCFiZi/3JV+uNc9v5iF33mOtzx+5RscPyaprsLK
	 O/BLkHrMIY0e9fafUjzwGv8U2/rDDru+L3VP5asp2vnbk/jdhHE6iIhqGzljEfp/AE
	 dVG/imO/EYNxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A189AFD45F9
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206909364.21932.12557875933942905824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a56a70466d770827709a1133f3cce105251f6a80c226ed8b4cbbf17b6377013
Date: Thu, 26 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772069093
