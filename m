Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7D02BCF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763832114; cv=none; b=qPOm8vXXJyvHgy1ATvZ/PScRVBaEeKzDeREsvdTSCm1KNEVwNpj6vpwebqEnO6y97tslOl854QjDIErwOFWTGRPlfSxxP8cmzBW+ij6QHHRylg60KI/EsfFc0rJzzbSHuIjL7capLMUCgrSTZfE5XWUHlsH10Bv0AYn4UpIZRKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763832114; c=relaxed/simple;
	bh=G4mze8hfTY/6K0RaCsHS2CXPO/J81mrIk9YZ/ybZUtw=;
	h=To:Subject:From:Message-Id:Date; b=cXN935nDYmy8HsvfhGyuslCPNWAWcSkVsYWIorvV4+CfezOWUnA5dUJ94MKoivlEkz20rURJ4tRBfjaruheRAcWlhYjxpQYemKr5TmDG6RPCnMQSgGalU9Sgjya8bKKX4kXZmm1b6zb6ItG7iIdgwHB3f+Hw/DLuK/tWYPZolPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5gUWFro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5gUWFro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5238C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763832113;
	bh=G4mze8hfTY/6K0RaCsHS2CXPO/J81mrIk9YZ/ybZUtw=;
	h=To:Subject:From:Date:From;
	b=f5gUWFroUpKRpXQOPTNy4QnxJ2k7GZcskjr/Zkv1qAE4IJRTJAblssP3OOzAWBGIs
	 2V+dWf9NOg2W3APTYNviZxr5pWaC+7bg1999iCo8QwwTFyDFx7BAKTRAiLuVeVBBOk
	 55UJjv3We2waHUDXpWZqQaXDsYI/NxY5nmtnpvc6yTQZi0p0da2XrSRw84kI+G43nX
	 LDwUVJXSvgmyKIS1uuTQqntigVvofGHAo5Tv3ZHpRBGP9McneudcUp14no3jjLO52o
	 50hvErbJV/7t+yIfRfcurPSAUMuzrQWS8Ap08wJFtA2iFtWzrgZD1vOicKhFfvGoMB
	 u99QrGFJ8lVNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92402CFC522
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383211358.29815.12340656618581487609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433b9281157a6a7775da7b55373a50b07aa69f67445b9dc8f7cfda60fc6d29d7
Date: Sat, 22 Nov 2025 17:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763832113
