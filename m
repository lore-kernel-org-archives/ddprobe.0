Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A64D1FA859
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791097834; cv=none; b=hr0+WMFUTUdWSdIZXHi3a+Q6qm8yK4FNiESSEY2MV2qZGZJAjxmlzXEYi7go3iAP6z+dUdLw0p8hbjpSEWDego3yH8ZkgB11jSWyuE92tRZ6YjZdvaAqtu0K8a4ij+zfMmO/0oRNrs9ppCZjPJoqTYtAWoVy7O82cCBSgbZBcPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791097834; c=relaxed/simple;
	bh=lXxEgrwhN5jSAv9My3COk/BOYb/ZyTV2s7ZAoZHMSEs=;
	h=To:Subject:From:Message-Id:Date; b=dsHtj9bnNIL/rzGHcIL13dZwzY4UJYPogWjJs55PHbINksYF0+9bY7lEzFGaPh7AaS+QLoQw2vDUvqiLoJwCxlPnfY29L12PWPOrDrqc6EYKHZoXkkq9MupwQF1nt5t034lov2dpNwEYhbSwuOD8PG6r/u8d8pFqzY1qpKSSoGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQD8kQ0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQD8kQ0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A68C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791097833;
	bh=lXxEgrwhN5jSAv9My3COk/BOYb/ZyTV2s7ZAoZHMSEs=;
	h=To:Subject:From:Date:From;
	b=HQD8kQ0H+F7pA2jxnPbbhbXzY0By9Xy0v3KwTpWLkD0pPmejhVbeu40fugftUVpsI
	 Oz3ZNxVKLaPOiM6+oB/1n7XNbh5c+PYCwtS4a9BKx06+W9+0ePNBEpNvlS0k8iyOGK
	 R3Qy5PYkX3/jW9TRhaTcNwbXRBrl22Xmknwn4iKY2TV3nTzeoVGlbKxJ2s0kYTsFYC
	 e+5SQS0el6Re53KgmWHffikvGZSK+kC8tnrgnCSnfJ1+mJF2fiap0YobAkIBv875u9
	 EJ8o2xJpAyDqYw96aRJgdFEcFzvYwwyfEuva0YVE5aEsenpB4phnQZE+Ttkcwc69Im
	 Cn3ZmW33US0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCA8CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109783369.20444.6715067234626917257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f00a9c800efc7e158a3fe6497f65fb8ce76cf06680859c25dd33aa4e09a6a43
Date: Sun, 04 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791097833
