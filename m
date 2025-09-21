Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E11190472
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758457793; cv=none; b=EKQYdzvN1gHre46TGqTaIuCzigX3HChMdFqID3LjSkzdbUnlSh4brrDUjcM7VfqAAwJ/hcDwwwPvAKONa/Zbx5fybG7lgWGuOaU/x6NN200CixQP4Rr9KhoS20WBPsgI+dhm7a5JOPrYaDQk6qk0uNaazTAxyLfAMnxxP4DmXUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758457793; c=relaxed/simple;
	bh=vu4/AwR+uc0/uD2JVyAs8i3kPsMHUvbioq8I+h4JdnI=;
	h=To:Subject:From:Message-Id:Date; b=GbIBEBtZOgv3Ra4f1ejl+OZ/jlZ4vWw2yqSkVfhEpN0lwVfLt2u//ASzwieJ+nngkGm90IK9/KJJNffN1bAZdFqiWq0GE/n8FMKNLZ2O1uXD7EscJ/IcG/GreUOMMaJyn1LV5nIAwD/BuKJK0VfvhQHVCPOmEY5MQNpm/cA3VEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJ/YQufy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ/YQufy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758457793;
	bh=vu4/AwR+uc0/uD2JVyAs8i3kPsMHUvbioq8I+h4JdnI=;
	h=To:Subject:From:Date:From;
	b=rJ/YQufyfSHqMPyEPD/uwPRwXUYLXwd1jNCtYtv4wLDq7owZU+QZz/+oLKI6npOyh
	 FhlHUFIU45/uEZsIAWFYYB8y7KKUslbrJEGcLnDId8Nwro/wtSZJr6WUuHwFdi+Xx+
	 emOfrvHI8WM0K2DtH1bI5S0xCBYL43Fsrqzer9Me2iPz0+/O1vL6nc9YQSBdSsy9Wy
	 Z4cVjofOVTfuvoiUbtX9Ezypt4DbA94iH2E6QAtHssJZmJCPC8SV4mcpTc/1fau/UT
	 vG+fULqU/a1Pa8u9W/IVQCT/3wghbZtrA+D5bI4Z2439G/kiKw39xOwCmDy8T9Xhb1
	 d1oThEHoZr8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB28CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845779357.21951.4216794582506388732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36cd026b13cf4dd5b3cb5ca25748d0c0bd5f7f2710d2a20a8f684c6a7040195f
Date: Sun, 21 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758457793
