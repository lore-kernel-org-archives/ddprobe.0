Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307DE32AADC
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772396094; cv=none; b=oadDj0iTP3CctUHJtQ+SgL9IRaNv2yGNsPV3csi5yC0NQTBf7W0SS4kLt+Zd+X7E2lWp68hXufBBaMCofu5HitPFw8s1oIztlAympJ+z2DN71jUZogMH1Wfw9atg9KFFszfJEWS7+BGMBWE3bdixUZRA+0LwIrR9Qde+lGYc+3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772396094; c=relaxed/simple;
	bh=BCfLs3SIGv/ZIp8+CKsR25yDZdK3iOlbAQXM3mZJW94=;
	h=To:Subject:From:Message-Id:Date; b=urL9FcQYk4h0Z3xJwoL5eZn++fpGc5L1UFU8hR8I61CZTHa+RL3sOigbshrky2laALWcOG8E5WD0Liw4XLPHPD7bmAk7uzK6ayvx506BsUL/VQtkqCvDrPo0dxqruZ1Jl06jnFzqOasfxgqEYXpz+3QPLq7Sh8chStFGC4GJ/DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0trsxoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0trsxoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0FAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772396093;
	bh=BCfLs3SIGv/ZIp8+CKsR25yDZdK3iOlbAQXM3mZJW94=;
	h=To:Subject:From:Date:From;
	b=T0trsxoJgZ4/D0YwERh395xeTAvr5akbAOwMcVi87Cxd2Bw5H6ZG1Y83Yh7tq3QJy
	 Ktfd/u7GA3Lr2EAyfG8pPdxNEQGcpuDconGbMO1gJkbgrAkmukpV5+JIrxGypU5Wrx
	 OmMgN3Tw1TVpX/8zL/Yl/juCA6Jvb752LK8zvSeQXBT4ekyd6zB5TNVLpz4ozguSJE
	 zoibHq3YCCqLC3Pkjli5tqXYQHaCjE2ovwoKHNWCo/Qvqphox0wa6o2AFgnOqEGPGb
	 SoaU4FIwYF0tHk+9ndIiiw+2QI2k3s+t9D/EBZxFBvYB+OhiQRFqEbfyQ8ljO95Moi
	 thH5HUDhmnJaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1236FD0078
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239609363.11381.14629798607368666511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a40b2b519f1d8410a4d090f289dc0c58c6cc6529fb2bd5867ce210af59f6f12
Date: Sun, 01 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772396093
