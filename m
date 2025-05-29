Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3158F253956
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748497194; cv=none; b=Vmfu8nG0zUSYVWJpOM3aeSgmwn9zKySbO7koLQ1cfMVLQx4ZWtJz1x9IAW+2xhHYWQO5JIAebXVJIwyRjly9fP5mBpEy2I+CkONxsez90nSU4v/yjSQbl5Fj53S9LsMS4oWlEMjwqCf0jOgcBtm2Vdby9KOkPSXS7vZhTbUo9gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748497194; c=relaxed/simple;
	bh=JZFr4samtpmA6GWymlQ510kklItYUv7wz+iAQwESgPE=;
	h=To:Subject:From:Message-Id:Date; b=h/9EJ5eS47AKc9BKP0yOHW4fpIPZGmpK9NoiRUVvaXRHekCOQU44ka+6ZEM7Kgf2Enw/Z3a5GBNGJGCD22VRKD5Tr64D9q/oz2tazmWAnt0yfNdp+yK/s2042XN04PLrsdNMKHjAuVDe6/5VhE5xCj1P9yIGwrBhZIgwaocHwf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUzEVpI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUzEVpI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ADEC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748497193;
	bh=JZFr4samtpmA6GWymlQ510kklItYUv7wz+iAQwESgPE=;
	h=To:Subject:From:Date:From;
	b=CUzEVpI2yYJBpi5npYW2hp6tIOtl9ft0tCxgixCxmhuoNoTWmXyNFW18IHKnUh08F
	 FhsECwxrrAfGg6uSugIir5kSWluYJqPGYJGCQ8egkfLn00QlJuFq/lI3J2ooy31srO
	 bsrMUZA+GYzaFWU8SfoyfDUpAROUecs1ERuYqP3FCjY5YHULEXrr4zPJf2b6MF08UG
	 XX6r+Th5M00o7IU5lGaCca5ZhwGEctODh4rK/YkzKzFc/xXNzQoGT1bTDrG0pRoEq+
	 EFGgJEh0sca1PWrO7gDqdYRfUXQebEubgfV3Yd53VFzU/fLupPIl2SdYtRUJ9ldtOr
	 ZIgzz3FgQ8C/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E67C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849719360.4630.5052593087730021045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccd63cfdfa53fb5fc83bf00ad038d6dde08e4ea70b6c406359697ddc4d2b8db
Date: Thu, 29 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748497193
