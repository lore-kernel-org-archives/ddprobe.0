Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB15241139
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763980314; cv=none; b=UTvKuht32OobjhNXTDm2GtHWSFK6/5loPmA6mXHvV0ruIftzsSA/rD0pFzzWCCxob40t3qJ6YqtFX4B0kP+sTftyF3o1/ecIfS1qH6AGnrOa/pDG9GUwv0s3ZpuJiljmlVbfzHsNKV/7c9xMNlrKGcJxcOojog9mvrH4PFxn53M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763980314; c=relaxed/simple;
	bh=0NL61YKAkVKVY/A3ln78lzG6EL+dv2XUCkKv1rrJomY=;
	h=To:Subject:From:Message-Id:Date; b=rPS8zeXWrNvcpTVqubX0IX1I7LofiYqlkshVsWxjNuuij8kuFPPMNMPdUxVm1nogPzrSGtnIyXkNFLq8/Ws1ByfQvfHUEgKONocZldHN3vH2IM1gp8Gtmr0NcgV/FkXFBiTw09JiRs/k2PH4OWxtv3UufDdea0fRxe9LVDBwCqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc49CYUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc49CYUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C63C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763980313;
	bh=0NL61YKAkVKVY/A3ln78lzG6EL+dv2XUCkKv1rrJomY=;
	h=To:Subject:From:Date:From;
	b=Jc49CYUGiXmv5rfeTPS1i8Z0bwev1z3IJ6xlYftGE5BHYjS2iPOa0RjBIxOKd9vRL
	 mgDKmu9uBxkWWxaofBxO2MVqd8YzK219V8aJwX7Q7xQbLlQz6D66gjn1zcWTNJ1w+f
	 Cj7BJhg1cbeMO0Psz8KXUdD6ZvYZEMZgCSU9ToaS08GnBSGVyuHji8QS53SqEv0N/Y
	 2gz1dhp4GQmT86Rzggd3z5lAg6y16VY3TzvmDxXsOgk/xMSJkXVbsfR39N4TMljgDR
	 Xy6Q/x6Jg9j1sNzH6fIcI2T6rHg/O6Bf3NEkbf4Lqk0CEyS85zxB9DF5LcuwHD26Ts
	 JDO6EJScQoZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218ACFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398031358.2978.15148477059126904086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee04fb16cd9f1d7f8e5d0d7c94cb6debd5885b0387878a746713a10bbf6d0d46
Date: Mon, 24 Nov 2025 10:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763980313
