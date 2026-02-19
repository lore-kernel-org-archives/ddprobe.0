Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1395B326927
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771496094; cv=none; b=QmAW5BeNt+XsyGbb/5R0cF1pTAsrLT9nS+aYLvmVYyZUAjRnlvwCBkN7wXyPBtUBLv9Qcbi8X2ziNI6fC4iP2FpLoRIk6JmjycsKQFiPLOAMyKlG+CXIgOPVbIgEjgf+TPi3A3AvAFHx53Nge9PbY0zXlE96jiZqdFo5ZgAXv1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771496094; c=relaxed/simple;
	bh=iHYcsz01Vx57sv1hTqNkPYT0jjw8QNHMHbFPU69Kyds=;
	h=To:Subject:From:Message-Id:Date; b=VGJv+Ad1nv65HcoQM7TiUavBIDakRoDaEF8RXjip0jO0Dc2dGuotFNzjvTWm9QDxLrJ4pqqQDyeglpnfr4gJwSL7lWD3KRRmbnCfNqi2wxfyw/aJEkPekWt9kQSi2gxzUkD5wMdWx+T+zF0RwtxvXUi8CPbFscYScORHvzdxn1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOMEa/kX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOMEa/kX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FFEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771496093;
	bh=iHYcsz01Vx57sv1hTqNkPYT0jjw8QNHMHbFPU69Kyds=;
	h=To:Subject:From:Date:From;
	b=BOMEa/kXbHTMjo9966OQlqe7T4cM54nIHWvuTmNOhdsTsIq0IhRPZjhy7KeIfvjrO
	 n0O29QPzDpRvXRkM1ov+qoEV093mvGiE/78GLKo3sfICp+l8rBEnkUc9WXMJYEYqpa
	 1NKwIq+DDm6t6E0ohTghncQSTd6d4Mr1ycwtjui9dTjjxDfG/4IPMcZlecvYYVSwf8
	 GZ0lfmlctmbbX7PJUrqV/xW1oqgdUGvAiRG+vv/3vipymn50Ri9Mj+du5//ZBkQfTR
	 /NBrmtscFsLNI2WTZCOv647XAIhBUE6CSJ8vZHc7IOzYxtyZmi508EvzsUGKs486zF
	 3oWRn6mJZ3kqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CDCE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149609359.19427.1145880451662153543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf4214a3218040208310e402d07a9a636b45bf688036da82277cae86fc17575
Date: Thu, 19 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771496093
