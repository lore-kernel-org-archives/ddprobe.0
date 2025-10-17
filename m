Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3126919D082
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760670594; cv=none; b=RtnTQXXF9nIBI6ADbz5Q54nOUb5e8OWucGfEdqllyybOpjjK5CHdTV3GpprTo/PCaOyMuh8uJ7IBPQ6PYtcaVsYfKj0+db3OQA1VrVIld0C4hkT2bR+9HORanaIx0vO5PoCl9QLSRt1+ClNzwkeJc5mxtyXsJVSWB5EGrcNtZZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760670594; c=relaxed/simple;
	bh=X8fwkIAhoDhBWTFLCIcuIfjoXwD5aWdBZPcZxNSnBCc=;
	h=To:Subject:From:Message-Id:Date; b=cTTYEZXIfjfL7csA2PqwaTo7ky7Dze70ONmza4+iiYpnkV0x6B6ajJWQfHl8nMQnPWvukf8qoN7Ehaqul0tQV4nE/8A75+S7EtSpSgBb9Titq6d0eQpum5Afu2rdGeg7iuQFjoOMC9XBIY6goP2dwC7qgWcN5WaYWAEVzbfzjX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQpEiRcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQpEiRcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A75C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760670593;
	bh=X8fwkIAhoDhBWTFLCIcuIfjoXwD5aWdBZPcZxNSnBCc=;
	h=To:Subject:From:Date:From;
	b=HQpEiRcEe63EiO4HlQ3XeI/RokTSdULno2/SdDqhvtREiO7IV6hXBsm1nJtrfIti2
	 TeEI5tubcXNHqI5zxVkPRlTxIsFCBW5YIqAzU5WczwdAmOeVmMjz2R86FWRPEcGfq6
	 U3pTSoNFg6yLnc9OVKpRmj9Ppuq7O7qfzK20TSe8MQxRVyyI+T1MpDgSyUPAP+2sE8
	 JEs8nAKfJ3jQxzEe0QShJno8xaoj4/5sAOaxxDBxLrJj8YdjSkrcgIHQ3KC4yjXUMK
	 bQc+tfH41kRBTYaDwUDlQFyA4TFYNrZrJ7g8asKbg0L6fYpf1pR3n1fQLlmYeGNhGh
	 TV6R6530qAN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81DCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067059357.28400.7475187828232824310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca4e801e76fce222f6ea0ec98024d0be8cc26594468494d02132cf163c327dc
Date: Fri, 17 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760670593
