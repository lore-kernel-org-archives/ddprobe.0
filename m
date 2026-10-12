Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA3C431E49
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791789634; cv=none; b=tI3kiefjx6mk648ljZLRTgHvT5U97LN0toJ70nfbseGMpUaEj0SeHbSAYJot3Jy/GDMuKZOpr2ICatJsmdjRXJZawIhE9+HnJXFuT42CGPkHvo/ptKsu1PBTuz9HGt0LzZQ+yM+0IZ9jHxxaFv5S03ZMDWMW3bR0TxL0iJQxN6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791789634; c=relaxed/simple;
	bh=OcsB2KU6I1tI9URyAtGSQpc7HAs/Gd7yO+/mpTLw5EI=;
	h=To:Subject:From:Message-Id:Date; b=j4fekuwTyJC82brW7N937LNjsN7U0tvV2N2/XGHiQ11GXx8WiC7RJh8p/OtaSA8caNHEElI+BkFAcKLqqwRChh18njB7Se0vxCpPwBajYeg7iSeL0FuDW8tLv3VVSp84oijlNEdGN660+TNx3gro7V9bLr/vpVAP77bk7cb6zg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZtDE/eS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZtDE/eS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D054AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791789633;
	bh=OcsB2KU6I1tI9URyAtGSQpc7HAs/Gd7yO+/mpTLw5EI=;
	h=To:Subject:From:Date:From;
	b=CZtDE/eSKhJv7FrnVy9qVxH3NUrV3bNBTRGctJpNpVPvAAYOa9ELNSSIBQAPa95Zm
	 7cHbboT+kFz4b755wRzwtxdryud0QcSkt15X4qMC9BUE5nHU5BXByt+XWbbCaoEfmy
	 vpPz7ui++S827vjDxPhm5eU1nccPJRacW9ZQEs56zLvQg3TCtJj7xEo74KoyVLQO7T
	 TGpUTu62qV1sjKU8Mm6dGGF31AOYEhwSv+gx7g4iZCIHlP5dPu58Xp14cP2AtqE8cD
	 SS00Tjezo8wCzMDrPiOrsHLnRSi87WyCWedH71bZmN+017RD8v95UPXZdEeSatEV5S
	 9FWo+IuO57acg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABACFCA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178963369.17963.2262910455425794026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122a214ddd8a242f49935790fb8b4a095e770b6cb808dc91e48bc8f40bbe6eb6
Date: Mon, 12 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791789633
