Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6267933938E
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786026034; cv=none; b=YEl/ee1r9KiFpRulKzHw7qB+kMzPXmi7O9GkdkUZkeYCUSTuyxa1QJLRbBstoHsLK8zXa9UiUJqQshveY1eNtXvTaK12jZIvlKvybpzUTuZ2u0tIKcM41Vs0tLsdCH2iDNxjhuwwL+o+AYtiaYB1NuPlpRpUSs3RGbkbWzLpSCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786026034; c=relaxed/simple;
	bh=rtVqmgPolrgv/ay5oyPohwHb5LCVYEzOHb044Tusce0=;
	h=To:Subject:From:Message-Id:Date; b=sXjJtRYXBrVFQqgavxP5JVrp6aLOOZqqMYszSOSSFwd0MaULmlyk3hjHD+zMQBqd0PaG2ffghXSxkz+lI8JnRdozjRP2iws59mvb0zYmOjOGNPS39JTtMcRt+zL5WgP0/nq8O7mBs1uteD3PHB70ncSAlB+4gq4IvSG1U3kz4j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IirlrT9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IirlrT9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C84C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786026033;
	bh=rtVqmgPolrgv/ay5oyPohwHb5LCVYEzOHb044Tusce0=;
	h=To:Subject:From:Date:From;
	b=IirlrT9UwAKFY3sOlM+EpEXTpaf7wDi/b1nhG5Nq/r+7V67DmmI7ogF0jdzR943DB
	 Y59uaKDe/1IfoLh+hDSJQT90zfmnYFDGH9s8FyBxJrhlhWoltjRzSFwOYk70GdM5sE
	 gwHrsSqs8KjeXP9lpYSiYsqhtZUKZ947KybXXYrAfKdqHtaH0nVNf36kMsgjbO3x7s
	 Hf0MwELc61rSnjlQkB/Efs4/4kuDSYGDr8OMgEyoTQTg20HLVh+HbG9x7+N4/RCCi7
	 IgXTDoPqAkg8TpIWTWT//VoI25IpZgR+HdlAEGtTlHY440XqeLUH/ryxYNXcRKEx5k
	 C3Xmy9ZHMXGbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1521C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602603371.4055.5868319437050240538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8fa8072d1ddfcf3d60b83f157047112e3306e1168f250fb53b985b923f5936d
Date: Thu, 06 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786026033
