Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C55D25949C
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733988954; cv=none; b=ZyQ8puRStfzuRSfknQheY2C9LQndZlJQzoCgzSVq8PiQuoBrnjUArhh2mVV3Y93lyDu+CX2sK2gBSTq006aP+hJIv/yhSEZ8RMNMF5eGmsUS/OhaIHkag4rfhnLd8DClV7xkmppK0RqSQFn7BmYTzilIT4q9ZQja1gUJ8e+iDOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733988954; c=relaxed/simple;
	bh=b0s8+AXLXy6+vcopLYE7MUgb38AJ4CbJI9xJcZf5S6E=;
	h=To:Subject:From:Message-Id:Date; b=BWLPlPjmrBcZuMz3NE0iB2Am/vfwJM2WZGlef/ASPEHvVgGRw8rvdL9xePGIp3dCjBCU0P43Y1xYlVaQaV/c6mW41dvB38uzyTxueRg9Zc5pK1cWAj5fvf21jJgJV01orXV2OMPPcMs0zFTNMqJM/Xtvo+jF7kRZHcbUOP1yIWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kc6fG61d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kc6fG61d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E824C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733988953;
	bh=b0s8+AXLXy6+vcopLYE7MUgb38AJ4CbJI9xJcZf5S6E=;
	h=To:Subject:From:Date:From;
	b=kc6fG61dy8ZopqbchMMn28z9yQSo2kN1hzwkQ9wDhP7xwdllrkyHuG6Dm2s/5phmk
	 YKN7VOECN8Sw9N+k1OFuyIZit0PaaUmvXUUiMgIS9ubOct/m6XVurXaCkM56PtysfD
	 8tfoQHB0ifOurg9LTn2P9Vab0Ibs9DRgcMWF1f87ug6bUuRfocNcfSpHJiIJtWukDN
	 fscRXgFHYC3x+oLKjyiv3ZvhldXjGHAk1GvNy5e6tQwB2ukukbu4gsI0UcFJL5FuBd
	 kUyROed1xA4bPwE5eyLZId5WZjZVKJChYel733hDMCYghWklfC9UFXDutKBeFgFoBP
	 h4HDQa4P8V6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92720E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173398895359.22984.18195777909138808833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2b127edd8ea97ea059ede609c606f74a7a4b360774bebb4accea0f2c589d75
Date: Thu, 12 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733988953
