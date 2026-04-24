Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB9E19C556
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776998254; cv=none; b=UAlOteL9JsYJeiZkjtx8QA2RBqo703hb/vP8zv9BoKGb0qCU1jnkc/OA2RqODx1MH2XTqvJddyX2o5G/LmyH7R6wA0kQs0HmYRmR0Z4CnFgJZl29KA7iuPU3FkmCYkLyxDA3ilQVOTp6KENEJelJ9WuiSISH94XRRx0gF7gDWR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776998254; c=relaxed/simple;
	bh=kJW5wmIaZUF/JE5B4GBQPTm1GJ67wrYeKQoXTONc2Jc=;
	h=To:Subject:From:Message-Id:Date; b=Mo1WYPB8tsbFpD9425bWxP9D3gTTgzaIcZLXRAxefY8kC58YYt1+6Q64p3DJrM3d7tzs5nvEhTcA+ub1k5sTvwUBcijstW3f1nV9VZ/PutX0SirJVghr8lfESYodfcKFT9xc2EUG0V6gb3CM9et1V+EKCvaeXR6x7eRPA4fM+zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcKskEE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcKskEE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB808C2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776998253;
	bh=kJW5wmIaZUF/JE5B4GBQPTm1GJ67wrYeKQoXTONc2Jc=;
	h=To:Subject:From:Date:From;
	b=mcKskEE1LKlEHHktvzMIZBJknJiFvnxdR6qtdAnk/2CoZudnQJxdUUgXwo+EXTV6j
	 Z95FgO9KZvMJWFewUjJalJIvmC+BTdb34yKhBz5BQBGwm6nigym/RigEjn1GXlyq9q
	 JAJxI4pnFxLL7IS6VHyCfAJ4yKFQO9zasZcrhN4KUyohom0U77OA2bHHY181da/0Yz
	 a+JhCn/kQZ7Z3L69tzhARRHgpP8Lw561puyTcGIoZoB4+WEetaLGyvI9N7GKd2ZExm
	 7vc/aqJtp3BQPk7s2gKQqQ1CJ6teRNqTzcT02uXBc3DMPAbXK23m6dHu9S+BgFeqpr
	 HdRW9UM+esYfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F92FDEE5E
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699825368.26495.3711122322973850170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7188ca06f753527ea26ce47fdf052805e17241bff3e299a9d68d703ec7c2e23e
Date: Fri, 24 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776998253
