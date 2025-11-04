Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AFE2E8B97
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762256994; cv=none; b=COh6N2s8vZ77OEXytYBWfVnCz+VHbGM9Tofh1IKYZ1KAa4tBNBrG+abowrxNrBeJWZveXs6Nwdy/5n5tD2T3i5IoxpM4EhQ/RI4GKm9DiAEpe2Oe+z4nZBGYge0L98gOzJIbAf1hc2cv8OFy+6Hsa6T/gmx3i9I7zfRPbE/BGLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762256994; c=relaxed/simple;
	bh=HU8Zw7tyDOYVIWIslxOydSDjaeRjF/PhC9aIneo3Ga0=;
	h=To:Subject:From:Message-Id:Date; b=baixuT0aSNENXRIAht7IM96muqVnihxaJ4M5AQF1XdZsBijU5Bk110yo8vUxw2KiVS8ldzHawcHPNe5KXhBR8+imbORefzBtoMQ4QWCZpdVOYYWnn6wZPn6GQ5oDbL2zLDjfJ+RF+n009usVd4AKfdS/Gs8/NTzhLAiY1PkZfls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9sL4DjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9sL4DjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8B0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762256993;
	bh=HU8Zw7tyDOYVIWIslxOydSDjaeRjF/PhC9aIneo3Ga0=;
	h=To:Subject:From:Date:From;
	b=m9sL4DjW/BDUn4F8d3HmTIshdyNrk2KwhrWQlEEa2tVE3R8FW3C6Ypjl36a0Duk/6
	 F1OQb6X2Erb6MSyn/HvC5tV1qDoHcSQvv4RQTAr+61sRwLFNnl37fumQFs0WCiSggC
	 vvsxlP9zRsjl305AmI6HksECETGbYtWuPA84s6yFurQjpwc4UD2zbAZRj80U22zdvl
	 FlJOdvP0/2ohEuWX3mvVQUJttmy3HN+r7WH9G+VSHTkKtgREauNgSMHtoqN2cttZIB
	 vAFecaHkmcXWed9E5MDriNQNCRm+tsq4QEIqBgkcBVf854NlsqMTUr7zTx8EOxwFak
	 xnSPr5jSeSAbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3FCCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225699358.8702.12612644453498973507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01637d2ced15fd33ec9d2255c0270c2ec7410d4a0f470e186aff25e5b141d970
Date: Tue, 04 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762256993
