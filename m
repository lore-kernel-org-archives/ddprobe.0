Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4843A2EC083
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787849434; cv=none; b=nokg2Tuc9qnG3+3wSN/e/a4re/TyQREyIbnOtagVkhPCMwr9O6I0OxrXFovi/t+k68tDaICP6WdikdKWQ9YPwXDK+N/D/1qCNyROgWo1dsE0HIBeQ+q3tj/j9P7MGz6pVyxvr6ErABHIqvZI8c9dO5Gx4UzTTjjMSetHvSaLrYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787849434; c=relaxed/simple;
	bh=rIKSyrLCPCzTpyYlLi8VW+qPjtAImDt+0nyz/Fi5ChE=;
	h=To:Subject:From:Message-Id:Date; b=fZN/q4knrcAR51DjgnloNRdlM26jSwYvAi3l9X845i6qJENPgpM14+x4uLi1OWhUvkiZ4FTRMYxMviVSsd2WpBG726anONqW5Mtk8M0cf2m3x6v/gNU4XTE8xOTdnmg1XNDUJo3emqhOps9DcasNf10oRDd2ljwYV6f4RLSIf3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUQuqrpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUQuqrpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC691C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787849433;
	bh=rIKSyrLCPCzTpyYlLi8VW+qPjtAImDt+0nyz/Fi5ChE=;
	h=To:Subject:From:Date:From;
	b=QUQuqrpJRB5Zkwg+hZwnH5PyPbwjszhM8zbwrZVkpk27DODAV2HVn+8AzXuYeqScs
	 QYJ/syG8ITf56vf6HPikNWYfHf5nKwYEFLUIWyNE0Fy/NzEuUsijP5hGv4hnXkvlNa
	 vLq3ozZBazoNzDGnKyms+K/EzJiryEEIvouDKRV7v24bVwKf7VgcVqFsSa2ffBG1pn
	 PUXxAU+Vx5BtYiSuFMeHWW6YkgupBej85q8lXwWOSFqPth9ocCTPUM6IxjLpzqmNxd
	 TIha1WYp6RTSJ1yVWnKA2VzOOgRqt6eZo/eDxu1rQy9/ahf2YlkWRLbIw/TYP7ImMc
	 kldIrKFtI6l7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5D8C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784943368.19769.14735036852078749483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99eacaacbf2a15289b41459ca14c6311d24f5476a835f15e7cb7646d4ad9dde
Date: Thu, 27 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787849433
