Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41A4422E24
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784219914; cv=none; b=EzxazkMcQ1dubhqGgpRd7AIKbA+IxhWt3lwBQYwRwXfV1gSJcpWhju3g4a/qkv4hL/a+iVF5ktMQqlg5uJYOWnmFdfAzFglzcOw9vGFZXiFf3FvZ/aUywTBMwuCO+DpYixwg1NVPu46RVf2oeZyqTAWZ29ZO0LqXjYonwX+5ClA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784219914; c=relaxed/simple;
	bh=TVQD99b/eu39OT8BquPYKFK4ACxq7G12tBvp73zv8jc=;
	h=To:Subject:From:Message-Id:Date; b=nsuK+Bo6IyHVePo8xesgEOLFfclXbS/qJ7fW0C5JwQiLBF/Ax7HgZSMUYN/TYdEAG2e99+FylFIol3uoovp1wwAhqcGUBSwFc/1GBMLS+6de/pb6c1ayLBjrAcCIKu4K8boEpn/Z24YlTsF8Feqdzft+aaJGplJidhXsxDtp4fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOAeQ2NO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOAeQ2NO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD9DC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784219913;
	bh=TVQD99b/eu39OT8BquPYKFK4ACxq7G12tBvp73zv8jc=;
	h=To:Subject:From:Date:From;
	b=JOAeQ2NOugRV6CF5QTI4cieshPbuKEN1tihouPJYyggZpOzrHoNmO+ffABkWP2uMo
	 AbEeuNyr6dHdmugZSZ+1XNk807UtMFoayUFCJLr0u0TgwZpeTyaBEJ9EXqjsPjx6Wa
	 6GvPIvZH0Z+A07k13nBUSYPXUzaajO5p98kufF6GKW5QJzYewXwTIy0X0k4ZVRlegr
	 osiQ83BBV3bkVY3osQM2gDnIYgHT2Vcu9zzlYfxTHN7AKuzIwJ34qrdidowajjHbCv
	 YQgkfLeztkApl957ryLjoCpUpRk1IrEsFzMc562DS1n3OLcbm/T08CzvmCdF2y0Z+c
	 MTvsuIkDUcKxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92E8C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421991368.27999.11986561740597772565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b414f5d6952ac7e1d441827761f1d5645fda890ba6426d2e90a1dc7fd4040a
Date: Thu, 16 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784219913
