Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5B63FB0E
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743920996; cv=none; b=p8W9hHxj0nVeA3s2CxBIgqLYVvTgE7Fk3pklf6a7tqDspRY/GW94GMwn9wMCZb05UVSPq4T6L5L/hnOexKiMPfPfG6CiqnFDU56saicQSkhA7z6gMfV+4dMau75pLyaV8UyanoE+oLMlmFrfvwh/gjOU8dth/5FknbnYpD7FS2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743920996; c=relaxed/simple;
	bh=gJK8Ej8fTeaGYdDC/9dySpQzvMqqTQaEcFYirOyylDY=;
	h=To:Subject:From:Message-Id:Date; b=eJ7O34Em1C4pK1cFWvpNf6bEA1mPTd47fCxGVtpuWERrLPPAe6AO+Pjq85MZew0g59LGtxh3QrJsSSDDB9trXnAvL7hJi+9ryf42tJBJVUe7/x6PG/ubJy3n3EBbqHtNrKJwJckFDo3VvS2YZwxzbMoBGgeloFWbODpqJW6cpZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7eAD/uY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7eAD/uY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DA5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743920993;
	bh=gJK8Ej8fTeaGYdDC/9dySpQzvMqqTQaEcFYirOyylDY=;
	h=To:Subject:From:Date:From;
	b=N7eAD/uYLR1qCbgpIQomt0wiKCWRGPVdP+eRSaQRA1srFM1yAJ020473tU6dDbNdV
	 vqk+rgdZ6WGP8KAjxjaVM/Xq1CxEBpCwUzaO9JEpjyAN+lP2yMebHEOcMo2vlbarJH
	 2JmCScjbfLSxLMkMX8OFSEv5JexUdu8rq4cos98Nal2S/7p34NYQuCchAZBZhJGayh
	 +kyQT39KA9tErt/i2QFwMX5O4L8VS0PMbiRtyAoztTIzubp3ghr1HCHp0P19+/ms6J
	 ioUBRd7TkCvVknjewjYC/k6na7YNcpOUwzalEKLgAQneydATK8FfZGyH4kZX7kfu6d
	 cA+qYl982RcBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E64EC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392099362.15056.13541280857199868099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efbcd7dd4e04203e8f32f9e4af48c59dd5b47a90a43ae504bbbbe0c5ec095c7
Date: Sun, 06 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743920993
