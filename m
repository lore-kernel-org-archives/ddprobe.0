Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6262857F9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758236994; cv=none; b=p70wSHkzVoLbuaNTOwIW4pJM6rg5YtX4up+y1wMr4tWXlb+WUMXJYKAD3JThKGnmgicaKfvd0Fq/d+5d0sH9mdyz/1UULFN7ENckBJwDnBKHHDJLV0cMobq1RLZIGhFpfr3YJMWRJHOdxM1zzM4tzTyY8lllmDs3M1XLURRuuMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758236994; c=relaxed/simple;
	bh=ygDtmlgAepg0VdrI64vTtO11DjOYlyjuMQideAOkxdc=;
	h=To:Subject:From:Message-Id:Date; b=W3FKPhSreSTUAbyVJAwSbyLVCGRYUVdxogrpuyEi1hJFgoIig2yNjzdn2qgmUd6JS4Mx2ss6rdkj21NxoKn7dWtEUmhfR084YVP9Ys+G6zMnE0xuSu4lbPKQNMN+SXlzghoJHjIrfUxoAI+JLrVAo4ZPH90Dj9wgttC1Hz1mVrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY0ZG/vZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY0ZG/vZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB49C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758236993;
	bh=ygDtmlgAepg0VdrI64vTtO11DjOYlyjuMQideAOkxdc=;
	h=To:Subject:From:Date:From;
	b=MY0ZG/vZrRWY3V1X55hvcfj49wZMXSnBD6X08vkF+D3PqcKUvDUENlnHV99jnnbF2
	 vFhFpz+2Ru8nWqAhjEDzXbeYbOVR9G5Ba3ZKKo8JFiu7sswySJmlwNFuUDAioIS2RQ
	 PoCQG1jrmTPCbTaPGnGs4/4VxyxG+CaXL4smBa0lWmmQMXq4I5im1x/0QDKEVF1uKc
	 t/4cuPgP6oH9g1Ax3mjM8rA1im0JAzdVD/PSmRuEQF9GNrT6YQvxeWacg5CWCF/RU1
	 2EnmTO3SBH6JuR4nWk2uAKz3YYWhYWlT3MmBWIyeUAaO7/kQW5pfvfFxiv8W5BV60F
	 /uaxVQlCc5gzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98791CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823699359.27279.15157745448692119635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf7653f78be62278952ab8755d42afb3c7c56c94b5db8781b50d7ac80326b27
Date: Thu, 18 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758236993
