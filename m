Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EC1EEAB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757880594; cv=none; b=HNU+H+pEC8SzgaEndQ/1uiTGVum+AoVyedDcEGrAvlamPhTld4p2+cV5q3t6ldBEZscI+2rFdFXIpbuBZYoCcKBkEbZk/g7tECkgs+78LgFauverNqTcrsAo4XNAFBoXa8kNiXmI/YHyaXL506Qsv4fTaIHM2rrsPTQJ3kKoYBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757880594; c=relaxed/simple;
	bh=Q6Vf3HgARLZ7KFLwnzIj6g8OwWb1hzvfxGO+ZaIJglA=;
	h=To:Subject:From:Message-Id:Date; b=u9yshyrb9wtOmPkhCulItD7sRQx/7oPs5QL7FaavBAy9OCMbvVJ4wHjhN3vT447ShM40o5mg2H1wGIZJVUzoZiiFos7OJQs+6h31pC25hAxMwLvFOhSt1s4fpWz8mj5BfKpmMzLfPTGpAIB9+FQ9n1k/pgC/1fbNofa4qdLi8G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTlqAo2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTlqAo2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B0FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757880593;
	bh=Q6Vf3HgARLZ7KFLwnzIj6g8OwWb1hzvfxGO+ZaIJglA=;
	h=To:Subject:From:Date:From;
	b=BTlqAo2CcuDC9jo+za4rpQ2Lcpr7YCSL9Q6TLZ+9jC9or5Hvzkh3pYqUx+C5AIiGH
	 Yp4OW+cfHQW97Q0rM/5GgeQbnkG8w8PFFX7Y26AGwA4T702rhf7k1AxIUGDPRkZ+RW
	 eYrxM0aenN4uCZ8rRB4sp6sTm8fjcMC+8uv7god8Hlm6p9kTDBbkypm35lLi1+pLxr
	 eRADekiIf+xCm46x0LFhRG/lJV9plYTlKbI9tnO5xM62J2XyiS/HzvvMrAbBIY+Fa/
	 W4yL15OUgthbiNX/h4Paf+aluV+kwhrl+ogqTp+mcmBcDZ2jEGvrsSyRy+jjaf9maX
	 QUXwy+8jCDdlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB4CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788059357.21476.4039350951936811104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2daf12695cc6789f546c3f83c6125b45531bee25c51011efb76c88d13768fb26
Date: Sun, 14 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757880593
