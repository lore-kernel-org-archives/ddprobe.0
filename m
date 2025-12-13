Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1210A1E8320
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765612974; cv=none; b=RCxrdltWkzEFuGlZPBsEOTArzKU92b4ZsAJQTZ6fFzBXzdO3EEUV92uedsUu3aJ0rtr62YOg+L1/n8gs95LPdVvhpq/1Tln09TvQk+DVBKIz4zybR3CfEqteXil3X4WFZl0a6zy2OzLfx0GHmpL8KJ3ePYjM9sODh36+eeMNwMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765612974; c=relaxed/simple;
	bh=mdSZVUaVf/Iro21wwFgitfG+VWXgzVpN81ue/XkLeNk=;
	h=To:Subject:From:Message-Id:Date; b=V68k+gEyLiu1LkDuxYFyAYroQ+c+R2/+fCx/v/DH6FqzL/40pQoP3Zue6xZH4R8rNpyQoW6fPngQZ6rJLE5AG2P4yUKTMCyzuNBRM7btrtjBtTuGbHia+3Hp9yQAYHNSvmZ6VqHM0z8zt0oJOcUYCRRAU72TwDScwMIWrnghwbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c052X0L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c052X0L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0826C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765612973;
	bh=mdSZVUaVf/Iro21wwFgitfG+VWXgzVpN81ue/XkLeNk=;
	h=To:Subject:From:Date:From;
	b=c052X0L4RwcmV0CYb1s0gMGYe23Mb3veCXJeILu+4SUYvUkwYQwhgV+xMAko7MIpa
	 09mukyQ27QhTR6l0YlbrTVxgAHoBGh9FA5u8YEnDiizv7AY4pCi50Am4w+VfCqDHAz
	 tM+70AYarsI1G+o9YHLUTaYlHuSbpGKLHpPiHmJkgsSj+EMhXqAB1SX+Ca/ioKwg0a
	 n+eTrNxrQrIIe1ChP/4uSFAwKIqYdomJZG/oiu+fFHiDTI5R4aAex6c7x0gpMRxwA1
	 +l9N6+6MrQl5HYHwTZY0M8/1Snay98Oeuq6YrqL4cSk/ITwmM8O6LZA3AD/BChKpC2
	 63FsFteOi0GWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D14D59F7A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561297358.11903.16551648147035596388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e423afe8f0700dff8e89a815b20d02d1188177f3ede42962de0cf4497bfd58a
Date: Sat, 13 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765612973
