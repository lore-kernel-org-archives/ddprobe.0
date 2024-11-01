Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333E1AD23
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730422554; cv=none; b=ME+g49yBILjw3yhyQN+NsSmQX27bq6Z3+5uCHDetyDIk4wwqZ4EawNZ1IcdkGU+PwD+qLwdlMF5bYYJfreVTNRDANsHQyp8zk5u7XsYByE3Pb4M9WOlxod7Qmb11I2scdGKcIbNL/LK7L+CizMnVaj2ZsZ7rLuU2cFPBDRS78A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730422554; c=relaxed/simple;
	bh=8DvH8sQ+q2aDbyIi1l8Hf1DG6//egLMve3+UVc+lFAE=;
	h=To:Subject:From:Message-Id:Date; b=SsKCk5v7/wz8WEXQfZvJGOBn0i2tM3B068eqnn/lEQXGIamrsFUrDggQwXhhOML52zxUoxUkycBhxkjGxfxPsOhqW9q3Pvu6Mj3cjglrwC0OMTk346pLsskO9DY6HSb+JZZv6elqM8brIYFeTFklUDIDStLkvluWIIJjyj4GDB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiFvOGWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiFvOGWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BE0C4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730422553;
	bh=8DvH8sQ+q2aDbyIi1l8Hf1DG6//egLMve3+UVc+lFAE=;
	h=To:Subject:From:Date:From;
	b=aiFvOGWpU+hHkO1bKgYTvU0+iDLhJWZeMhI88jz7WBHh7YhmdseGOHQOi6eURPksU
	 wv0E87ZCRvn/oaORkHivEr37dqfOjA6P9zxltwOsEPEpWDhLvUooVCVSlWo3smOPN3
	 d3uuZMFv3ghNSewf2wN3rK56lLy0LwFl22As/WRsqhsTzsuw96ARjkdDr8raooi1gs
	 jdjiggyd1+9Iuf9vt8uOdE2jY2grW16QHsbAlHJZCZpnN8Wqp406j/8WvfRCSmTqMi
	 LbOERD5p59xqjGlJ7Gn1IzgO7WYel+LRA5uF43RpgdUw9Uz16SRyFOSJHnioD29HXC
	 jNcoVt0MXn10Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87AAE67492
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173042255364.25504.6465798694091510989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be31ca0482c03eae9570c9c76e1902df96af497a59d7f47bf7cf069a07a1daa1
Date: Fri, 01 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730422553
