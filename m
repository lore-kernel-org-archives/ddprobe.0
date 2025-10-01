Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B103283FE0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759358396; cv=none; b=bQJSQxVQX7RkpK/yf0B7EEejI37zUfJA/uLWssMXeSCfzweKo61pf2tKo51JqcIXdwjkAAdHZ/7WMd+xapRBcjQajdZsKakEBog35Z5JbvXplsj7kO1fPUXrgZuBznDrMEwtnGvv2F16c1eOX6lvbkZ8uINI+sIHEgI3vA6pi6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759358396; c=relaxed/simple;
	bh=atxaLQBETTkX46PvWJgta+rnDOdlgLGwGPVzNGoQQ7E=;
	h=To:Subject:From:Message-Id:Date; b=V8QdNRBoA2SzqYIyY4paeOomPVpm5nqQrB9Mu0ooYoVp1lVkvnMBpZYSaWjOjGFu6fjqcYsPMkRopBwSQoiaVqKksurq+oNiH/2EOZTw1RHyWH8z7oG7xGBlJW3VSqFJb9NAd+YS+nGgOKb4LA6cqdOr9wUIlEBrKlBHAaBfxCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTjbF3gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTjbF3gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F21FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759358393;
	bh=atxaLQBETTkX46PvWJgta+rnDOdlgLGwGPVzNGoQQ7E=;
	h=To:Subject:From:Date:From;
	b=nTjbF3gndWzX7v5Y25fY3sQ6ZoQuZMrDtDzlBFFC+9d7gz/MWvj07s4jhsFD4Vhho
	 DcD3l3Ge2lbdqqO3ds1ykuQ4eBcgcrQtBWwwnaLPSa2mpyEUrEkfFcey3gvQsFp/3G
	 s78zpEIIXk9QuierIiZNfBFBnUqstloS3lp3faGEzedXIjFOnqpK/3aELOPSvygL+c
	 X58ekiEQmC2KLMvXnrLmTdnVNmoKsuR1BKD9KlsTcvKE3F9fjYLARKi3o2vfuQs1s5
	 PEszBR188j2b54PUEz678EUu08/vPSGgwzaxzaPWoOJMj8pY0ERHcyWRTT6W4Fh4bm
	 lGErFL43mUJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95ACCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935839358.15721.481339046560363855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7199c7c34bcc52715ba6d3757de2ae9098a77193b19c5bd7e1138b310df2b2
Date: Wed, 01 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759358393
