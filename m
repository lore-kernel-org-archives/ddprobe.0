Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DC93054DF
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763669514; cv=none; b=qI3bbkdFIO30s7BU2rArkLs4Z54jMTGXgiJnymYN7drogRNG+dA+eNebvPBQiZqF49kdEhzyQiqz3EVUwBd+fT8q7KAobUAFrv18GatV0W+03CmmUk/1wdJM4nYMULCIU8I04xAP+uJScaQD0WK64ewP8XLIE19hSYV8txzfims=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763669514; c=relaxed/simple;
	bh=h50Vheui9kyOqNqTPcwZVWny6MbSGtnQaAYFfoBHZF0=;
	h=To:Subject:From:Message-Id:Date; b=eVuAj725wu3MTFCEJf+x0P8aqY5+I0twAAeuFTZtM1GP7cpHycZxE017APCLhM+1ipRQ0j3ZarJTqlT4+fJfYFBgASndlVKYBDQ2wBstGvnf/l6Rrg290H+ww45wfk+tGxauG0NFQ+CUzxhJc5q0bbgLex/pDQeMxEgDCFYB/3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGVKstjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGVKstjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2782C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763669513;
	bh=h50Vheui9kyOqNqTPcwZVWny6MbSGtnQaAYFfoBHZF0=;
	h=To:Subject:From:Date:From;
	b=DGVKstjBPaX2Fls9h8w9asNzxljN/p22jiZXph6dTHxAhXV1/VTMU/gBG7iDi6I/0
	 CQJ2ard4o4ZE6Cc/E5JZk8p5tuX7d6B373303hWYxqD9xD1j+qrKjuWYujQ0zkAHmM
	 1Ol930H70DkarDV3GkuQODn2azBOWYDG7+b4InMxwP6JHnXwyPY6zI56rENd475ifm
	 /avQgwhv3BNcQpBbJJqmd1C52hIeVkX8JJgCDcLWAT3HGZX2jl9ROJ7Q+6afpHszyR
	 /Nl7XqifMOz7cGQyT5KUoTHnHhOOTu9tgkOeH7MOYGdz7nxT5B35I6DvkdOGNmMAti
	 ntAD2C2xopg8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92029CFA441
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366951358.31338.301626892261848090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9287a93562bc95b8a2741fbfc15dbcdcd75a3c4ce3bf10c0e7c62d9d1743dc02
Date: Thu, 20 Nov 2025 20:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763669513
