Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C117154BF0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720533983; cv=none; b=Ae9fEqZ9pz1vEJ/bi9wRblqw9T+6doiM2NnL7oZLGBwfokP4ldeHR1HzuNLtEht4CUlUz2o0FDLfh324GdDIXBI9Olezu7zARmRdk+m7HxX0lVJUzHg50z92vfIi+2SBTZZhNkgijFe8OdD7jgJT9kcfcCYxJD9iXU9dIpTDJ8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720533983; c=relaxed/simple;
	bh=PDBtxj3ErlSnjjPvr3wmfPFKOoULj92RLVQJxfdFHCw=;
	h=To:Subject:From:Message-Id:Date; b=gqm+5zfZmngqEg/XdtpKeoUadACIBV4WNOTOBlcbNwMFi2O0qYo5Pq2E3IzQ6r3o9hVjCCe03XsKYfr+jzODsGiC5ifcOcOqGI9oV9p+ZuwIxr9J0MWisCLVSn3GSD3d7RdoGaqAhE9zi8iKgmZcvNUWPQEEnxfZYQLpRJTHwVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3jEMAF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3jEMAF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21AEC4AF4D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720533982;
	bh=PDBtxj3ErlSnjjPvr3wmfPFKOoULj92RLVQJxfdFHCw=;
	h=To:Subject:From:Date:From;
	b=u3jEMAF1YTjA9vnlSBM8v/NviVdqVivYB8hXACCjom2KjxvusaDneolzfWvoCATGE
	 hYVVdIHCNYe7qcdQFwQ/Qo8cDjQrz/k6xGqyrE7ocFHSCF+gGg8qP8+1wEG5dKJyTj
	 xh9yDT+dchuiUDI8f6kFY0q8Dw5LxIOLebzz6nYUDF0TiHNh07tcXe0d+3arpuF4Kq
	 nENtS1mGfGlJaT0RiyaqyyxEufBHiVPK76kyKV1YF/wMtRBwIHdsQ27h0YpGIbr+bB
	 IJriAmvd3rAMujAEE0CnP2Lnsz14MVK1S83xRQTJJVG9A2QV51aNPC9KozJcKnmeqT
	 z6oFzEDoPaUIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE37C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 14:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053398277.28008.6511411223179739186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be70f3667c5005ad731efb89f70186cebb3f6d41554c231910d3a6eb3f89194
Date: Tue, 09 Jul 2024 14:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720533982
