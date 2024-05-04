Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BFD20335
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714828343; cv=none; b=RMVthLSDQKuL5d/Wczyt7H+/ZO0cnsPnDzUjZuUYlfjAYHAR/p212dPXO1Kr6KuRtKXKSjmRIFF6lZ5UehTz89TiyzJeCC3Z94xcqIgl/l+Varn/zksuRMGJyQqJiaiHF60xQDObpzI1cUhopfHjUvJIv4bKQdqPafQZj1fENKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714828343; c=relaxed/simple;
	bh=PR75R9G9vhxRJSt3MUlvP5HhhH6s18qVrVqxYYkXssc=;
	h=To:Subject:From:Message-Id:Date; b=HUidlDeUN/Wajh+CZ/j+rs1Y6Q1bd2qGLBQpy2r1qtItW5gXpRO1zcFnrCnANe/WWTmoxY8TW+QrjIdM9PRl/CyXxj2s4CpEwWxtz895qO1SbOgAfvj9Sf/01PblyQ4loVX9vJyON/FcbZVAfRE8wuHQGF+vt3HaCvOoWBM0X9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erskSjjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erskSjjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09BFC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714828342;
	bh=PR75R9G9vhxRJSt3MUlvP5HhhH6s18qVrVqxYYkXssc=;
	h=To:Subject:From:Date:From;
	b=erskSjjjS7atpDRQ5M4VTJY3EltTWmwiyen3SqgHJsxjoCafpvYYWSFMjvKWH3x7E
	 AF1KrGvdg9x9U70JcIcMIxDTZ1p932RMDAvvHQgFgDIFCDobMZrJ8+hhZKTeCRgjQN
	 OWVe1l1KdxoD4qZpfeVBFtYCBKuwrKeqFvs86D9KizU5zM/AFd9XGVMq3TYgNSRGbq
	 QDqlfdHBpz02x2gVyHr5HopnP26y37fv/sCTw+M4fLQD3nySI+I3aFvVyudvvUfO47
	 fJ0jLDSi3XnQo+L5FG3YL0ipjOT57y3CUPM/4Dmb7WHDupychw2rTyzYfZt1emXu6q
	 +aETQQcE2TRiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0C5C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482834279.22761.3469225226996984942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6200d5e2f8b7e9006d5b9b63b9b0aee4ac0c292daa5faf2d6383794a28ef79
Date: Sat, 04 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714828342
