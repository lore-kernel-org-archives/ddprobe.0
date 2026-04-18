Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F97E2D2397
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776505054; cv=none; b=p9OThFxG01hTW8Jq6noTDmmgXuVnpgNHiuKdaQB8nf1CbFplidLk/KqBoR1YKOA30+lHH1tmHIIigLPaiupc5MllEA76iVN7N7uSiYZe/haylWe30AjI5hbZEnpTW6Az2iTs9+NM9h0y1brEwDvkCvG3vHlsKsrFfgVlZYY8sTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776505054; c=relaxed/simple;
	bh=kfVNhM4U1YQu9kOJ+eyOORGhzxDig8foVlk48VNH68E=;
	h=To:Subject:From:Message-Id:Date; b=ltBubjz6cEt82Ganllp8egoYWOsZJkoowfjcozfXULA43NcWnB/ULXX75AIsm6bHMvC8WUlXICu02I0kX2reIPyCNwrO22hKTxfB/JFK2Qt1+eVg1bpvoHbca6wKbd+4WwVRl2ZiKwHoCHWGO4x7aj3joVGGxXTdEagaFLx/0MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPQmXgBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPQmXgBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAE5C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776505053;
	bh=kfVNhM4U1YQu9kOJ+eyOORGhzxDig8foVlk48VNH68E=;
	h=To:Subject:From:Date:From;
	b=sPQmXgBuUMzAHFu468dVo3xwKHyL/5V6xenW+xqF/wMWNSMCZ/5IXb5c7zXpt8Zs7
	 j1C48ceP2JWsHoQ9m8oeZe2uQMlBQ0ALQKegJBi935hprV5CQo1iLePTlY49O2s1Z6
	 xXS5N6q2NfNjjTd3DWe9cY6/Z52258gVYX7yd9tWkN7LxkfBsF/Abpr+zh9YYq2PhI
	 dAdNeSIIiNCz82J08b758T93ybIaVnRlD8gaJ1MeE9Go7y1uJMg8cXhVaHF5uYV62T
	 lQUMRPUzlPTyBB0Cr8HPzWH41WVA3VSlyvfQf/AIep40c+gF5qXjGoIJwvuFOUK4cd
	 Fgcsr/HOojZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A970BF99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650505368.17151.3902483482454259215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7763fede1dd32c53966532a18527c9f90c4e106b4575c430b3bb19c6b3f76e8
Date: Sat, 18 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776505053
