Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC781D5CE5
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751566794; cv=none; b=iIon77I0KjUWlytK/DwQoSDL1kxK16y6ZZULJz//l4imgWexRknYpNV9K93QWsH7K/FPD3IBT0W01jh6AaTsBfCnAAlHAVTcSK31UL4t3IIsuLNM7sx0M5xHMgH22mtESgpJjJgQgvmvH4iBTNWbl9seD74tcCJ4O7OOixnABa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751566794; c=relaxed/simple;
	bh=EbdvCpOEcVNW1P+8GwU0hjv0njFemzTjBxU+rrsDmHU=;
	h=To:Subject:From:Message-Id:Date; b=iWgrKxb4kmAaSO3jTck8CSNhF5JmBzIo3N9rQ/g2cA0Y256uaq/AD0mC9hU1aRnwi/jY8ETnTyiPySYepsfCtWcYCmr8GBA1iFu2oFgMG3iBwp+J3d9EYDoWNm7rc31O92trBcFDHujdAr6to65bVRX5xcr1+q63Q13c0VbB5oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kB9ZV03r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kB9ZV03r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751566793;
	bh=EbdvCpOEcVNW1P+8GwU0hjv0njFemzTjBxU+rrsDmHU=;
	h=To:Subject:From:Date:From;
	b=kB9ZV03rtUSwE0Z2BgOCt98CYFWR0s2/zwcaZuawfcDRZuKOrqKywHe/uu1RPx5ng
	 36W6L4qkmDr5rnEadnRhpPKKMg2lLD4fjfqb6HHyyG/9LMq5+P0FIZLyHXw+4o8wZj
	 vlDXSDnM0/zzuleuCl5WRgFD06IImWHHJSA079++YSR9GaBbc0dAGXXhxvmeR3IbJR
	 KbCOvwYwMkjuKA9juChO7DqnSpDw1IPlg7V+5hOdl/D+lN6qGFNWDxnj99KV6TAq4B
	 oQInpDdYSshMwcFRfT52BdotIS/vynMlpfQO6UDJeiH1TDehq0w6jEGT08VEBvgc7m
	 kj4JvbjN/U4kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9564FC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156679358.28067.13892334216673532638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a8e673c8dbf10078833fd33a7bcb6993781beeee1f190737f64ba8d8a421ad
Date: Thu, 03 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751566793
