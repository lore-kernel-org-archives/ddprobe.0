Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1212729D28B
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763827914; cv=none; b=g0M+32+P9/fv6cNwzR3QQ6Cy1UiOj9Bi3DSzv8DxykPn0G3OGWU5gkyeSPn33w8lp9zjVF5RF0oW2QvLbMLA/+SWfA8qw/Vns19Hap6Y5Cy8eE+E8WfLVQjCiC6orbwhlz+ogtOuuNv3c4Q7cVe9jvUnyufsQuOdUJ+VSahxjU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763827914; c=relaxed/simple;
	bh=X/GYEx0GklIjyeW0ODB/1CwMBQheN/BJEhEUHZBG8Xg=;
	h=To:Subject:From:Message-Id:Date; b=SQXRHL64Ixn/BW+bmpzZc7AouDZwYtkkxciNZP5gT9OwutWs54vh3HLZf+JIactmTIkewNpWGlGjNohmQp34NdTJ0iqEJ1Uj3oBdb7XeTNXAxq4Q9UJVXYGdc20FmB3NlVh+jaFU0zMxIoIBIda/frN3xrK+O4EaWeOBtFa9bcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBVBwWXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBVBwWXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4405C116D0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763827913;
	bh=X/GYEx0GklIjyeW0ODB/1CwMBQheN/BJEhEUHZBG8Xg=;
	h=To:Subject:From:Date:From;
	b=dBVBwWXb/KMLQ/A+Y1zuBmcQxrpAbQryrjVbuRPv9z1TDqLIdTwbiHWxw1MGJsEMl
	 Vjuq/dqqGvkhG22bZqm21AqD7c1T20ztUD192Ukyo48TpMshBbE8tR9AtwJEQQ3988
	 qCTdU7owYmcAfif2qE1YdesBohGWDwE5TjYu9neOwWsgu1jZCyi8IwFuM+EYE8Lbgu
	 EIl1iKad1S7qIulA9HJtgYHkfLRfCUus+XB7ugDIH+fhOi7Ew6EoYza506PxISklv7
	 ka8hZPXVVZaMb4hRJ69yEOgyDQxXWRwLnbMnStopvduqb1IsPIKQQZPyCfkTmxlW91
	 NHAIpZ/vl5bEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CDCFC51F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382791358.2456.11288500703674100363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707a45c7f9ea60778e86abf329ce5bb189db1b1f4e10dcf7e192af970a3a8908
Date: Sat, 22 Nov 2025 16:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763827913
