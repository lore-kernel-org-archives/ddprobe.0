Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AEA288DB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748331595; cv=none; b=IvRmGyaIjpXhePlHpl7l3u8SFarWxF4mXqMeptu8Z2tin7vVWG+cEEgD/XGBlpvV0rHfJlMirRx7J3OxT2rMILc5e9Iflsuu+1XZgEYYwycn8bAdWNM8sFxrRg+QfwCYaG5+6ZewXMAoHUxYQF7LRkHiEATNvfkxRcikl7ph4VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748331595; c=relaxed/simple;
	bh=7XcPArXsoShFN2EgLNgA+zp04//ARoNmKsdnPtkjuP0=;
	h=To:Subject:From:Message-Id:Date; b=OWZnvx2fVwc6Uh8dMtimGVyUE0Eeh5mVsa7Ffa1utRP5fcaVcCGARBbBwHgA7CpzqCPVGpBaryhG9CPMIUvXfu3CYMcqoADt60GniRHlnZWJbh+CgXtIXj257pijMo1GsSgovWp6MsbcJQQHMQ9iWUWblvOHnMm8gHUYuyQ2enE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onJSE3uN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onJSE3uN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3EC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748331593;
	bh=7XcPArXsoShFN2EgLNgA+zp04//ARoNmKsdnPtkjuP0=;
	h=To:Subject:From:Date:From;
	b=onJSE3uN2XQlAifVTnnkJI4Z3Sf9XPVG7H0oDZ6zt6tKVzqBNuBhSNpBAe8Hci8el
	 mj+/CVFlVkEbxwcRpsyGCENp3GXjOUJEDf0gMwsBUsrSH6S/ojU5NgUcRoLObTatzX
	 im+ZtYKG/CK4h/wkZhZKgkldZFQ9JStKkSUiYePtW7I5gbPDPE8XLwEkIJ1kC2ePMw
	 e346IrYtf5pxl9bn/WtRe+xwr9tGFFkY8dxHA7CC3l0Vz+S+h9MwuNVnHrfI5Y0wrx
	 ZGQy47YGp6SEKRFiI+ed/13BTd3w5uDFlR+qerqYdD3lAnDLzNOqK2fiSC1rt38l+4
	 qFuOyLwRKpmbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC8C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833159359.15777.3858548969097697677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302fe7dfc3aa32006c13891caf07b6a0f30c45046659fbd394684d64f841173a
Date: Tue, 27 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748331593
