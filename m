Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE5517AE11
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722954954; cv=none; b=j0DiFkflywfQISBX39PupvxDXDmB2X8W6N7LxvLqzObKv17UZ/O6Hqi09qHW97vGndzsx04l2vjjPmdOCfDD412QuoA2d/QTBdzivZeDyUpHw0aPcDGAb6DZTos+e8ObzItfqvjzoXrbT8uT4f5ilWB5xg/MOaUdfWPSbliSP7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722954954; c=relaxed/simple;
	bh=YpjPnpsYaIbX4QJr+9qdokaT0EBuYjxHV67QWbbHF3E=;
	h=To:Subject:From:Message-Id:Date; b=KE920R8LiZQBqR26wtQdN8viSukLItuavn3bbnPyYPw5It8EEIeJc06ly8lu7fd4T/hvVyv0jKKTtDFn39l45ZeuL+Z5xc2GKl52PS6QCBVOXZR8Lr+YdbZP4Ck5286ZRiZhKSwp0Uxb8EGOJ0VB5YbwIQ4W6B/bpB35tCIfDts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIMGhNOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIMGhNOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA944C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722954953;
	bh=YpjPnpsYaIbX4QJr+9qdokaT0EBuYjxHV67QWbbHF3E=;
	h=To:Subject:From:Date:From;
	b=sIMGhNOzJwgKNCaAhLdA/Sd/IbGzKP0c8njwzB6wiVcW8f4SQssX7anPDdA7sBX2w
	 flqn+AM/zpzYkl5vQ0gR+jF377oiy5zVuYAN9U3W5JmhM/M9YvUMsTsUkh5w3mAnlX
	 iUDm+rOKby9B2REqwlcQ2KwWd+9kvQGR+tEwvPLd1X4jy1VOG/V+QmHp98A1ZTdbCC
	 aOJ/7t5G50AJCk+icqdewOcL5MnbesvReNp+/Ma6wutigsa3WDz30cqvnB96Xq/ai0
	 CYjm6ODco8o2w6Cl/3G8nqutW5meG/CTou1VGsUsKbjk4fI9tLr+xn3dMrJZjdYsmU
	 ozGUAlhKWU9hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947BFC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172295495360.12844.18265964567578632321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39fd716c97f246215436254ce5e2a24fcf2645d09c40ff18a7d3bc949923bb7
Date: Tue, 06 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722954953
