Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEB82582
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721966154; cv=none; b=XYFzvn46CkSO2TJTWdsaxGiPhpu7kK0gV+Al+fWK+7uJ0i5wBBd1F2nuQY8ZNyVc5eDryHvehOM/h4qV8vTM1fiqUpxZCI5Idn7FKhVie77RGxYpnAUv+OHiG58BtMOc9vh4ktcuqyzgj9Nt49R/VmmWD1PlUj6zPZgGg8f4dkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721966154; c=relaxed/simple;
	bh=N7rSoi13Gi8AS4VcyUvzCgIY55ougEP1qjg643hRLRo=;
	h=To:Subject:From:Message-Id:Date; b=OPTJfNBIvBBEDArA5rOVxvpetdaErLY+Wi2GwbA4S+ER5h05an5/Gfjf2zWFldnGQ+6QixexQ3XkH05dKgagfHZCaS+Xc2/D8BZv6n/04f0Ccbr9TNF/qLPhZmOq/n0axZSOZuPqbB+pfOikF94cE64goBwSeg07MKz1u2DfN1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8N4CMgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8N4CMgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA5DC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721966153;
	bh=N7rSoi13Gi8AS4VcyUvzCgIY55ougEP1qjg643hRLRo=;
	h=To:Subject:From:Date:From;
	b=C8N4CMgomrY2wB3BjRKwHabDa0c2P2pYnz1j+jzYf+jzMiksfUxolQvyV55wOOiO8
	 r9eJ4q86DSYhRFF7JQvVPS/X6mB4/EDrt1TW2yild2kio+IwBTBo87fflb7MCEZeRP
	 E7D4LNuoS6ng+zCUzv5s7yeFO0J23UOHXawDF9OWIsxVv7ZYlAbzOrTVmRXn7R6m0A
	 lqum9Ttaw2AlSDVGd1inY2VGn2z9f81jTNkiaTAk/myZ3DNtGcUlk+HZM1vcsFwJir
	 pdwkha5+Kt69HLlwqzbgU3wW+1VNrrH123JeCEDpEspe4Jjaw6psGkoFya7zSpL376
	 AG6N3l5cPw90Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975E5C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196615358.17279.2242872289002228673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64420bbf4d2f4185c51c4d5d9ed8bc8c10fce913170e8c58330dc19728a868a
Date: Fri, 26 Jul 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721966153
