Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3870E233128
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745015994; cv=none; b=Vl+z4CoYYL2J3A95uaT81455qSqih5teZfRa9eRW5SB/TK5MY3LKIgCwQkMUC0fOOs36r0/MQjsUps3pGBfmHbuHtuHXnWZe27bqmrPyR62PrO4gSW0Op1+yP5kALQR91z+LOSvDFAyum4xbpWWT/slkLAYPB618EYkfOUg332Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745015994; c=relaxed/simple;
	bh=YWgFwBj7xOHM6srLGjPrL5rZkAi4zjNzTHhPrA9HhZU=;
	h=To:Subject:From:Message-Id:Date; b=nKkNBqBwbdjA5x56zOkcjPH7nDYUNuen+FSBtwZTDjyqmzeSz225v1F84W8NbF2bjys9lrO0LjzFtfjiGFDiQpE6OrGFlE4hICR2W8ExyJK10JuHqDO6WW1XBcIn9USoY6Ep6AYh22iiEJiIoh1X7OJwu29VZGui4DYSVTQb+vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLkp5SxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLkp5SxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC546C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745015993;
	bh=YWgFwBj7xOHM6srLGjPrL5rZkAi4zjNzTHhPrA9HhZU=;
	h=To:Subject:From:Date:From;
	b=jLkp5SxCL8emDD0NMP5OExx8CGNyEJ9WVuqxAmUACo9J0H2Rk65+GCJL48hMBj6vt
	 gjK5ZZ8MUU33FCHUDr0QiDakUCK0mgUYQ+T8+KWxTfCgmpl4p96hyv+WdzTbokM+h/
	 j0ENZnOizg2ZtfmxE6rdXMkxF234e7DiDjCkwvVWTlzbfD/7vFp/vxlO6+OKlg+jqF
	 je0xFHA0aO3GLtKHd9cIkaX1zIdfLwDj7doIxJk2WMBCwB2ljgOPwdasmQkx/JX13m
	 B7Hm/LX8Movtz0QBJyo35rgvE79yDtpsRf5dfC8m7K2LWhjXzxt6xWpL23u3Zrtn1c
	 Bvm/KvQ4MKTPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1ADC369C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501599361.2043.9113870434028463679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bbeb48da76ffc1a1e54eef0b31b43a40987387a734024ae391e4236152d92e
Date: Fri, 18 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745015993
