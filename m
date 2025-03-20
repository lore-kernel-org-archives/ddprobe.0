Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360CF1F7076
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742512195; cv=none; b=pTE98rEAtRuvRgeUM06zBaHtt5ktDWAI0L26EHk+rYG5NZgjGB/fdJPN10HRKqjwlKHmyRt+ngNYoNNiqWzcoXSSoYUhVw3IXBq5Z8jpLRyphqugjgB5HpvO5SmrbLBWL6D6cSdEEm5beLUJTzl2BT7ywUNOFWcePYV8HaeodZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742512195; c=relaxed/simple;
	bh=/zGlQueRGxNJFOgllANCSo9ZQJ6hUMuwTiY23D1dGcE=;
	h=To:Subject:From:Message-Id:Date; b=uVdk26EJTN8V+D/2x72AYcJ4bDi3g5kY4rlTzmnQyCUB6FwDJzMf8jEtV2MpL3JDlmHdyq9xzGLwHnurumzrb/RGruItmQxWX0kQ/vSr6yiaJ6o2f4nDC+jv0FFsD9YIYroR9QIt0PPnOZjoGRO5xRme91pjB3Wq92E0hhm2X9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/N84f75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/N84f75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B063CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742512193;
	bh=/zGlQueRGxNJFOgllANCSo9ZQJ6hUMuwTiY23D1dGcE=;
	h=To:Subject:From:Date:From;
	b=M/N84f75BWBX7Udq4vigdm4l4rurxqevcq5fCr0beKAgZa7EY+D0G65yrAxahvNDv
	 l7hKELQtqTSBCfgUxcZSWSOT2/YB2asjqJcEkFWHCdtrWESUK0i2aDi8kb3ETND50t
	 5jQN4cSJiNT/m0m5qP3VdetKFlPY14WJm4umKOvIm4h5a7HsYSNy1LZYLnlz0p2zFa
	 yj0tHvUOiXpX1j36dq2jzGDJ0nRiv6tttFzmZjqs0/zCvNaHa6tK+XRS1B8xR4N4Sx
	 8QgZ/P+eEUCNq4mEyBbP6IYOpTNUA85EacFxZuIBCEFlMbiRrBF3LF6Mr6PGTHX0sy
	 nklK7o9mMnDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E566C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251219363.3584.2367719113402410862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1cbaccdf2cfd545c54b4724d27d41e49dda5356a629ea9764f1799092668a1c
Date: Thu, 20 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742512193
