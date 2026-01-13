Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A07D34E777
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768341234; cv=none; b=Oo4M42paW96eveDED6achWiretyHZklmoB0xh8qyxldLj5jYVNs2dCfvi0Xqtub523MlS8SaDGoJpEl0SiB8XlRRIT4ttmyg/4BP9R+1MQ9Bf2K0Rix3Ml2k1e0khRRUceaM+m5Lour06OUoYwbRCtkxX0O8b8W1gFxGnZuAJZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768341234; c=relaxed/simple;
	bh=oo5RZplkgeCd81/nyo+4fLHXDanOVGK0PGo4m3VK6Hk=;
	h=To:Subject:From:Message-Id:Date; b=GP7IzsrGbmnW1dv3cNJvxfM7WJOtIkEik9CcF7hGbGcHk5EqgMueJuZxGWgT2zgJ8ELO2drNjaLrxmuv+f8n7rP+35ftT585+5PpfFJ+dIwGfyfwn0F/WKrePhCAc4S+XR6LevZ/X0gFcYUC5ymCD0nDhElBm5fNTKHaFe4IGok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGf8c9wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGf8c9wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C430C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768341233;
	bh=oo5RZplkgeCd81/nyo+4fLHXDanOVGK0PGo4m3VK6Hk=;
	h=To:Subject:From:Date:From;
	b=UGf8c9wiVAR+1h3I09LXJ3GRzqZMQX/fqvztGqrNDTLu5w4XP7uMtTHaDR9XCRHLU
	 2ZpEicsjjjGR/DWMW6q0nVYLYTEAiboYzhyx/ksJfy4bf+W0/jBJYQqoIjFN2OoXAn
	 NP33PVtITR9lRv687ardGQBQwiHWCQjnoc3VYJKdMNtlhVCJI/Z5rboCVClb5uTZuy
	 l3Pi0oRE70wtVWxRx1Fr44eQ5uKopcFyY6bnAufQdValYD2+Bk0FbBZlkPoR36xG9e
	 +hZJ1iwC9Bo+V9JHi1Yg+jM/2vRfpMi4vNg0XpxPAz9rIxBze2/iIWuIwdACluMk7L
	 y9MAVo/6Fserg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB44D30CDB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834123357.32680.13693220202684344098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32639e820d39d8d9fdc93c88331a5217e47330d6a49507ffbc76e4546f78fda3
Date: Tue, 13 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768341233
