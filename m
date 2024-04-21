Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622A4635
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 11:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713697223; cv=none; b=ozIXxjVBoL1Z+XRHWieQhYjiD1PG0RMqWoJ4od8vao8yf033oDHCpTJ15DzPZGhfv54f6z1d3Nf+FQmqinOTSLHR6X76OktpeYj8w/ryUnEkZeKJQL9NCshziQ3Ghulx8CMtR25IhvksygcueSj6T2k8ALLdYmA+DKcb/S7WIQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713697223; c=relaxed/simple;
	bh=HFaiqIlme/8XUnKbFPkAlw+Qi7dbAR7/DZ/liQaQR5A=;
	h=To:Subject:From:Message-Id:Date; b=rk4T9rMXF5RqSkCN9wD3HFyzf0MRC19WPr8yNkyZCT9BAQ4sPXJe3Je0WqxRUDhIUS6iF83yPJEH7q7ngbQT1ED7Lwy3NySegn7hUUN6FpPcubMmD3tuWofw+QYmew9GM5Vdi9y+sejtxXfltY+0+N/mWlfu9RjE6T4qGneHBvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk2tK18Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mk2tK18Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A5FC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 11:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713697223;
	bh=HFaiqIlme/8XUnKbFPkAlw+Qi7dbAR7/DZ/liQaQR5A=;
	h=To:Subject:From:Date:From;
	b=mk2tK18YF1grcmFwCoiLaQ5okYOQtts5d3Xh37GpIdGvtT7P0T08WwqAcoZG0q8+v
	 Ew90lJPOsyRJB8FD9zaAV+qHkaIxN3mtMy7ZIBJOq9wiQe8jWSvFnj+7kpxDkWUcEY
	 sXcl9mlTksUPMuFY9sWHuAkIIgcGIqoMQojrpgtTco1iEqJT+/0JEiw6+KTb+4p5Vi
	 gdBXdoaegfPO3to1bdv4R35Q84TPXgAiGoJ+WwjY+DTxyB37y3ILkGnh7s3Bo+t20b
	 NLoo3zNZuYp7NNv8qvrpZnICIpajJxf1lUg61jRvbcxEKQfVqjP5U1v72XHwbzAnIs
	 48o9ADW2YeLhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D45FDC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 11:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369722283.17051.15344055297445533894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a37d4acc97e7b475bd1209eecb0ff5f99c0e669318e0280ddf38c7df037147
Date: Sun, 21 Apr 2024 11:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713697222
