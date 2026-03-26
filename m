Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD2B39182A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774493094; cv=none; b=gKYedzbJh/+dqQIqDyYM7zx24J40rRMYVMXoXUO5gcUa1HJtZHWt5t+oseDbHOH/IjJXcnrSQpzGZOyApQkT/6jaS9wf7W3rzZ6vLwWGH28ajtrd3lxwufSvzq/sE8HvkHEM5WrJWMyd5GLzi7rD9RmSuuCNqy0wHO3aFbNK+uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774493094; c=relaxed/simple;
	bh=FJNW+uCxvYWW84eLDYkhUXJXv39CZ7/z9z5QaLTWez4=;
	h=To:Subject:From:Message-Id:Date; b=pyZ0MB3jdzKZQIXlUX+vqcefSlOJZIHrks9Yz4yB17gxKdovQsNfVxMlMDk0mHq9DAZ6rgBdIxHlLDze+0gYfrW1bulTOirAfiy3qRpUfK+8nsUr9HKexoLeDbNnDOtw7e+3eBC17mREi39gOQBryVNp5zd8WZtuMPU4+VoYoXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sq2SwnG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sq2SwnG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0967C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774493093;
	bh=FJNW+uCxvYWW84eLDYkhUXJXv39CZ7/z9z5QaLTWez4=;
	h=To:Subject:From:Date:From;
	b=sq2SwnG+9yqJrEq6Ke3Zq2aYh5432h1OY2fBm4lHjVC9ql4j89taixYf/IZOFFj76
	 IRBfxoIeCjoLHWaGXp91ZFsUzSXhtw1q+NdsrezUt62KR0PVufAbbbKThpQCtUOlTe
	 4CGxPUIT05zPadQFeKwENt/SrfGTdf8n7yhMGTql26n1qyGBgLAp0YN00/pUCM/PCE
	 tOH9oFzfb5VZo1fhl2xxy6B/bd+xys6BSvh4iGlDhrX+oqTZxa0mvz3MSOm+ZRm9e9
	 UevxKmdOn/BeZ6RTvGiNTP39fHU4mFuTp5ytXnpcIRdrPCzcYraRRywDpunYgdb59+
	 7KWC+0NbeZlfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8D109E53E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449309358.13327.14775534093504370756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e40354c1af29dea6e6bf6bc3abfa374da549ae438939d58a11577644ee0e2da
Date: Thu, 26 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774493093
