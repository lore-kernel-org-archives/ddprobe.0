Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64348304972
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784815234; cv=none; b=BOt+KkREFx8i9jQH6ujJEPh7Aa/RFJAAI4uNkQbMxYuZzl3nJdJgI5PEuufn/7+vY9mguWSNiMc9a3klYDfwWpV+b3LK9f7Lp8ANXBHDTUVSiDDqmfR7D8tzQKXbOdUbka6fwmM268F6oh4a+P3yBG472P3AqBGlJyNzdWn3s0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784815234; c=relaxed/simple;
	bh=TRBHcSFBEd+4fwu0ittmzcT4P2djd1je0D21y6a/8j0=;
	h=To:Subject:From:Message-Id:Date; b=KAlsSmO98271g/Huw35rlh6Mq1Eare1ukol1U4VfwHf+61cuAjwa9kQ1yLZDa2AQpNJFDvd/4+Fx5KOALTvURiSD6+s6dAZxVYnAWkovlI98rHQqswMwRnKdr+/Tnwz7J3THJBNyMRQ97J0IKskUF+4+JNAYUZZnuTjy2KjbKso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgZQK8j4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgZQK8j4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB06AC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815233;
	bh=TRBHcSFBEd+4fwu0ittmzcT4P2djd1je0D21y6a/8j0=;
	h=To:Subject:From:Date:From;
	b=TgZQK8j4Odsc3QcnunrB8GiIZ9var6ed0VmopwuB6Irki4zhjo+Plc6AIHmrt+klh
	 o1tCaeDm5GczFgEBBOZIceqZ9vlXlZ7nYQza1Sfkh+6yvJsO0L0OjTkqXMhpUZv3RK
	 K1cvzJ/2AOyoCpwZgpLz13/e1QtALmnO7t+fM+RPAUh4v9JeEQMFs074Thpn4Mimux
	 ySFX+wCr/XB+Jwu8K8+xRKzGuvXPMYJqfm6BhspnCvQPsYco7ftKVyE2iX/jTLYPJz
	 AWTJDgPQKCbq2tIOwMfAIz4q92Mj+brbG8EfpcK2XauZ53IUmH+K6acVRflE85sEEF
	 7zXLr3IxnAT6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD6C531D4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481523371.32409.281282111334246453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500384d0c9a2b15e8767a807faa5a5bae1a7a894b5ae20d5897e95bb7253a415
Date: Thu, 23 Jul 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784815233
