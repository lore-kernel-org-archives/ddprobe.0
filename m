Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F9212E47
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717777043; cv=none; b=GE0pYXeoVve44BF8jD2kN9JNMqP+VgEKvg0b6tYJlvLdYiO2z4/HGeuh2kXx9JtE1x7VABRKiTGxF4G2+nT5LQj53+Hw/VduYupCqRFk/9lRxe/DShfBLw8tMpJDwftlnemtLiqAK0PByG1gEw9gLVu6w3OCJM/Djbn3VsnfbUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717777043; c=relaxed/simple;
	bh=9Sh17nKHUWwoQb4iorZiPndrE19VHZK9/0WThWjX8HA=;
	h=To:Subject:From:Message-Id:Date; b=pFwI8UNGjnzuhFmX1BPfotw2yfsuPUvoSfGFbWsQujFIrdmfHh92EPAQ8gYu3/kxhVsWyZffSNqtfWXOoVrtC5MW0JwjVXmH6ihYg8KFIN1cWIiha+gBZ+zdD5i/E95mvzikaiizVWXYJ2NPYPl4VVqocdGj0F2bCe5FsXig9ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYX/Q0Hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYX/Q0Hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52CCC32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717777042;
	bh=9Sh17nKHUWwoQb4iorZiPndrE19VHZK9/0WThWjX8HA=;
	h=To:Subject:From:Date:From;
	b=AYX/Q0HxcM683WSdYe4v/FE8uN3G3DvP8X9AK4VSn5DcPZURtez6MKdLmI8/epj6W
	 QbKklB/WpMOmTZtfS+PYs6Fp48BOYJMYElJlwBJL/1hkB+8Hn4I4wJT4TYcQRyLxqT
	 P+ggHsulyk1/2H5Ox5E17PypN9w4e4iOjg+s+sbvckkq+CjI7IcFNUHM5Jm1R8KZPY
	 Ys9xQaKOkHDEI4MDD4NOZ1VQThLegtoFOFVXXEUKWkJT53lhF2dVi+wwFtAFGRZRLG
	 C2ejjwWtL8Xm7rUcojJs6F/bFs/Yxt/0ivefIsrMTh6gLnxuiw0EfpIAtc5NAGdzAV
	 volXP2vQ4JJCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F6FC27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777704279.23883.2800870511857571209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8541415b5bfcf19abbf2ae4004a251d6cb05cb6eb0c90f9424d684453589e702
Date: Fri, 07 Jun 2024 16:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717777042
