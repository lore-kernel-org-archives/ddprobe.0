Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296835FDA7
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776051454; cv=none; b=lHa8DXeSWMnA6t3nnuz/Al5WjcU8dqWOXrgEEweATiUWhM2KPli3Ezy9cxR51nKl/zJ4ZI8QxBPe4iaDT/Z7hOP67OADYZJag8buU8GqZJXVgFqxA+FDX5iopr0AmBVAzgFhmd73Cr12aq55eMf3bW2SOgssUoGnk2zKmh1lBL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776051454; c=relaxed/simple;
	bh=xX5u7KWLMga2aIhKlyqXJTRvarvzfK1Ke0p9S/WUSTc=;
	h=To:Subject:From:Message-Id:Date; b=uAgVKajZGeBK+aBPzB/vyFChMNIz64X/YnDYGDBqgVtBdSD75yl8y+cukRkBFiy7gfhK1NxR2hwF0D65WrnMVrfztGDfpL0lPFJj7aOOSPfoOQpwTo2xTyfiT772Ouh/AK/ADKKbJHotaL15D0vcq+zA+fuKAf4uZpyWAVRsllw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPyFP7ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPyFP7ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7EDC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776051453;
	bh=xX5u7KWLMga2aIhKlyqXJTRvarvzfK1Ke0p9S/WUSTc=;
	h=To:Subject:From:Date:From;
	b=qPyFP7citkxxw6r2Ubotm96UeRQjL0ohai2BD7qCkTGHxGgG/JNfVo7HDYA7DoNXV
	 yxIKVi1bwTYtsJbtEy+BB2P5G/UdFOSsxpXhH0QzHj2pC7Sid7dJsgTwinhz47jwj6
	 g1PuIqCZlCta0W/AV8smE8tGbmrTIivxysh36hjs6tg5s8dY9J7wvbpt8grmT/JShT
	 xv3cjQXjELJV3Ya4dkGvA8WvkDyjIPYKtwny9aQi4sebMDbegaw3YYmjNuiO7O78Sq
	 Z4V9odO9+f5dcVYEek+Tb57lLc0xKcNVFbXB2UHmlm0F7ppifAZ150zYeg1SZ1wzX0
	 li0SBounmRRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9956E9380E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605145368.15233.7009511818387945843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0891bcdd28a39e1229d3307b0c56dbbee16167ddb7b1a439f2ac7f90a03d9f8
Date: Mon, 13 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776051453
