Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA983E16A1
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778934034; cv=none; b=CmM8jdw4eSOAHGcSAWz8EvmG3QMoXX8MJ1zaNhd1jlAW7JbeewCjczthi4qUxoygsSE5sxD/lFkYYf7W9hQ4zRI3ajsaT7ECgDh4BjKcMqm7kmq+BBGJ1+k+qR0XIEYIMk+g+2zWXLiCiY0sQmzqgwYwXwqoRdEhcWOCMgN8ni0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778934034; c=relaxed/simple;
	bh=VCBmpRuVpgJ+la2+VUiqIRJ88Knr/ArTOwil3wpWPzg=;
	h=To:Subject:From:Message-Id:Date; b=AxpYCE2bMDBTe6ek0L31Xx2Kb/2KGnczolcU85oYgKVZCw4CJpD9bXS/BMsIZc1Hqe1lnPZiN/BN/NHhjmu4IWwEK683TMvOlvIo1svKepZMUAOXZLtQkXh2gxG8Q8A5JsG+VDqjYfD5c62UVnUREuaV9WeN7Zta+3uEDcxX4Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh19ZQjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh19ZQjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85E4C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778934033;
	bh=VCBmpRuVpgJ+la2+VUiqIRJ88Knr/ArTOwil3wpWPzg=;
	h=To:Subject:From:Date:From;
	b=Oh19ZQjEdST5+OmUGUo1flUcNK7ejbc+ZSDBrqZyyhMUNEGFKukQYD9q/q77BXoEf
	 y+sQs9sm24OaItU2/5bSLJcaM1anVs1V4ZuijDKW2kr4+NWZQK7xgAlrWHnIo5coQl
	 Ssk+EIgndEtLjwhNkHYdoPz27EbzMqk3cQ15D0X0dGJStIqN+y17e2nBUBmh4OfF2d
	 e8rrqAeVsY/b6OWFg+OI2HMEwmMV2p7KXvwF0ocDPuVpKOpPwIKhvtCvRYgEjIZw1r
	 T49m+/FbmAhINX8SP9tX0zcjq2qP/1QMS77abiT09tqKAXet25SMHMn3VIsm3TjiSu
	 ImYgjSTi1o2oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1888CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893403369.2164.10824649966959300677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a88c6fd45b7e231dcbd1d6d2a28f32e5573d79fbeeae473d90cda685045a54
Date: Sat, 16 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778934033
