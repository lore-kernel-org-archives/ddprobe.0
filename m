Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C9F1FF7D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764283974; cv=none; b=qgpsz5dGqkfCOsOOvKzKsBAWVB1QNlaIZh9z4jwG+N05QdQe2ALlfGsMlYeRb8b36hv73QFvorqIjVjExd7hltv62DIPGM1ffk6iAA92fnR81H0FjIfO4hAiTXViLe8Os7dyUHDdKm0BbVC3U1bgyf3ErkwgJ4cBR9ODfe0LhtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764283974; c=relaxed/simple;
	bh=ZRqHE8ucnnJU5J1n6e+l4UBxGJ2Y+/2uIk53xXEdYEM=;
	h=To:Subject:From:Message-Id:Date; b=OZUqwW8lHu1fSprHiBeKmaq9TCo5sJiATx6PnJGoWrPL5cWi6/Fa/USQSq+TxC3e2k4Kjq/HA8ESWGKPEvP6rJ60Ykzdonl45Nd/eNHI8CmaPthfarEl/31MZH0zzQfKmYMoTs9WnuKz7XUF8R8K4CqnOSo+pAd3JKAT0x2bVKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkvUTxzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkvUTxzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D78C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764283973;
	bh=ZRqHE8ucnnJU5J1n6e+l4UBxGJ2Y+/2uIk53xXEdYEM=;
	h=To:Subject:From:Date:From;
	b=mkvUTxzPntAPHhQ9bhO/sd9BNETrhTllpJBnoLvdejqNjB4ZKiRfi+lMbuDulp0dy
	 7CD5Op3T7mfbOiueORbTziAS5UrEh6vJymadR6VQ+tkNATvUJ7m0wM6W9MhXLTszSH
	 4A/J3NeoVOjNsUPY4Hpn6x05StyH2tbgcQWpTYomQE7QTBSnuD+sk11RgYZeCpAdFc
	 phO39EZPNCqpRYi4AD9TZHPzVQpey+c+ZxwV47Z6NlgnXKQjHz+4vNlLIikEZKY41C
	 +73TUmuA+tg5KJyV3SmJNukZhIJzGuf9h3eRa+wNEnfpSsOuSQGfO2GTsiXl8oiqGU
	 gRTQ+4dRxoaCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D116CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428397360.5987.10627760657764046524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c82513bc9f94e52212b0673fcd9a8d00074d25329721cdadc8681c90a25e09
Date: Thu, 27 Nov 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764283973
