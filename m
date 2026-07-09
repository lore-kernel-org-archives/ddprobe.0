Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4971029DB64
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783585114; cv=none; b=KOu2fvQUgngdmbtY699dKCTfGo1J3vFAgTzRCX1snIC4Dda2erCSgANRziolMBP+XBvWgBrUL7pqzt4YaVJNlZOR6r5MKn+WdmUSQegNg12J5U/uvVuRJTB3byjxwg0e4CHo+USRCksu5NujKIROkfYzsMk4SAztygxnwEtDrfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783585114; c=relaxed/simple;
	bh=em0ThO06zBXPm3DBjWwZXzBu4WIzvXg7XBzvWxwX1HU=;
	h=To:Subject:From:Message-Id:Date; b=BIW+J6K1WSVJOAbYpj5nLjOIiHLgz75JKgm/eJZXtMUDGjwjersEkSDZp9FkwmuR2Gwo88fRYO3kZayrdYhfpi0F02INPnf2VpOlvFmEtZ++BP86TgKaVD3xVCTRMUFVFTDA5rk7JnbDu/EQJjL/42g2wHe8jjf4ZLyfazrbWNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrxixU54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrxixU54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6D4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783585113;
	bh=em0ThO06zBXPm3DBjWwZXzBu4WIzvXg7XBzvWxwX1HU=;
	h=To:Subject:From:Date:From;
	b=UrxixU54jv6ogbL4TlAmPQvFCRgox9ncVOe8dKPVp1w3MvQiY8FxrXhH61VLUHVk9
	 iyFsOWrvuycfOTRfPRnLz3atV1pkg9Ayv8WiM4vDYZESbUqRUe1dVEzT8AE3ksrGxF
	 2T1CUYREsmb8k4UZtIMaSxBMya2lzSQnr37uxiGDSHihN5dDjpyIUWyAWuZbEqxqEg
	 Xi7haHWLdfVSAfwYFqyNFjBZkDvUxL6nb0pwxObHQGU5vF5OeSntlhAHBL2+OK/Hht
	 OPchvfR7uRkQVQ1t+bGD4SgJLEB/rcFEvYAnJI7ow6a8YHjLoez4XfF2Wa55Fd7zGM
	 czc5zMtheIOXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD3BC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358511368.11500.17248618839805808811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d77c0d71a4a1851274726b1e6d31bf85dc4a20e92fbbc2fe78975fa17bdb978
Date: Thu, 09 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783585113
