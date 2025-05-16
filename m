Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF71282E1
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747385394; cv=none; b=ZNuc2E06lxGrmQTMklvT9v9st2u+iTAPrltaLGLiGV9fqBMj5F5OE8KykkUfE4RMc/UEUceaYngNTY8WV9IvoxFufOgSxdSnltyrKsqrFlRfrbhG+vyOHuaG3ItXLsE4E7K4sYEBE03kBhno1nzknBttZQ+m0G8qA1jOCUIsFFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747385394; c=relaxed/simple;
	bh=DR2j0qG0uij6XkXPIp72iOxfqLYKweJ9cqgTSJjaoio=;
	h=To:Subject:From:Message-Id:Date; b=AY3yFMGydBPMHbvCfkI+uQVo+bUqvZ3tLQEdn1F8m86GOqW/qD+eLzjAzUmbLPSpmqEfMiFvTmSx3Tu4ceGymeRaX0C4ysoycqbv0ev/X5Dx1z/RmwPJarGCscahsMcahENniZiSD0IU22WzCQ/FTjatxet/UyNUboQ/SDz0j0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRfavyIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRfavyIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89C9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747385393;
	bh=DR2j0qG0uij6XkXPIp72iOxfqLYKweJ9cqgTSJjaoio=;
	h=To:Subject:From:Date:From;
	b=PRfavyIu5+Wpn98alDrdaRwQFg3aAeFo3S4CNall/YfGh16ZSPbPeSX5x1XfvTCn0
	 m8PdwQ9mX5P9vC16DSEjE7uZQyR8siIKXPVlBWFzeimLSgw3Kw1tG2qPt64oDj+XwG
	 OCOieofqW/jPKuK8zzHC2mBLGgkgdpQmK3ANZhGx3OhMopQQ8Y6slDuOq/iC+gR6Gs
	 cssWrqWQcRTnD5HV36KwYljAth2+UpUIm7Wof4S3BBs+ZUk2LkS12pCY/deCYJ62+d
	 GjoBedN3blwYLlzZmxNWzIfjC/zjVHO+xcjRdnsi1Qag/6BNgzdle0tmQMtG6JLJzx
	 khZTqmca4LOOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F8C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738539359.29986.7700140615194878011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0d6824b1e4f35bb8073f4313d8336d702138521ff4e97609f89033f0385ec6
Date: Fri, 16 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747385393
