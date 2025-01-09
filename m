Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8E72F43
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736460954; cv=none; b=FrueboDYFNu17/381CIQ9lxpaFk4vaKfgBnbixqEorj2LhDsCDidXQH3ucYOFKYak9viheRllTTHSZLfLQ4RX9BgQL03X0c5LZs20GjvB34V6CMWzKDe80kBJ40dUzAgB9c6lWdZcWLhrSuTGGy0mIn7QUz9PRBkGLxVtSuxlLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736460954; c=relaxed/simple;
	bh=7ZS04gNBVIdHK8o+YlOGvj55gUyFUcE39nQTC5938i4=;
	h=To:Subject:From:Message-Id:Date; b=efKv6TP+WuZ7UAN2DIdmKtx5QG0sJcynYG1215+6l2WDQeFEz6nOdl1dlJQzhnaRY1jweYQfd4rTu+p4zXDw85OLlqmFodRsi+qyfM3fDm4MVij4WW+qQiyq8RQuYklONXX8a2T/9POorZVTIwjNlm1r31SZ6sDBQ7gb6fp5Npk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWBK/Gjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWBK/Gjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7002C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736460953;
	bh=7ZS04gNBVIdHK8o+YlOGvj55gUyFUcE39nQTC5938i4=;
	h=To:Subject:From:Date:From;
	b=HWBK/Gjz383DA6uiT+Ow7oiwWDf72qxRqJeHAxx+AM6ciRvUYoJGHhf+uFHrB2VlW
	 UkPbZGSI2xaqmHY9fDZx8TeVQrP2IJwEb1lHTqrvDS5ZF/xp98tv3f3KSqwKVHfWHM
	 A10zmbVHEK7nRhLEK8895LmA9PBAe16uJrg3ri7wSL+5wjHgH9B4E8uUSzRnCSZZZt
	 kQuO9b/jwn1GD4o9OTKZqAFF/2HJlJogIz6yPuw69zn4MjjfyiIaEM84lnQk8M09IJ
	 k3Kun129UtqMZZHYsBKkojoQBCl+x4E6+W+mNvB9JfnP/wN2uXB0hOHdVMb+0YE+bW
	 ksQZKWIFueKpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF95E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646095358.301.14939060551648063827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6df85dedc8fdbb6381df05eaf7333d38a0c7a792ffc0b79f243e44628fdbaad
Date: Thu, 09 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736460953
