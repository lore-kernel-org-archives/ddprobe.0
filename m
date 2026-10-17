Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DA0380FFD
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792264234; cv=none; b=oz9FVI0eQAcZPQCTQbQ+UMtmXiKGHBdLAlPfxcohJtwbpI5lDSxMpai6G9UrOY6GB7YiJ/VZ2HxJE2z1HW6zzNsQ7cu1vGJGuQ1r87AkVkD9ER6KSUd4VFK5AvFl0jZJPdIO4qxGfh9mBrrwX4ufNXzoB0GEtikl5p5e0G0KN48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792264234; c=relaxed/simple;
	bh=e0RE96Wa/Iyn7xniCtTlAoqrdmIYkw1jKOlEPtGdNws=;
	h=To:Subject:From:Message-Id:Date; b=k+6nlIIwT+nvXrNr0Do4+ZbX+blyEnZuNPviIZMWLu0LCTfpig80pgWaU1V6nW1m/ZRGpbu7AGEPo+TocZUhK1gTdrAmswdL56s4M2pGT83VOgwx6xfM6n8eMnoyDyNnvHA07vgJbU/KEpe8ijaWt8sJEerGXUVFEcmx6FiuMVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYlh/Pwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYlh/Pwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE4AC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792264233;
	bh=e0RE96Wa/Iyn7xniCtTlAoqrdmIYkw1jKOlEPtGdNws=;
	h=To:Subject:From:Date:From;
	b=iYlh/PwmAYIMCA6TZSynTr2ws30992UVJvrdx7vYezkp5Vp5zUCvxA3Tc1MrQiga0
	 OZ0gufrEdRPzeTt2hJbPUW9QD+knLQvqAqaBVa38QmGRpQvDgKWaBK6R+IIO7T9Hi3
	 Vxx1p/K3V68Lpfn8n6ZNx9OyVxZLkn407riOzuzeV53M/B7rqw1EQImfTnd/diYffz
	 ZUQm/6kbPYOYnpbui8M3S5hzOnwMg3snB9gJ2LbCkEe+szj673jDmqClNxFYCpfgBC
	 5Fdv7UqTQ+seI5+6B9tVjq9QUy7CABVXQtrGEPVrwqjpHSLC+StEvIV8cf1qU3Qbeu
	 WM/fpFjJU6P5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC826CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226423369.5281.4726798708718348089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f6d9a506a0df924674bf014a5c919993fb8b80a07339f5d754776570468c5e
Date: Sat, 17 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792264233
