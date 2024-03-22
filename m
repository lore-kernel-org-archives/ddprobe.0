Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB684501E
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711111097; cv=none; b=a9lefyxxORtM5aL+8TDCRtPPMNljfy57YvfGXHaWhtQNd5pkPAhFoAxngw6y9psavdWfFkmDR8RiQMh35PRk6MnRKrR8lNs/+wgPHHhdH78yUtXLoirPB703RxepaSDLmV4mn/lk0BLDTmRIrgFHUbyTJCw2ui/tWr5JzhW+X58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711111097; c=relaxed/simple;
	bh=NIWOfbU5+tJ3lEjPwnSA/c7lL30boax7CA4f/GVqXNo=;
	h=To:Subject:From:Message-Id:Date; b=hf0KNbGA+pMJ87buiRGPkRa4z4VLVjFD9vvOchA4QqzNvMNsWnfc4zRZzfgFqOnhDoBru2NPA87WQ1GKW8LPmcRF1zPL7x4MJPrcnZZJppgnAxoNTVxskERDyHXwt3Y69vseg2taZev8pwqKanFZAR/UlRkFRM3uJ2vJqUnupjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe/k5CUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe/k5CUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708F0C43394
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711111096;
	bh=NIWOfbU5+tJ3lEjPwnSA/c7lL30boax7CA4f/GVqXNo=;
	h=To:Subject:From:Date:From;
	b=Xe/k5CUgY2PQKGdGZIrZOIAHj9nTjs7cL2ydI3MfUwVQycZrRUTi9r2+ZhGjqEUR7
	 ZQ+JjobC0fYN739jLRhIGvJLpA9osws4PK0DSziq6XRKdexSOgB179mUDBde7GuAb+
	 4I0kHBbH862R9eoDb60wl0z3c7GxVESr3QBM8P0L9NTnM/OO/Dsk4nEvgwcwWb0CON
	 Berp4OQtBF8m+oYHLULfeH6oZUG2UxKUkzTk2XbV84xCFENkNfpwgzSskCM0IVgHzD
	 aUK8YxH0dN2oizkmbgz6Z5kPOo+TLfBalxM+AY0NaGDxxmi+yWIM/vf65PL+NTuzu8
	 zt9mes4yoWctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62302C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171111109637.27210.10873488314064050069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2cbb9987619407203f6e57fd413ba8dadf3add9aa135ee046db8315ea3576c
Date: Fri, 22 Mar 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711111096
