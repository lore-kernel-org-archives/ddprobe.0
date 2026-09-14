Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3196429ACC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789419034; cv=none; b=CpRwZmvMPwkBro6kmP6+GLakIFU2qCz4KOfCYr7ILVbrFVhvd6vSsQuhZgOpz0b1s4csV+xMD1HASHs00KMd7XCsPiwaBsnSdfjlXHguyITV1/0G1F9hfC/MQl5qo0qcBjnq7J6OQQ7e1nydf7l6a/tHp22oNKTih8s6BjbMJDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789419034; c=relaxed/simple;
	bh=Uhc6vkC/NvdfYoT8kNTgQBZ5XCiWiu8ylYgAQXUUob0=;
	h=To:Subject:From:Message-Id:Date; b=brGCKZ7tytscfaatQENEMF1u2dc5yIQzFLdJj87zw+AWgQiNrF+vKR6eEpi4wJh4S5h/jamj6G3t5Wlp7Ya2rvpeH0lsd6YG5e+L58kxW6Ad2Eow+sOnSOGGx9z+AQkkWAo5PbwFekztZ/yUUcN3HwrTD+mqrSWKLZP19+0K44o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEmpxaEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEmpxaEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A8EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789419033;
	bh=Uhc6vkC/NvdfYoT8kNTgQBZ5XCiWiu8ylYgAQXUUob0=;
	h=To:Subject:From:Date:From;
	b=AEmpxaEpcNS2u/h1XXGx2Qlwu0EP+4+cAW8l4d1g33ErdL4Xd1QJViM1bYagPCX4x
	 /5KNX2s/B5eao6t+FpRMbWyHmfDiswa+9rGos8VfHX0td4+pxS4iHFSSSm4q+fBQEf
	 kRX1tStZSgAe6rIDXYtyvzaksYWi+2DivthfCkaf1/7k3tcj7FVM4UHSVaay/9NpuZ
	 hmfvoREGUsbya0V2uEHdpFF0z3ZUcGGExBlY0XPfJAA/E7wm+jGPVSFahgcsXHrJNJ
	 STuUKGq04nPerJcE+xe5V3UXzIo8RN/pbjSuy/oW5gK0XWKXhp3F/RaUPFNyjiZvkD
	 zxrYLI3HDvszw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D7C88E73
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941903369.5124.5594562810053893277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d846800d000915d3f5aeb7efda623c962fd2f4ca26cae93a2be40529585df4
Date: Mon, 14 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789419033
