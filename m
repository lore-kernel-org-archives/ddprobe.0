Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A2B18E1F
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735239354; cv=none; b=kdBYVpulPBPtl4g6cqJgrL3sVDZmYpuZR560VaBqDJyjwkrWqxlQiIpTpeQ0l72PCxyR+biZ5LdM0kBU0DZ/To7hEm6CSz6owabPtNpOFM8HHKtCzxVrYqLE8V9cj0qv9DM214NPZFWR+uJxlshoFGK/6aKv2nmf922miWgUYm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735239354; c=relaxed/simple;
	bh=GjDOOgHowHdwSBAQYvRm6p8gdnoSMTmhTltMstm2MB4=;
	h=To:Subject:From:Message-Id:Date; b=rw1bCy5iQtBAhxx0IXIzUn1B/Ojjm8TirysU2hTy1Y80+Y6+Vk4IO5i8A6NeUXuWQ7w9Z+u1QLhnu+sjSk5njz0Mawr5d/NrREBSSRBoXtuJ6GoBIideIjzqxsXaAOODV2dFhR7/67U34uf9CRsOgcN0O1GwRUBPP3tcRLfyOWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Os+DpOHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Os+DpOHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8BAC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735239353;
	bh=GjDOOgHowHdwSBAQYvRm6p8gdnoSMTmhTltMstm2MB4=;
	h=To:Subject:From:Date:From;
	b=Os+DpOHUpytDOAgVdb4NT1M7rG4DJIbuDcAXatOSlxo0Y4QiBTnOn4r7tFZlOipra
	 LjRQbri9pc9eLdstVUXt0wDQ9G55heOMquamAcc9Z6wrqG5jqeHG6bxyswMtq63/ew
	 ng8UPFZ+aC9NgTgnuJNXzFtQLlUNmVZcrZhdbGArldHPx2kc/AK5XIc/7wRVdxHPbf
	 Oxuqh2HNk4lFsURRqgYMZ70GUKp8nPGoIDD3Du2FcJIwPYUcTaB41NbQiPZuRY+vSx
	 AQfgu0oOwomMszjmaKlqZnHmDtpnsTKg7mOJlsNIY9N6nfXXV6oVblpUlcavVKnpOw
	 LBy6XleCW7LMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F02FE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173523935361.19028.8586192236340977470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4322aa4bf2625126efb12f882a8ac6ee35539052dcc4c0cbc0248deea892930
Date: Thu, 26 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735239353
