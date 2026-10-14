Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DE84EE877
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791972634; cv=none; b=h4M9erih9AFxAPVT4Y9TTqNFP06EQOzNoN8Bj2tSLXwSRlJ2nvuKvfwP3tyTg2H4ddq+HqbKZ3WEVg2FPWngSwVAiDLrC8sdwNHRaKvwO6iW889i4KuQ3dSZSGECO54Vm3xIpqe3SEkkxJmLVv1RkJP0YznxB6OZEfJFU6xjFpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791972634; c=relaxed/simple;
	bh=vvvqv7bd1X/EQCyIPq0ADZ6h+4VqOS6CzlM5NPCYyXU=;
	h=To:Subject:From:Message-Id:Date; b=iu/jb59JVzIfGviOYGuLo2nBdiT64G+XaicpnGbesPoYSA42XCviyA5zNEA4f5+tC4RRvYEz2pmj55m0MAmgI4zLh0WT65DHSc7S+DGJ+lvl/PyRC5zgRLgE5verr5SwSGSnzobfdWSVvvNGtZ5SDslR8izF7xWVVzSamqj4xbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEZTuQPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEZTuQPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF09EC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791972633;
	bh=vvvqv7bd1X/EQCyIPq0ADZ6h+4VqOS6CzlM5NPCYyXU=;
	h=To:Subject:From:Date:From;
	b=eEZTuQPaQyJaahrGIYfUCx65cXmjKb8CU7HS24h/Xmlf4GugxGkcIsTrVZyMz1+be
	 /xNmbGs/Sxwlw2oUnJEX1gFS9PRwskQm74xa2JgKlz7GO2zv43D8kMwKWxFEQf6IJA
	 oAWjeUiyQFBKwH9pXAec77ad0Fn6J7qXaQMNSfsml+acCgCVxGqa6I3IekNv98YQ3F
	 TeJZa24eLmhk3rSM7b+OHVNCkwhJyyvH+ghuyt09K9QlSt5F34JPuh9DHB+uJso4+f
	 v55pNth2Yfo16R6OxtTkfHVnD6dMfhegTD/QrBy2Q5WTPt87YZLveRxPgAsREQYsV/
	 ZzOhsO6Lx1GQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC5DCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197263369.26786.1131532220894709978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b8ae50437a1d4b4ae4d7d9162836012922e75ccfb8ebfe52af57c2915e00a3
Date: Wed, 14 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791972633
