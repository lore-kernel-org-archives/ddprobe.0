Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0E92628D
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768076634; cv=none; b=TEaUyYHxVbTQenuMJDTaAm5zatvpKwnStKzHi2YfkYPfR27bs44TXfMRMId1KlmZH7mUXhMnVJ27UzEdOG7najVm5YSqo/F8lzCiE3jntXDsVK9oB2WsLT/S2XkkXepxkw+l1txzdg8eA63A8pMD868OVpbR7bTI/6U4STTX4Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768076634; c=relaxed/simple;
	bh=QdrkSkGXxA5eQSOhRYoeDcHaKxUsFfiritPXoQqz0Tw=;
	h=To:Subject:From:Message-Id:Date; b=q9RaSrSa/33qVkzA1E7P+C2yusOgAquyz2Us+gSCMXSDvrg5B/7FO6uiwiVKuWLd9gwB+D1CljC+f7XdHtCf8YJi6EW6m4XzQzRaf5EgqBNOPPSVArcXDquODaAc8KaggMitMS89hL/lwlzJf2siWluimnxeb7/gyHA81Kk1zEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks0Y79//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks0Y79//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6780C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768076633;
	bh=QdrkSkGXxA5eQSOhRYoeDcHaKxUsFfiritPXoQqz0Tw=;
	h=To:Subject:From:Date:From;
	b=ks0Y79//uJBagGF+9YwjtoN8uKVCfpHvtNcwIN976xoagi/W8tlsyYuSXbM51sNM7
	 rcUEAMD87kzVnk3YEBIjqQhFzzoA7bIBCynggLMFCn4I0Y6PiTDmaodyOU70IgkGKG
	 Rle8uqyBYdcSkG9zi4WegdDwC8JS/gBmIl9mH5+dq3dkhg+jo3avjV1rnnzrpJ/fq6
	 xrdnPIW0VuP0k0bHV8/DQ256nGl3ZBkY4VeBVP9An9Oc4snlkF9zrenmZKZOs7qpPL
	 Fgnym6add4Zup2rWCxaFFPE0SWWcxTh9ynuaI08NwrkqYUBge/8EKx6z9+JZ8O6xN5
	 mBmPG5vD6XDkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9546AD25022
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807663358.1190.3586208008213447953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1416ace3b763caafcbb816884de6f8b0e5e4d9c500f7d43bc553d3f1fb8c532f
Date: Sat, 10 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768076633
