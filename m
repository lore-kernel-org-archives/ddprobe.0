Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348DF38BF9E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775558734; cv=none; b=uYBns9o6bnl/X0Xs0AGxizqWlx6t1u+/DrxNEnBG/6+L/2i7cMy4LfviViXeqikrui+svV4wvuwlTlQ5h0y9xdXtTOOSYpkYqDdo4hJHRnOFzGgxTrfiaackzsg8xiZeZhq52LicMWsesXvkN4VXx8+mkI9vC2r0V6EyRjhFGbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775558734; c=relaxed/simple;
	bh=7HI1pFhDPLs7edqhHeE/gVx82qreeHUI91rd6GdLj2U=;
	h=To:Subject:From:Message-Id:Date; b=sM39KvpLcYymDoyg57YgIwOe5yJlDGgUGZoyAfEPXa4gi765VE2cqcEJUYSwGsGoEvABd7CqDcu/6kN9BigKw7nwspNUNQx0r6ZpVixl+mxRU6SuHAv6ytfDdQftMcRZ5dovC/STcCy9ovELu8FsHtY+kx0F3lEBKmlenXCvtuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5t4TeYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5t4TeYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B28C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775558733;
	bh=7HI1pFhDPLs7edqhHeE/gVx82qreeHUI91rd6GdLj2U=;
	h=To:Subject:From:Date:From;
	b=E5t4TeYGjAR1M4/FIBHFYnNXj1hwLQ/UhfFRw7S1n75RgE4jKGvE+bGjSrtWa0NsI
	 PWEKdbJO2cnjxoE3Pl24vELzSuM9evoKxT30j+gV5r4yejYiLnQFuVPXi1rrOglTzZ
	 FlKoyeN5XzgwDycs9PMxxUsbIaFBgR1dmoaG00OTKk4sKogKjb++BwGGXV6clBZYf3
	 o+Jbwgfl3iTL+ZDKi6NkuZ3qkruqWOpXXKMwVAs2RhjAPlCcw4/QrBOXLGkJmsRoFG
	 y2wHD5Qv+BZmJwgMRFFV3oAR+X7bPKdrEA9UUTl0OXv8TWSgNFEpXHV4EO2WhrpGnF
	 WmIPJ+0o8fudg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0A6EDB7F2
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555873369.1427.4855073332558173217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b57e2f5788a12e747bbc7b8221a4a1ee1d8774223fef8fc01ec0b9d22d817a
Date: Tue, 07 Apr 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775558733
