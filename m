Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B38D7080D
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743440394; cv=none; b=CLH+QtN0+k2q/14EQfX++i024ObiRwJfzAfFMK+3nom8PinpJ6pZx+Y5LAk6xpe5SgyUQfbICZyKy9Vfaqi0YzLoeCbQoVJZV3cIPdB9G2okupAN5/nY5Ei3HrN7I3i0P7L3hW5KCwfKEY1NZ391E0OLsV5dVxEQ4jXTcktyy6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743440394; c=relaxed/simple;
	bh=CroKOPWfJs7m3RQ2n9UW1BYZ/MG1eoPTgBPUhGQrip4=;
	h=To:Subject:From:Message-Id:Date; b=RbMoExmhaCrZd37xatkwYx9CxStj+vxQ2Y1c774biYP2wffz52OGZVdJ0lGkXqIKh+/Rng7/pz+JI+ZPTMMKRTAYgK3A93/E5eZhrBI19beW/aoO2owzJDa/GjHwUP3q8ld1Wpm3U3KLlOrcVeS1dNQg82Kp5i2o2Qa+UFoiYuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeZ0W+6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeZ0W+6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68ABC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743440393;
	bh=CroKOPWfJs7m3RQ2n9UW1BYZ/MG1eoPTgBPUhGQrip4=;
	h=To:Subject:From:Date:From;
	b=HeZ0W+6xF/ZP56REFkfXIdcLnM1Vilky65TnyY93jcI/X41WrjH1TosibrtETqBs5
	 0TbCjMeDVVOWA/3LwwiFiyJCbJxY8qwE5g3hGInQbaqD1Flrbhewgbv1grrCaeQL7V
	 Z9/LEiC2aijr2+g11ggbJCH+YCLpkIsH4s4692CfFlS2jz8V8kSQrPMmPtkmZdfrXJ
	 8K596A5St58A5+waMlT2JQ5/nNaWQbgq23r4Ouph4vI6QfphGpArGc5AzzZTS0kpLF
	 Q0hgtw8ip76q/boB+wV9xAuw44S8DuJqb6FZHLk4Wv56HXR/FLthdIRVhop09YmqGL
	 Z2EjN0n75Rqfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A051AC36011
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344039364.18132.16506081915884664463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fb237baa2c790ffb9cf8d79502081c38e5370164d9fc6d446377707f1e3641
Date: Mon, 31 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743440393
